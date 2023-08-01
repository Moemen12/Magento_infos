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

namespace Mageplaza\QuickFlushCache\Plugin\Model\Message;

use Magento\Indexer\Model\Message\Invalid as IndexerInvalid;
use Mageplaza\QuickFlushCache\Helper\Data as HelperData;

/**
 * Class Invalid
 * @package Mageplaza\QuickFlushCache\Plugin\Model\Message
 */
class Invalid
{
    /**
     * @var HelperData
     */
    protected $_helperData;

    /**
     * Invalid constructor.
     *
     * @param HelperData $helperData
     */
    public function __construct(
        HelperData $helperData
    ) {
        $this->_helperData = $helperData;
    }

    /**
     * @param IndexerInvalid $subject
     * @param $result
     * @SuppressWarnings(Unused)
     *
     * @return mixed
     */
    public function afterGetText(IndexerInvalid $subject, $result)
    {
        if ($this->_helperData->isEnabledReindex()) {
            $result .= ' <a id="mp-qfc-reindex" href="#">' . __('Reindex Now!') . '</a>';
        }

        return $result;
    }
}
