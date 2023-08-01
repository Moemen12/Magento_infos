<?php
/**
 * Copyright © Magento, Inc. All rights reserved.
 * See COPYING.txt for license details.
 */

namespace Magento\CatalogUrlRewrite\Model;

use Magento\UrlRewrite\Model\OptionProvider;
use Magento\UrlRewrite\Service\V1\Data\UrlRewrite;
use Magento\CatalogUrlRewrite\Model\ProductUrlRewriteGenerator;

/**
 * @magentoAppArea adminhtml
 * @SuppressWarnings(PHPMD.CouplingBetweenObjects)
 */
class CategoryUrlRewriteGeneratorTest extends \PHPUnit\Framework\TestCase
{
    /** @var \Magento\Framework\ObjectManagerInterface */
    protected $objectManager;

    protected function setUp()
    {
        $this->objectManager = \Magento\TestFramework\Helper\Bootstrap::getObjectManager();
    }

    /**
     * @magentoDataFixture Magento/CatalogUrlRewrite/_files/categories_with_products.php
     * @magentoDbIsolation enabled
     * @magentoAppIsolation enabled
     */
    public function testGenerateUrlRewritesWithoutSaveHistory()
    {
        /** @var \Magento\Catalog\Model\Category $category */
        $category = $this->objectManager->create(\Magento\Catalog\Model\Category::class);
        $category->load(3);
        $category->setData('save_rewrites_history', false);
        $category->setUrlKey('new-url');
        $category->save();

        $categoryFilter = [
            UrlRewrite::ENTITY_TYPE => CategoryUrlRewriteGenerator::ENTITY_TYPE,
            UrlRewrite::ENTITY_ID => [3, 4, 5]
        ];
        $actualResults = $this->getActualResults($categoryFilter);
        $categoryExpectedResult = [
            ['new-url.html', 'catalog/category/view/id/3', 1, 0],
            ['new-url/category-1-1.html', 'catalog/category/view/id/4', 1, 0],
            ['new-url/category-1-1/category-1-1-1.html', 'catalog/category/view/id/5', 1, 0],
        ];

        $this->assertResults($categoryExpectedResult, $actualResults);

        /** @var \Magento\Catalog\Model\ProductRepository $productRepository */
        $productRepository = $this->objectManager->create(\Magento\Catalog\Model\ProductRepository::class);
        $product = $productRepository->get('12345');
        $productForTest = $product->getId();

        $productFilter = [
            UrlRewrite::ENTITY_TYPE => ProductUrlRewriteGenerator::ENTITY_TYPE,
            UrlRewrite::ENTITY_ID => [$productForTest]
        ];
        $actualResults = $this->getActualResults($productFilter);
        $productExpectedResult = [
            [
                'simple-product-two.html',
                'catalog/product/view/id/' . $productForTest,
                1,
                0
            ],
            [
                'new-url/category-1-1/category-1-1-1/simple-product-two.html',
                'catalog/product/view/id/' . $productForTest . '/category/5',
                1,
                0
            ],
            [
                'new-url/simple-product-two.html',
                'catalog/product/view/id/' . $productForTest . '/category/3',
                1,
                0
            ],
            [
                'new-url/category-1-1/simple-product-two.html',
                'catalog/product/view/id/' . $productForTest . '/category/4',
                1,
                0
            ],
            [
                '/simple-product-two.html',
                'catalog/product/view/id/' . $productForTest . '/category/2',
                1,
                0
            ]
        ];

        $this->assertResults($productExpectedResult, $actualResults);
    }

    /**
     * @magentoDbIsolation enabled
     * @magentoDataFixture Magento/CatalogUrlRewrite/_files/categories_with_products.php
     * @magentoAppIsolation enabled
     */
    public function testGenerateUrlRewritesWithSaveHistory()
    {
        /** @var \Magento\Catalog\Model\Category $category */
        $category = $this->objectManager->create(\Magento\Catalog\Model\Category::class);
        $category->load(3);
        $category->setData('save_rewrites_history', true);
        $category->setUrlKey('new-url');
        $category->save();

        $categoryFilter = [
            UrlRewrite::ENTITY_TYPE => CategoryUrlRewriteGenerator::ENTITY_TYPE,
            UrlRewrite::ENTITY_ID => [3, 4, 5]
        ];
        $actualResults = $this->getActualResults($categoryFilter);
        $categoryExpectedResult = [
            ['new-url.html', 'catalog/category/view/id/3', 1, 0],
            ['new-url/category-1-1.html', 'catalog/category/view/id/4', 1, 0],
            ['new-url/category-1-1/category-1-1-1.html', 'catalog/category/view/id/5', 1, 0],
            ['category-1.html', 'new-url.html', 0, OptionProvider::PERMANENT],
            ['category-1/category-1-1.html', 'new-url/category-1-1.html', 0, OptionProvider::PERMANENT],
            [
                'category-1/category-1-1/category-1-1-1.html',
                'new-url/category-1-1/category-1-1-1.html',
                0,
                OptionProvider::PERMANENT
            ],
        ];

        $this->assertResults($categoryExpectedResult, $actualResults);

        /** @var \Magento\Catalog\Model\ProductRepository $productRepository */
        $productRepository = $this->objectManager->create(\Magento\Catalog\Model\ProductRepository::class);
        $product = $productRepository->get('12345');
        $productForTest = $product->getId();

        $productFilter = [
            UrlRewrite::ENTITY_TYPE => ProductUrlRewriteGenerator::ENTITY_TYPE,
            UrlRewrite::ENTITY_ID => [$productForTest]
        ];
        $actualResults = $this->getActualResults($productFilter);
        $productExpectedResult = [
            [
                'simple-product-two.html',
                'catalog/product/view/id/' . $productForTest,
                1,
                0
            ],
            [
                'new-url/category-1-1/category-1-1-1/simple-product-two.html',
                'catalog/product/view/id/' . $productForTest . '/category/5',
                1,
                0
            ],
            [
                'category-1/category-1-1/category-1-1-1/simple-product-two.html',
                'new-url/category-1-1/category-1-1-1/simple-product-two.html',
                0,
                OptionProvider::PERMANENT
            ],
            [
                'new-url/simple-product-two.html',
                'catalog/product/view/id/' . $productForTest . '/category/3',
                1,
                0
            ],
            [
                'new-url/category-1-1/simple-product-two.html',
                'catalog/product/view/id/' . $productForTest . '/category/4',
                1,
                0
            ],
            [
                '/simple-product-two.html',
                'catalog/product/view/id/' . $productForTest . '/category/2',
                1,
                0
            ],
            [
                'category-1/simple-product-two.html',
                'new-url/simple-product-two.html',
                0,
                OptionProvider::PERMANENT
            ],
            [
                'category-1/category-1-1/simple-product-two.html',
                'new-url/category-1-1/simple-product-two.html',
                0,
                OptionProvider::PERMANENT
            ],
        ];

        $this->assertResults($productExpectedResult, $actualResults);
    }

    /**
     * @magentoDataFixture Magento/CatalogUrlRewrite/_files/categories.php
     * @magentoDbIsolation enabled
     * @magentoAppIsolation enabled
     * @param string $urlKey
     * @dataProvider incorrectUrlRewritesDataProvider
     */
    public function testGenerateUrlRewritesWithIncorrectUrlKey($urlKey)
    {
        $this->expectException(
            \Magento\Framework\Exception\LocalizedException::class,
            'Invalid URL key'
        );
        /** @var \Magento\Catalog\Api\CategoryRepositoryInterface $repository */
        $repository = $this->objectManager->get(\Magento\Catalog\Api\CategoryRepositoryInterface::class);
        $category = $repository->get(3);
        $category->setUrlKey($urlKey);
        $repository->save($category);
    }

    /**
     * @return array
     */
    public function incorrectUrlRewritesDataProvider()
    {
        return [
            ['#'],
            ['//']
        ];
    }

    /**
     * @param array $filter
     * @return array
     */
    protected function getActualResults(array $filter)
    {
        /** @var \Magento\UrlRewrite\Model\UrlFinderInterface $urlFinder */
        $urlFinder = $this->objectManager->get(\Magento\UrlRewrite\Model\UrlFinderInterface::class);
        $actualResults = [];
        foreach ($urlFinder->findAllByData($filter) as $url) {
            $actualResults[] = [
                $url->getRequestPath(),
                $url->getTargetPath(),
                (int)$url->getIsAutogenerated(),
                $url->getRedirectType()
            ];
        }
        return $actualResults;
    }

    /**
     * @param array $expected
     * @param array $actual
     */
    protected function assertResults($expected, $actual)
    {
        $this->assertEquals(count($expected), count($actual), 'Number of rewrites does not match');
        foreach ($expected as $row) {
            $this->assertContains(
                $row,
                $actual,
                'Expected: ' . var_export($row, true) . "\nIn Actual: " . var_export($actual, true)
            );
        }
    }

    /**
     * Get all actual url paths.
     *
     * @param array $filter
     * @return array
     */
    private function getActualUrlPaths(array $filter)
    {
        /** @var \Magento\UrlRewrite\Model\UrlFinderInterface $urlFinder */
        $urlFinder = $this->objectManager->get(\Magento\UrlRewrite\Model\UrlFinderInterface::class);
        $actualResults = [];
        foreach ($urlFinder->findAllByData($filter) as $url) {
            $actualResults[] = [
                $url->getRequestPath(),
                $url->getTargetPath(),
                $url->getStoreId(),
            ];
        }

        return $actualResults;
    }

    /**
     * Test getting url path.
     *
     * @magentoDataFixture Magento/Store/_files/second_store.php
     * @magentoDataFixture Magento/CatalogUrlRewrite/_files/categories.php
     * @magentoDbIsolation enabled
     * @magentoAppIsolation enabled
     */
    public function testGetUrlPath()
    {
        /** @var \Magento\Catalog\Api\CategoryRepositoryInterface $repository */
        $repository = $this->objectManager->get(\Magento\Catalog\Api\CategoryRepositoryInterface::class);

        /** @var \Magento\Store\Api\StoreRepositoryInterface $storeRepository */
        $storeRepository = $this->objectManager->get(\Magento\Store\Api\StoreRepositoryInterface::class);
        $storeId = $storeRepository->get('fixture_second_store')->getId();

        $storeManager = $this->objectManager->get(\Magento\Store\Model\StoreManagerInterface::class);
        $store = $storeManager->getStore($storeId);
        $storeManager->setCurrentStore($store->getCode());

        $categoryFilter = [
            UrlRewrite::ENTITY_TYPE => CategoryUrlRewriteGenerator::ENTITY_TYPE,
            UrlRewrite::ENTITY_ID => [5],
        ];

        $category = $repository->get(5);
        $category->addData(
            [
                'use_default' => [
                    'url_key' => 0,
                ],
                'url_key_create_redirect' => 0,
                'url_key' => 'url-key',
            ]
        );
        $category->setStoreId($storeId);
        $repository->save($category);

        $actualResults = $this->getActualUrlPaths($categoryFilter);
        $categoryExpectedResult = [
            ['category-1/category-1-1/category-1-1-1.html', 'catalog/category/view/id/5', 1],
            ['category-1/category-1-1/url-key.html', 'catalog/category/view/id/5', $storeId],
        ];

        $this->assertResults($categoryExpectedResult, $actualResults);

        $category = $repository->get(5);

        $category->addData(
            [
                'use_default' => [
                    'url_key' => 1,
                ],
                'url_key' => '',
            ]
        );

        $repository->save($category);

        $actualResults = $this->getActualUrlPaths($categoryFilter);
        $categoryExpectedResult = [
            ['category-1/category-1-1/category-1-1-1.html', 'catalog/category/view/id/5', 1],
            ['category-1/category-1-1/category-1-1-1.html', 'catalog/category/view/id/5', $storeId],
        ];

        $this->assertResults($categoryExpectedResult, $actualResults);
    }
}
