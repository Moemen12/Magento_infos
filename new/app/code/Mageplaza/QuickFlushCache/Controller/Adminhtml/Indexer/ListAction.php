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

namespace Mageplaza\QuickFlushCache\Controller\Adminhtml\Indexer;

use Magento\Backend\App\Action\Context;
use Magento\Indexer\Controller\Adminhtml\Indexer;
use Mageplaza\QuickFlushCache\Helper\Data as HelperData;

/**
 * Class ListAction
 * @package Mageplaza\QuickFlushCache\Controller\Adminhtml\Indexer
 */
class ListAction extends Indexer
{
    /**
     * @var HelperData
     */
    protected $_helperData;

    /**
     * ListAction constructor.
     *
     * @param Context $context
     * @param HelperData $helperData
     */
    public function __construct(
        Context $context,
        HelperData $helperData
    ) {
        $this->_helperData = $helperData;

        parent::__construct(
            $context
        );
    }

    /**
     * Display processes grid action
     *
     * @return void
     */
    public function execute()
    {
        $this->_view->loadLayout();
        if ($this->_helperData->isEnabledReindex() && $this->getRequest()->isAjax()) {
            $gridBlock = $this->_view->getLayout()->getBlock('adminhtml.indexer.grid.container');

            return $this->_response->representJson($gridBlock->toHtml());
        }
    }
}
