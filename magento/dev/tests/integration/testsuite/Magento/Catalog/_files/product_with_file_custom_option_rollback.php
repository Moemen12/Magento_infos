<?php
/**
 * Copyright © Magento, Inc. All rights reserved.
 * See COPYING.txt for license details.
 */
declare(strict_types=1);

/** @var \Magento\Framework\Registry $registry */
$registry = \Magento\TestFramework\Helper\Bootstrap::getObjectManager()->get(\Magento\Framework\Registry::class);

$registry->unregister('isSecureArea');
$registry->register('isSecureArea', true);

$repository = \Magento\TestFramework\Helper\Bootstrap::getObjectManager()->create(
    \Magento\Catalog\Model\ProductRepository::class
);
try {
    $product = $repository->get('simple-with-file-option', false, null, true);
    $product->delete();
} catch (\Magento\Framework\Exception\NoSuchEntityException $e) {
    //Entity already deleted
}

$registry->unregister('isSecureArea');
$registry->register('isSecureArea', false);
