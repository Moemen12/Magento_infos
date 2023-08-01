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

namespace Mageplaza\QuickFlushCache\Controller\Adminhtml\Cache;

use Magento\Backend\App\Action\Context;
use Magento\Backend\Controller\Adminhtml\Cache;
use Magento\Framework\App\Cache\Frontend\Pool;
use Magento\Framework\App\Cache\StateInterface;
use Magento\Framework\App\Cache\TypeListInterface;
use Magento\Framework\View\Result\PageFactory;
use Mageplaza\QuickFlushCache\Helper\Data as HelperData;
use Mageplaza\QuickFlushCache\Model\Config\Source\System\YesNo;

/**
 * Class ListAction
 * @package Mageplaza\QuickFlushCache\Controller\Adminhtml\Indexer
 */
class Index extends Cache
{
    /**
     * @var HelperData
     */
    protected $_helperData;

    /**
     * Index constructor.
     *
     * @param Context $context
     * @param TypeListInterface $cacheTypeList
     * @param StateInterface $cacheState
     * @param Pool $cacheFrontendPool
     * @param PageFactory $resultPageFactory
     * @param HelperData $helperData
     */
    public function __construct(
        Context $context,
        TypeListInterface $cacheTypeList,
        StateInterface $cacheState,
        Pool $cacheFrontendPool,
        PageFactory $resultPageFactory,
        HelperData $helperData
    ) {
        parent::__construct(
            $context,
            $cacheTypeList,
            $cacheState,
            $cacheFrontendPool,
            $resultPageFactory
        );

        $this->_helperData = $helperData;
    }

    /**
     * Display processes grid action
     *
     * @return void
     */
    public function execute()
    {
        $this->_view->loadLayout();
        if ($this->_helperData->isEnabledFlushCache() === YesNo::MANUAL && $this->getRequest()->isAjax()) {
            $gridBlock = $this->_view->getLayout()->getBlock('adminhtml.cache.container');

            return $this->_response->representJson($gridBlock->toHtml());
        }
    }
}
