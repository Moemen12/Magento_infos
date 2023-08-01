<?php

namespace Main\Store\Controller\Index;

use Magento\Framework\App\Action\Action;
use Magento\Framework\App\Action\Context;
use Magento\Framework\Controller\Result\JsonFactory;
use Magento\Framework\App\Request\Http;
use Magento\Framework\App\Http\Context as HttpContext;
use Magento\Customer\Model\Context as CustomerContext;
use Magento\Catalog\Api\ProductRepositoryInterface;
use Magento\Framework\Data\Form\FormKey\Validator;
use Magento\Wishlist\Controller\WishlistProviderInterface;
use Magento\Framework\Exception\NoSuchEntityException;

class Index extends Action
{
    protected $resultJsonFactory;
    protected $request;
    protected $httpContext;
    protected $productRepository;
    protected $formKeyValidator;
    protected $wishlistProvider;

    public function __construct(
        Context $context,
        HttpContext $httpContext,
        JsonFactory $resultJsonFactory,
        Http $request,
        ProductRepositoryInterface $productRepository,
        Validator $formKeyValidator,
        WishlistProviderInterface $wishlistProvider
    ) {
        parent::__construct($context);
        $this->resultJsonFactory = $resultJsonFactory;
        $this->request = $request;
        $this->httpContext = $httpContext;
        $this->productRepository = $productRepository;
        $this->formKeyValidator = $formKeyValidator;
        $this->wishlistProvider = $wishlistProvider;
    }


    private function isCustomerLoggedIn()
    {
        return (bool) $this->httpContext->getValue(CustomerContext::CONTEXT_AUTH);
    }

    public function execute()
    {
        if (!$this->isCustomerLoggedIn()) {
            // Redirect URL when the customer is not logged in
            $redirectUrl = $this->_url->getUrl('customer/account'); // Use the correct URL key for the customer login page
            $response = [
                'redirect_url' => $redirectUrl,
            ];
            return $this->jsonResponse($response);
        }

        // Rest of your code for adding the product to the wishlist

        // Example: Get the product ID from the AJAX request's POST data
        $postData = $this->request->getPostValue();
        $productId = isset($postData['product_id']) ? (int) $postData['product_id'] : null;

        // Check if the product ID is provided in the request
        if (!$productId) {
            $response = [
                'error' => 'Product ID not provided in the request.',
            ];
            return $this->jsonResponse($response);
        }


        // $writer = new \Zend_Log_Writer_Stream(BP . '/var/log/custom.log');
        // $logger = new \Zend_Log();
        // $logger->addWriter($writer);
        // $logger->info("New Message Log " . json_encode($wishlistProductIds));

        // Get the wishlist instance
        $wishlist = $this->wishlistProvider->getWishlist();










        try {
            $product = $this->productRepository->getById($productId);
        } catch (NoSuchEntityException $e) {
            $product = null;
        }

        // Check if the product exists and is visible in the catalog
        if (!$product || !$product->isVisibleInCatalog()) {
            $this->messageManager->addErrorMessage(__('We can\'t specify a product.'));
            $response = [
                'error' => 'Product not found or not visible.',
            ];
            return $this->jsonResponse($response);
        }

        try {
            $buyRequest = new \Magento\Framework\DataObject($postData);

            // Check if the product is already in the wishlist
            $wishlistItems = $wishlist->getItemCollection();
            $isInWishlist = false;
            $itemToRemove = null;
            foreach ($wishlistItems as $item) {
                if ((int)$item->getProduct()->getId() === (int)$productId) {
                    // Product already in the wishlist, mark it for removal
                    $isInWishlist = true;
                    $itemToRemove = $item;
                    break; // Exit the loop since the product is found
                }
            }

            if ($isInWishlist && $itemToRemove !== null) {
                // Product already in the wishlist, remove it
                $itemToRemove->delete();
                $response = [
                    'success' => true,
                    'message' => 'Product removed from the wishlist successfully.',
                ];
            } else {
                // Product not in the wishlist, add it
                $result = $wishlist->addNewItem($product, $buyRequest);
                if (is_string($result)) {
                    throw new \Magento\Framework\Exception\LocalizedException(__($result));
                }
                if ($wishlist->isObjectNew()) {
                    $wishlist->save();
                }

                // Prepare the response for added item
                $response = [
                    'success' => true,
                    'message' => 'Product added to the wishlist successfully.',
                ];
            }

            return $this->jsonResponse($response);
        } catch (\Magento\Framework\Exception\LocalizedException $e) {
            $this->messageManager->addErrorMessage(
                __('We can\'t process the request right now: %1.', $e->getMessage())
            );

            $response = [
                'error' => 'Error processing the request.',
            ];
            return $this->jsonResponse($response);
        } catch (\Exception $e) {
            $this->messageManager->addExceptionMessage(
                $e,
                __('We can\'t process the request right now.')
            );

            $response = [
                'error' => 'Error processing the request.',
            ];
            return $this->jsonResponse($response);
        }
    }

    protected function jsonResponse($data)
    {
        $resultJson = $this->resultJsonFactory->create();
        $resultJson->setData($data);
        return $resultJson;
    }
}
