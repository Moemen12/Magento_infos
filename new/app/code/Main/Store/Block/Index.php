<?php

namespace Main\Store\Block;

use Magento\Framework\View\Element\Template\Context;
use Magento\Catalog\Model\ResourceModel\Category\CollectionFactory as CategoryCollectionFactory;;

use Magento\Catalog\Model\ResourceModel\Product\CollectionFactory as ProductCollectionFactory;;

class Index extends \Magento\Framework\View\Element\Template
{
    protected $categoryCollectionFactory;
    protected $productCollectionFactory;


    public function __construct(
        Context $context,
        CategoryCollectionFactory $categoryCollectionFactory,
        ProductCollectionFactory $productCollectionFactory,
        array $data = []
    ) {
        $this->categoryCollectionFactory = $categoryCollectionFactory;
        $this->productCollectionFactory = $productCollectionFactory;
        parent::__construct($context, $data);
    }

    public function getCategoryImageUrls()
    {
        $categoryCollection = $this->categoryCollectionFactory->create();
        $categoryCollection->addAttributeToSelect('image'); // Include the 'image' attribute in the collection

        $imageUrls = [];
        foreach ($categoryCollection as $category) {
            if (is_string($category->getImageUrl())) {
                $imageUrls[] = $category->getImageUrl();
            }
        }

        return $imageUrls;
    }
}
