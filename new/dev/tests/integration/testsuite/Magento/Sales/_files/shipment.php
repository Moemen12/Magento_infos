<?php
/**
 * Copyright © Magento, Inc. All rights reserved.
 * See COPYING.txt for license details.
 */
require 'default_rollback.php';
require __DIR__ . '/../../../Magento/Sales/_files/order.php';

$payment = $order->getPayment();
$paymentInfoBlock = \Magento\TestFramework\Helper\Bootstrap::getObjectManager()
    ->get(\Magento\Payment\Helper\Data::class)
    ->getInfoBlock($payment);
$payment->setBlockMock($paymentInfoBlock);

/** @var \Magento\Sales\Model\Order\Shipment $shipment */
$shipment = $objectManager->create(\Magento\Sales\Model\Order\Shipment::class);
$shipment->setOrder($order);

$shipmentItem = $objectManager->create(\Magento\Sales\Model\Order\Shipment\Item::class);
$shipmentItem->setOrderItem($orderItem);
$shipment->addItem($shipmentItem);
$shipment->setPackages([['1'], ['2']]);
$shipment->setShipmentStatus(\Magento\Sales\Model\Order\Shipment::STATUS_NEW);

$shipment->save();
