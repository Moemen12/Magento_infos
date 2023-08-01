<?php 
/*


  #how to add js file globally in frontend

  1- create a module and register it
  2- In app/code/Vendor/Module/view/frontend/layout/ create a default.xml file
  3- Add 
  
  <?xml version="1.0"?>
  <page xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" layout="1column" xsi:noNamespaceSchemaLocation="urn:magento:framework:View/Layout/etc/page_configuration.xsd">
    <head>
        <link src="Vendor_Module::js/shop.js"/>
    </head>
  </page>

  4- create a web folder inside In app/code/Vendor/Module/view/frontend/
  5- create a js folder in web folder then inside js folder create js file 

  app/code/Vendor/Module/view/frontend/web/js/any.js

  6- in terminal    php -d memory_limit=-1  bin/magento s:s:d -f 


  #how to add js file globally in admin panel


 1- create a module and register it
  2- In app/code/Vendor/Module/view/adminhtml/layout/ create a default.xml file
  3- Add 
  
 <?xml version="1.0"?>
<page xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" layout="1column" xsi:noNamespaceSchemaLocation="urn:magento:framework:View/Layout/etc/page_configuration.xsd">
    <head>
        <script src="Main_Store::js/adminpanel.js"/>
    </head>
</page>

  4- create a web folder inside In app/code/Vendor/Module/view/adminhtml/
  5- create a js folder in web folder then inside js folder create js file 

  app/code/Vendor/Module/view/adminhtml/web/js/any.js

  6- in terminal    php -d memory_limit=-1  bin/magento s:s:d -f 













  
*/

?>
