<?php
/**
 * Copyright © Magento, Inc. All rights reserved.
 * See COPYING.txt for license details.
 */
namespace Magento\BundleImportExport\Model\Import\Product\Type;

use Magento\Framework\App\Filesystem\DirectoryList;
use Magento\Framework\Indexer\IndexerRegistry;

/**
 * @magentoAppArea adminhtml
 * @SuppressWarnings(PHPMD.CouplingBetweenObjects)
 */
class BundleTest extends \PHPUnit\Framework\TestCase
{
    /**
     * Bundle product test Name
     */
    const TEST_PRODUCT_NAME = 'Bundle 1';

    /**
     * Bundle product test Type
     */
    const TEST_PRODUCT_TYPE = 'bundle';

    /**
     * @var \Magento\CatalogImportExport\Model\Import\Product
     */
    protected $model;

    /**
     * @var \Magento\Framework\ObjectManagerInterface
     */
    protected $objectManager;

    /**
     * List of Bundle options SKU
     *
     * @var array
     */
    protected $optionSkuList = ['Simple 1', 'Simple 2', 'Simple 3'];

    protected function setUp()
    {
        $this->objectManager = \Magento\TestFramework\Helper\Bootstrap::getObjectManager();
        $this->model = $this->objectManager->create(\Magento\CatalogImportExport\Model\Import\Product::class);
    }

    /**
     * @magentoAppArea adminhtml
     * @magentoDbIsolation disabled
     * @magentoAppIsolation enabled
     */
    public function testBundleImport()
    {
        // import data from CSV file
        $pathToFile = __DIR__ . '/../../_files/import_bundle.csv';
        $filesystem = $this->objectManager->create(
            \Magento\Framework\Filesystem::class
        );

        $directory = $filesystem->getDirectoryWrite(DirectoryList::ROOT);
        $source = $this->objectManager->create(
            \Magento\ImportExport\Model\Import\Source\Csv::class,
            [
                'file' => $pathToFile,
                'directory' => $directory
            ]
        );
        $errors = $this->model->setSource(
            $source
        )->setParameters(
            [
                'behavior' => \Magento\ImportExport\Model\Import::BEHAVIOR_APPEND,
                'entity' => 'catalog_product'
            ]
        )->validateData();

        $this->assertTrue($errors->getErrorsCount() == 0);
        $this->model->importData();

        $indexerRegistry = $this->objectManager->get(IndexerRegistry::class);
        $indexerRegistry->get('cataloginventory_stock')->reindexAll();

        /** @var \Magento\Catalog\Model\ResourceModel\Product $resource */
        $resource = $this->objectManager->get(\Magento\Catalog\Model\ResourceModel\Product::class);
        $productId = $resource->getIdBySku(self::TEST_PRODUCT_NAME);
        $this->assertTrue(is_numeric($productId));

        /** @var \Magento\Catalog\Model\Product $product */
        $productRepository = $this->objectManager->get(\Magento\Catalog\Api\ProductRepositoryInterface::class);
        $product = $productRepository->get(self::TEST_PRODUCT_NAME, false, null, true);

        $this->assertFalse($product->isObjectNew());
        $this->assertEquals(self::TEST_PRODUCT_NAME, $product->getName());
        $this->assertEquals(self::TEST_PRODUCT_TYPE, $product->getTypeId());
        $this->assertEquals(1, $product->getShipmentType());

        $optionIdList = $resource->getProductsIdsBySkus($this->optionSkuList);
        $bundleOptionCollection = $product->getExtensionAttributes()->getBundleProductOptions();
        $this->assertEquals(2, count($bundleOptionCollection));
        foreach ($bundleOptionCollection as $optionKey => $option) {
            $this->assertEquals('checkbox', $option->getData('type'));
            $this->assertEquals('Option ' . ($optionKey + 1), $option->getData('title'));
            $this->assertEquals(self::TEST_PRODUCT_NAME, $option->getData('sku'));
            $this->assertEquals($optionKey + 1, count($option->getData('product_links')));
            foreach ($option->getData('product_links') as $linkKey => $productLink) {
                $optionSku = 'Simple ' . ($optionKey + 1 + $linkKey);
                $this->assertEquals($optionIdList[$optionSku], $productLink->getData('entity_id'));
                $this->assertEquals($optionSku, $productLink->getData('sku'));
            }
        }

        /** @var \Magento\CatalogInventory\Model\Stock\Item $stockItem */
        $stockItem = $product->getExtensionAttributes()->getStockItem();
        $this->assertTrue(
            $stockItem->getIsInStock(),
            'Imported bundle product should be in stock'
        );
        $this->assertTrue(
            $product->isSalable(),
            'Imported bundle product should be available for sale'
        );
    }

    /**
     * @magentoDataFixture Magento/Store/_files/second_store.php
     * @magentoAppArea adminhtml
     * @magentoDbIsolation disabled
     */
    public function testBundleImportWithMultipleStoreViews()
    {
        // import data from CSV file
        $pathToFile = __DIR__ . '/../../_files/import_bundle_multiple_store_views.csv';
        $filesystem = $this->objectManager->create(
            \Magento\Framework\Filesystem::class
        );
        $directory = $filesystem->getDirectoryWrite(DirectoryList::ROOT);
        $source = $this->objectManager->create(
            \Magento\ImportExport\Model\Import\Source\Csv::class,
            [
                'file' => $pathToFile,
                'directory' => $directory
            ]
        );
        $errors = $this->model->setSource(
            $source
        )->setParameters(
            [
                'behavior' => \Magento\ImportExport\Model\Import::BEHAVIOR_APPEND,
                'entity' => 'catalog_product'
            ]
        )->validateData();
        $this->assertTrue($errors->getErrorsCount() == 0);
        $this->model->importData();
        $resource = $this->objectManager->get(\Magento\Catalog\Model\ResourceModel\Product::class);
        $productId = $resource->getIdBySku(self::TEST_PRODUCT_NAME);
        $this->assertTrue(is_numeric($productId));
        /** @var \Magento\Catalog\Model\Product $product */
        $product = $this->objectManager->create(\Magento\Catalog\Model\Product::class);
        $product->load($productId);
        $this->assertFalse($product->isObjectNew());
        $this->assertEquals(self::TEST_PRODUCT_NAME, $product->getName());
        $this->assertEquals(self::TEST_PRODUCT_TYPE, $product->getTypeId());
        $this->assertEquals(1, $product->getShipmentType());
        $optionIdList = $resource->getProductsIdsBySkus($this->optionSkuList);
        /** @var \Magento\Catalog\Api\ProductRepositoryInterface $productRepository */
        $productRepository = $this->objectManager->get(\Magento\Catalog\Api\ProductRepositoryInterface::class);
        $i = 0;
        foreach ($product->getStoreIds() as $storeId) {
            $bundleOptionCollection = $productRepository->get(self::TEST_PRODUCT_NAME, false, $storeId)
                ->getExtensionAttributes()->getBundleProductOptions();
            $this->assertEquals(2, count($bundleOptionCollection));
            $i++;
            foreach ($bundleOptionCollection as $optionKey => $option) {
                $this->assertEquals('checkbox', $option->getData('type'));
                $this->assertEquals('Option ' . $i . ' ' . ($optionKey + 1), $option->getData('title'));
                $this->assertEquals(self::TEST_PRODUCT_NAME, $option->getData('sku'));
                $this->assertEquals($optionKey + 1, count($option->getData('product_links')));
                foreach ($option->getData('product_links') as $linkKey => $productLink) {
                    $optionSku = 'Simple ' . ($optionKey + 1 + $linkKey);
                    $this->assertEquals($optionIdList[$optionSku], $productLink->getData('entity_id'));
                    $this->assertEquals($optionSku, $productLink->getData('sku'));
                }
            }
        }
    }

    /**
     * @inheritdoc
     */
    protected function tearDown()
    {
        $skus = [
            'Simple 1',
            'Simple 2',
            'Simple 3',
            'Bundle 1'
        ];

        $productRepository = $this->objectManager->get(\Magento\Catalog\Model\ProductRepository::class);

        foreach ($skus as $sku) {
            try {
                $product = $productRepository->get($sku, false, null, true);
                $productRepository->delete($product);
            } catch (\Magento\Framework\Exception\NoSuchEntityException $e) {
            }
        }
        parent::tearDown();
    }
}
