<?php

/**
 * Mageplaza
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Mageplaza.com license that is
 * available through the world-wide-web at this URL:
 * https://www.mageplaza.com/LICENSE.txt
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade this extension to newer
 * version in the future.
 *
 * @category    Mageplaza
 * @package     Mageplaza_Faqs
 * @copyright   Copyright (c) Mageplaza (https://www.mageplaza.com/)
 * @license     https://www.mageplaza.com/LICENSE.txt
 */

namespace Mageplaza\Blog\Model\Config\Source;

use Magento\Framework\Option\ArrayInterface;

/**
 * Class Brands
 * @package Mageplaza\Faqs\Model\Config\Source
 */
class Brands implements ArrayInterface
{
    public function __construct()
    {
    }

    /**
     * @return array
     */
    public function toOptionArray()
    {
        // mine
        $objectManager = \Magento\Framework\App\ObjectManager::getInstance();
        $eavConfig = $objectManager->get('\Magento\Eav\Model\Config');
        $attribute = $eavConfig->getAttribute('catalog_product', 'product_brand');
        $eav_options = $attribute->getSource()->getAllOptions();
        $optionsExists = array();

        $options = [];

        foreach ($eav_options as $option) {
            $options[] = [
                'value' => $option['value'],
                'label' => $option['label']
            ];
        }
        // mine end

        return $options;
    }
}
