<?php
namespace Codendot\Mageplaza\Model\Config\Source;

use Magento\Framework\Option\ArrayInterface;


class Custom implements ArrayInterface
{
    const SOME   = '0';
    const ANOTHER = '1';

    /**
     * to option array
     *
     * @return array
     */
    public function toOptionArray()
    {
        $options = [
            [
                'value' => self::SOME,
                'label' => __('Some value')
            ],
            [
                'value' => self::ANOTHER,
                'label' => __('Another value')
            ]
        ];

        return $options;
    }
}