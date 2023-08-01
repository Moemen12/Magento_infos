<?php

namespace Main\Store\Controller\Index;

use Magento\Wishlist\Controller\WishlistProviderInterface;

class WishlistItems extends \Magento\Framework\App\Action\Action
{
    /**
     * @var \Magento\Framework\View\Result\PageFactory
     */
    protected $_pageFactory;

    protected $wishlistProvider;

    /**
     * @param \Magento\Framework\App\Action\Context $context
     */
    public function __construct(
        \Magento\Framework\App\Action\Context $context,
        WishlistProviderInterface $wishlistProvider,
        \Magento\Framework\View\Result\PageFactory $pageFactory,
        \Magento\Framework\Controller\Result\JsonFactory $jsonFactory
    ) {
        $this->_pageFactory = $pageFactory;

        parent::__construct($context);
        $this->wishlistProvider = $wishlistProvider;

        $this->jsonFactory = $jsonFactory;
    }



    protected function getWishlistProductIds()
    {
        $productIds = [];
        try {
            // Get the wishlist instance
            $wishlist = $this->wishlistProvider->getWishlist();

            // Get the wishlist items collection
            $wishlistItems = $wishlist->getItemCollection();

            // Extract product IDs from the wishlist items
            foreach ($wishlistItems as $item) {
                $productIds[] = (int)$item->getProduct()->getId();
            }
        } catch (\Exception $e) {
            // Handle exceptions if needed
        }

        return $productIds;
    }


    /**
     * View page action
     *
     * @return \Magento\Framework\Controller\ResultInterface
     */
    public function execute()
    {

        $result = $this->jsonFactory->create();
        $data = $this->getWishlistProductIds();


        return $result->setData(['status' => 200, 'items' => $data]);

        // return $this->_pageFactory->create();
    }
}
