<?php

namespace Main\Store\Block\Adminhtml;

class StateCreator extends \Magento\Framework\Data\Form\Element\AbstractElement
{

    protected function _construct()
    {
        parent::_construct();
        $this->setType('file');
    }


   
}