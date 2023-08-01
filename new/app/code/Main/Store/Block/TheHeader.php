<?php

namespace Main\Store\Block;

use Magento\Framework\View\Element\Template;
use Magento\Catalog\Model\ResourceModel\Category\CollectionFactory as CategoryCollectionFactory;
use Magento\Catalog\Model\CategoryFactory;

class TheHeader extends Template
{
    protected $categoryCollectionFactory;
    protected $categoryFactory;

    public function __construct(
        Template\Context $context,
        CategoryCollectionFactory $categoryCollectionFactory,
        CategoryFactory $categoryFactory,
        array $data = []
    ) {
        $this->categoryCollectionFactory = $categoryCollectionFactory;
        $this->categoryFactory = $categoryFactory;
        parent::__construct($context, $data);
    }

    public function getCategories()
    {
        // Get the category collection
        $collection = $this->categoryCollectionFactory->create();
        $collection->addAttributeToSelect('*');
        $collection->addAttributeToFilter('level', ['eq' => '2']);

        // Create an array to store categories and subcategories
        $categories = [];

        // Iterate through the collection and populate the array
        foreach ($collection as $category) {
            $categoryId = $category->getId();
            $categoryName = $category->getName();
            $categoryLevel = $category->getLevel();
            $categoryUrl = $category->getUrl();
            // Add category to the array
            $categories[$categoryId] = [
                'name' => $categoryName,
                'level' => $categoryLevel,
                'url' => $categoryUrl,
                'subcategories' => $this->getSubcategoriesRecursive($categoryId)
            ];
        }

        return $categories;
    }

    protected function getSubcategoriesRecursive($categoryId)
    {
        $subcategories = [];

        $categoryCollection = $this->categoryCollectionFactory->create();
        $categoryCollection->addAttributeToSelect('*');
        $categoryCollection->addFieldToFilter('parent_id', $categoryId);

        foreach ($categoryCollection as $category) {
            $subcategoryId = $category->getId();
            $subcategoryName = $category->getName();
            $subcategoryLevel = $category->getLevel();
            $subcategoryUrl = $category->getUrl();

            // Recursively get subcategories
            $subcategories[$subcategoryId] = [
                'name' => $subcategoryName,
                'level' => $subcategoryLevel,
                'url' => $subcategoryUrl,
                'subcategories' => $this->getSubcategoriesRecursive($subcategoryId)
            ];
        }

        return $subcategories;
    }

    public function renderSubcategories($subcategories)
    {


        $html = '<ul>';
        foreach ($subcategories as $subcategory) {
            $name = $subcategory['url'];
            $html .= "<a href=$name>" . $subcategory['name'];

            if (!empty($subcategory['subcategories'])) {
                $html .= $this->renderSubcategories($subcategory['subcategories']);
            }

            $html .= '</a>';
        }
        $html .= '</ul>';

        return $html;
    }
}
