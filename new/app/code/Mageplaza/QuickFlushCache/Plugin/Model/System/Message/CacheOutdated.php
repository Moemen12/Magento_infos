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

namespace Mageplaza\QuickFlushCache\Plugin\Model\System\Message;

use Magento\AdminNotification\Model\System\Message\CacheOutdated as SystemCacheOutdated;
use Mageplaza\QuickFlushCache\Helper\Data as HelperData;
use Mageplaza\QuickFlushCache\Model\Config\Source\System\YesNo;

/**
 * Class CacheOutdated
 * @package Mageplaza\QuickFlushCache\Plugin\Model\System\Message
 */
class CacheOutdated
{
    /**
     * @var HelperData
     */
    protected $_helperData;

    /**
     * CacheOutdated constructor.
     *
     * @param HelperData $helperData
     */
    public function __construct(
        HelperData $helperData
    ) {
        $this->_helperData = $helperData;
    }

    /**
     * @param SystemCacheOutdated $subject
     * @param $result
     * @SuppressWarnings(Unused)
     *
     * @return mixed
     */
    public function afterGetText(SystemCacheOutdated $subject, $result)
    {
        if ($this->_helperData->isEnabledFlushCache() === YesNo::MANUAL) {
            $result .= ' <a id="mp-qfc-flush-cache" href="#">' . __('Flush Now!') . '</a>';
        }

        return $result;
    }
}
