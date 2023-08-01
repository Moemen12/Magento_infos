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
 * @package     Mageplaza_QuickFlushCache
 * @copyright   Copyright (c) Mageplaza (https://www.mageplaza.com/)
 * @license     https://www.mageplaza.com/LICENSE.txt
 */

namespace Mageplaza\QuickFlushCache\Controller\Adminhtml;

use Magento\Backend\App\Action;
use Magento\Backend\App\Action\Context;
use Magento\Framework\App\Cache\TypeListInterface;
use Magento\Framework\Controller\Result\ForwardFactory;
use Magento\Framework\Controller\Result\Json;
use Magento\Framework\View\Layout;
use Magento\Indexer\Model\Processor;
use Mageplaza\QuickFlushCache\Helper\Data as HelperData;

/**
 * Class AbstractController
 * @package Mageplaza\QuickFlushCache\Controller\Adminhtml
 */
abstract class AbstractController extends Action
{
    /**
     * @var ForwardFactory
     */
    protected $_resultFwFactory;

    /**
     * @var TypeListInterface
     */
    protected $_cacheTypeList;

    /**
     * @var Json
     */
    protected $_resultJson;

    /**
     * @var Layout
     */
    protected $_layout;

    /**
     * @var Processor
     */
    protected $_processor;

    /**
     * @var HelperData
     */
    protected $_helperData;

    /**
     * FlushSystem constructor.
     *
     * @param Context $context
     * @param ForwardFactory $resultFwFactory
     * @param TypeListInterface $cacheTypeList
     * @param Json $resultJson
     * @param Layout $layout
     * @param Processor $processor
     * @param HelperData $helperData
     */
    public function __construct(
        Context $context,
        ForwardFactory $resultFwFactory,
        TypeListInterface $cacheTypeList,
        Json $resultJson,
        Layout $layout,
        Processor $processor,
        HelperData $helperData
    ) {
        parent::__construct(
            $context
        );

        $this->_resultFwFactory = $resultFwFactory;
        $this->_cacheTypeList   = $cacheTypeList;
        $this->_resultJson      = $resultJson;
        $this->_layout          = $layout;
        $this->_processor       = $processor;
        $this->_helperData      = $helperData;
    }
}
