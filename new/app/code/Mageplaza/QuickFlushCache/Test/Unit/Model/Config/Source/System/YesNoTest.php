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
 * @category  Mageplaza
 * @package   Mageplaza_QuickFlushCache
 * @copyright Copyright (c) Mageplaza (https://www.mageplaza.com/)
 * @license   https://www.mageplaza.com/LICENSE.txt
 */

namespace Mageplaza\QuickFlushCache\Test\Unit\Model\Config\Source\System;

use Magento\Framework\TestFramework\Unit\Helper\ObjectManager;
use Mageplaza\QuickFlushCache\Model\Config\Source\System\YesNo;
use PHPUnit\Framework\TestCase;

/**
 * Class YesNoTest
 * @package Mageplaza\QuickFlushCache\Test\Unit\Model\Config\Source\System
 */
class YesNoTest extends TestCase
{
    /**
     * @var YesNo
     */
    protected $model;

    protected function setUp()
    {
        $helper = new ObjectManager($this);

        $this->model = $helper->getObject(
            YesNo::class
        );
    }

    /**
     * Test to actions option array
     */
    public function testToOptionArray()
    {
        $expectResult = [
            [
                'value' => 1,
                'label' => __('Yes (Automatic)')
            ],
            [
                'value' => 2,
                'label' => __('Yes (Manual)')
            ],
            [
                'value' => 0,
                'label' => __('No')
            ]
        ];
        $actualResult = $this->model->toOptionArray();
        $this->assertEquals($expectResult, $actualResult);
    }
}
