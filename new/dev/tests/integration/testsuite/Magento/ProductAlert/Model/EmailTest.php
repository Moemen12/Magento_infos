<?php
/**
 * Copyright © Magento, Inc. All rights reserved.
 * See COPYING.txt for license details.
 */

namespace Magento\ProductAlert\Model;

/**
 * @magentoAppIsolation enabled
 */
class EmailTest extends \PHPUnit\Framework\TestCase
{
    /**
     * @var \Magento\ProductAlert\Model\Email
     */
    protected $_emailModel;

    /**
     * @var \Magento\TestFramework\ObjectManager
     */
    protected $_objectManager;

    /**
     * @var \Magento\Customer\Api\AccountManagementInterface
     */
    protected $customerAccountManagement;

    /**
     * @var \Magento\Customer\Helper\View
     */
    protected $_customerViewHelper;

    protected function setUp()
    {
        $this->_objectManager = \Magento\TestFramework\Helper\Bootstrap::getObjectManager();
        $this->customerAccountManagement = $this->_objectManager->create(
            \Magento\Customer\Api\AccountManagementInterface::class
        );
        $this->_customerViewHelper = $this->_objectManager->create(\Magento\Customer\Helper\View::class);
    }

    /**
     * @magentoDataFixture Magento/Customer/_files/customer.php
     * @magentoDataFixture Magento/Catalog/_files/product_simple.php
     * @dataProvider customerFunctionDataProvider
     *
     * @param bool isCustomerIdUsed
     */
    public function testSend($isCustomerIdUsed)
    {
        \Magento\TestFramework\Helper\Bootstrap::getInstance()
            ->loadArea(\Magento\Framework\App\Area::AREA_FRONTEND);

        $this->_emailModel = $this->_objectManager->create(\Magento\ProductAlert\Model\Email::class);

        /** @var \Magento\Store\Model\Website $website */
        $website = $this->_objectManager->create(\Magento\Store\Model\Website::class);
        $website->load(1);
        $this->_emailModel->setWebsite($website);

        /** @var \Magento\Customer\Api\Data\CustomerInterface $customer */
        $customerRepository = $this->_objectManager->create(\Magento\Customer\Api\CustomerRepositoryInterface::class);
        $customer = $customerRepository->getById(1);

        if ($isCustomerIdUsed) {
            $this->_emailModel->setCustomerId(1);
        } else {
            $this->_emailModel->setCustomerData($customer);
        }

        /** @var \Magento\Catalog\Model\Product $product */
        $product = $this->_objectManager->create(\Magento\Catalog\Model\Product::class);
        $product->load(1);

        $this->_emailModel->addPriceProduct($product);
        $this->_emailModel->send();

        /** @var \Magento\TestFramework\Mail\Template\TransportBuilderMock $transportBuilder */
        $transportBuilder = $this->_objectManager->get(
            \Magento\TestFramework\Mail\Template\TransportBuilderMock::class
        );
        $this->assertContains(
            'Smith,',
            $transportBuilder->getSentMessage()->getRawMessage()
        );
    }

    public function customerFunctionDataProvider()
    {
        return [
            [true],
            [false],
        ];
    }
}
