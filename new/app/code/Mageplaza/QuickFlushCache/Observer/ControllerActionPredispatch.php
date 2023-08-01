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

namespace Mageplaza\QuickFlushCache\Observer;

use Magento\Framework\App\Cache\TypeListInterface;
use Magento\Framework\App\RequestInterface;
use Magento\Framework\Event\ManagerInterface;
use Magento\Framework\Event\Observer as EventObserver;
use Magento\Framework\Event\ObserverInterface;
use Magento\Framework\Message\ManagerInterface as MessageManagerInterface;
use Mageplaza\QuickFlushCache\Helper\Data as HelperData;
use Mageplaza\QuickFlushCache\Model\Config\Source\System\YesNo;

/**
 * Class ControllerActionPredispatch
 * @package Mageplaza\TwoFactorAuth\Observer\Backend
 */
class ControllerActionPredispatch implements ObserverInterface
{
    /**
     * @var ManagerInterface
     */
    protected $_eventManager;

    /**
     * @var MessageManagerInterface
     */
    protected $_messageManager;

    /**
     * @var TypeListInterface
     */
    protected $_cacheTypeList;

    /**
     * @var HelperData
     */
    protected $_helperData;

    /**
     * ControllerActionPredispatch constructor.
     *
     * @param ManagerInterface $eventManager
     * @param MessageManagerInterface $messageManager
     * @param TypeListInterface $cacheTypeList
     * @param HelperData $helperData
     */
    public function __construct(
        ManagerInterface $eventManager,
        MessageManagerInterface $messageManager,
        TypeListInterface $cacheTypeList,
        HelperData $helperData
    ) {
        $this->_eventManager   = $eventManager;
        $this->_messageManager = $messageManager;
        $this->_cacheTypeList  = $cacheTypeList;
        $this->_helperData     = $helperData;
    }

    /**
     * @param EventObserver $observer
     */
    public function execute(EventObserver $observer)
    {
        /** @var RequestInterface $request */
        $request              = $observer->getEvent()->getRequest();
        $notAllowedController = [
            'adminhtml_auth_login',
            'adminhtml_auth_forgotpassword',
            'mui_index_render',
            'mpquickflushcache_cache_flushsystem',
            'mpquickflushcache_indexer_reindex'
        ];
        if ($this->_helperData->isEnabledFlushCache() === YesNo::AUTO
            && !$request->isAjax()
            && !in_array($request->getFullActionName(), $notAllowedController, true)) {
            $invalidCaches = [];
            foreach ($this->_cacheTypeList->getInvalidated() as $type) {
                $invalidCaches[] = $type->getId();
            }
            if ($invalidCaches) {
                foreach ($invalidCaches as $typeId) {
                    $this->_cacheTypeList->cleanType($typeId);
                }
                $this->_eventManager->dispatch('adminhtml_cache_flush_system');
                $this->_messageManager->addSuccessMessage(__('The Magento cache storage has been automatically flushed.'));
            }
        }
    }
}
