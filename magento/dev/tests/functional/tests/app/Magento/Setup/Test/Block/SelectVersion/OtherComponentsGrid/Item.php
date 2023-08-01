<?php
/**
 * Copyright © Magento, Inc. All rights reserved.
 * See COPYING.txt for license details.
 */
namespace Magento\Setup\Test\Block\SelectVersion\OtherComponentsGrid;

use Magento\Mtf\Block\Block;
use Magento\Mtf\Client\ElementInterface;
use Magento\Mtf\Client\Locator;

/**
 * Block for each component.
 */
class Item extends Block
{
    /**
     * CSS selector for version element.
     *
     * @var string
     */
    private $version = '[ng-change*="setComponentVersion"]';

    /**
     * CSS selector for available version options.
     *
     * @var string
     */
    private $versionOptions = '[ng-change*="setComponentVersion"] option';

    /**
     * CSS selector for package name element.
     *
     * @var string
     */
    private $packageName = 'td:nth-child(2)';

    /**
     * Set version for particular component.
     *
     * @param string $version
     */
    public function setVersion($version)
    {
        $this->_rootElement->find($this->version, Locator::SELECTOR_CSS, 'select')->setValue($version);
    }

    /**
     * Returns package name of element.
     *
     * @return array|string
     */
    public function getPackageName()
    {
        return $this->_rootElement->find($this->packageName)->getText();
    }

    /**
     * Return list of available versions.
     *
     * @return string[]
     */
    public function getAvailableVersions()
    {
        $options = $this->_rootElement->getElements($this->versionOptions, Locator::SELECTOR_CSS);
        return array_map(
            function (ElementInterface $item) {
                return $item->getText();
            },
            $options
        );
    }
}
