<?php
/**
 * Copyright © Magento, Inc. All rights reserved.
 * See COPYING.txt for license details.
 */

namespace Magento\Integration\Model;

use Magento\Customer\Api\AccountManagementInterface;
use Magento\Framework\Exception\InputException;
use Magento\Integration\Model\Oauth\Token as TokenModel;
use Magento\TestFramework\Helper\Bootstrap;

/**
 * Test class for \Magento\Integration\Model\CustomerTokenService.
 */
class CustomerTokenServiceTest extends \PHPUnit\Framework\TestCase
{
    /**
     * @var CustomerTokenServiceInterface
     */
    private $tokenService;

    /**
     * @var AccountManagementInterface
     */
    private $accountManagement;

    /**
     * @var TokenModel
     */
    private $tokenModel;

    /**
     * Setup CustomerTokenService
     */
    public function setUp()
    {
        $this->tokenService = Bootstrap::getObjectManager()->get(
            \Magento\Integration\Model\CustomerTokenService::class
        );
        $this->accountManagement = Bootstrap::getObjectManager()->get(
            \Magento\Customer\Api\AccountManagementInterface::class
        );
        $this->tokenModel = Bootstrap::getObjectManager()->get(\Magento\Integration\Model\Oauth\Token::class);
    }

    /**
     * @magentoDataFixture Magento/Customer/_files/customer.php
     */
    public function testCreateCustomerAccessToken()
    {
        $customerUserName = 'customer@example.com';
        $password = 'password';
        $accessToken = $this->tokenService->createCustomerAccessToken($customerUserName, $password);
        $customerData = $this->accountManagement->authenticate($customerUserName, $password);
        /** @var $token TokenModel */
        $token = $this->tokenModel->loadByCustomerId($customerData->getId())->getToken();
        $this->assertEquals($accessToken, $token);
    }

    /**
     * @dataProvider validationDataProvider
     */
    public function testCreateCustomerAccessTokenEmptyOrNullCredentials($username, $password)
    {
        try {
            $this->tokenService->createCustomerAccessToken($username, $password);
        } catch (InputException $e) {
            $this->assertInputExceptionMessages($e);
        }
    }

    /**
     * @expectedException \Magento\Framework\Exception\AuthenticationException
     * @expectedExceptionMessage You did not sign in correctly or your account is temporarily disabled.
     */
    public function testCreateCustomerAccessTokenInvalidCustomer()
    {
        $customerUserName = 'invalid';
        $password = 'invalid';
        $this->tokenService->createCustomerAccessToken($customerUserName, $password);
    }

    /**
     * Provider to test input validation
     *
     * @return array
     */
    public function validationDataProvider()
    {
        return [
            'Check for empty credentials' => ['', ''],
            'Check for null credentials' => [null, null]
        ];
    }

    /**
     * Assert for presence of Input exception messages
     *
     * @param InputException $e
     */
    private function assertInputExceptionMessages($e)
    {
        $this->assertEquals('One or more input exceptions have occurred.', $e->getMessage());
        $errors = $e->getErrors();
        $this->assertCount(2, $errors);
        $this->assertEquals('username is a required field.', $errors[0]->getLogMessage());
        $this->assertEquals('password is a required field.', $errors[1]->getLogMessage());
    }
}
