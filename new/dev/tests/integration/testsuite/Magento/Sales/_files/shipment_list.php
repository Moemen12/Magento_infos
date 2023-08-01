<?php
/**
 * Copyright © Magento, Inc. All rights reserved.
 * See COPYING.txt for license details.
 */

use Magento\Sales\Model\Order;

require 'order.php';

/** @var Order $order */
/** @var  Order\Payment $payment */
/** @var  Order\Item $orderItem */

$shipments = [
    [
        'increment_id' => '100000001',
        'order_id' => $order->getId(),
        'shipping_address_id' => 1,
        'shipment_status' => \Magento\Sales\Model\Order\Shipment::STATUS_NEW,
        'store_id' => 1,
        'shipping_label' => 'shipping_label_100000001',
    ],
    [
        'increment_id' => '100000002',
        'order_id' => $order->getId(),
        'shipping_address_id' => 3,
        'shipment_status' => \Magento\Sales\Model\Order\Shipment::STATUS_NEW,
        'store_id' => 1,
        'shipping_label' => 'shipping_label_100000002',
    ],
    [
        'increment_id' => '100000003',
        'order_id' => $order->getId(),
        'shipping_address_id' => 3,
        'status' => \Magento\Sales\Model\Order\Shipment::STATUS_NEW,
        'store_id' => 1,
        'shipping_label' => 'shipping_label_100000003',
    ],
    [
        'increment_id' => '100000004',
        'order_id' => $order->getId(),
        'shipping_address_id' => 4,
        'shipment_status' => 'closed',
        'store_id' => 1,
        'shipping_label' => 'shipping_label_100000004',
    ],
];

/** @var array $shipmentData */
foreach ($shipments as $shipmentData) {
    /** @var $shipment \Magento\Sales\Model\Order\Shipment */
    $shipment = \Magento\TestFramework\Helper\Bootstrap::getObjectManager()->create(
        \Magento\Sales\Model\Order\Shipment::class
    );
    /** @var \Magento\Sales\Model\Order\Shipment\Item $shipmentItem */
    $shipmentItem = $objectManager->create(\Magento\Sales\Model\Order\Shipment\Item::class);
    $shipmentItem->setParentId($order->getId());
    $shipmentItem->setOrderItem($orderItem);
    $shipment
        ->setData($shipmentData)
        ->addItem($shipmentItem)
        ->save();
}
