<?php


$path_to_root="/home/accounting/html/accounting2";
include_once($path_to_root . "/sales/includes/cart_class.inc");
include_once($path_to_root . "/includes/manufacturing.inc");

 

session_start();
echo "<pre>";
echo "isinya : ";
// print_r($_SESSION);
print_r($order->default_discount);
echo "</pre>";



?>
