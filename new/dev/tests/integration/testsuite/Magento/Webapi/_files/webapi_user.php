<?php
/**
 * Copyright © Magento, Inc. All rights reserved.
 * See COPYING.txt for license details.
 */

/**
 * Create an admin user with an assigned role
 */

/** @var $model \Magento\User\Model\User */
$model = \Magento\TestFramework\Helper\Bootstrap::getObjectManager()->create(\Magento\User\Model\User::class);
$model->setFirstname("Web")
    ->setLastname("Api")
    ->setUsername('webapi_user')
    ->setPassword(\Magento\TestFramework\Bootstrap::ADMIN_PASSWORD)
    ->setEmail('webapi_user@example.com')
    ->setRoleType('G')
    ->setResourceId('Magento_Backend::all')
    ->setPrivileges("")
    ->setAssertId(0)
    ->setRoleId(2)
    ->setPermission('allow');
$model->save();
