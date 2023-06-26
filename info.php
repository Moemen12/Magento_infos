<?=
/*
How To get all categories + url + subcategories
Inside a php file within block folder
*/
?>
<?php

namespace Main\Store\Block;

use Magento\Framework\View\Element\Template;
use Magento\Catalog\Model\ResourceModel\Category\CollectionFactory as CategoryCollectionFactory;

class TheHeader extends Template
{
    protected $categoryCollectionFactory;

    public function __construct(
        Template\Context $context,
        CategoryCollectionFactory $categoryCollectionFactory,
        array $data = []
    ) {
        parent::__construct($context, $data);
        $this->categoryCollectionFactory = $categoryCollectionFactory;
    }

    public function getCategories()
    {
        $categoryCollection = $this->categoryCollectionFactory->create();
        $categoryCollection->addAttributeToSelect('*');

        return $categoryCollection;
    }
}

?>

<?= /* Template file */ ?>

  <?php foreach ($categories as $category) : ?>
  /* getLevel() > 1 is used as a condition to skip the root category and only display child categories and their subcategories.  */
        <?php if ($category->getLevel() > 1) : ?>
           <?= $category->getUrl(); ?>
           <?= $category->getName(); ?>
        <?php endif; ?>
   <?php endforeach; ?>


