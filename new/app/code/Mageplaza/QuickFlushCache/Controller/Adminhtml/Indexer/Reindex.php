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

use Exception;
use Magento\Framework\App\Request\Http;
use Magento\Framework\App\ResponseInterface;
use Magento\Framework\Controller\Result\Json;
use Magento\Framework\Controller\ResultInterface;
use Magento\Framework\View\Element\Messages;
use Mageplaza\QuickFlushCache\Controller\Adminhtml\AbstractController;

/**
 * Class Reindex
 * @package Mageplaza\QuickFlushCache\Controller\Adminhtml\Indexer
 */
class Reindex extends AbstractController
{
    /**
     * @return ResponseInterface|Json|ResultInterface
     * @throws Exception
     */
    public function execute()
    {
        /** @var Http $request */
        $request = $this->getRequest();
        if (!$request->isAjax()) {
            return $this->_resultFwFactory->create()->forward('noroute');
        }
        $this->_processor->reindexAllInvalid();
        $this->_helperData->synchronizedSystemMessage();
        /** @var Messages $messageBlock */
        $messageBlock = $this->_layout->createBlock(Messages::class);
        $messageBlock->addSuccess(__('You have reindexed successfully.'));
        $result = [
            'success' => true,
            'message' => $messageBlock->toHtml()
        ];

        return $this->_resultJson->setData($result);
    }
}
