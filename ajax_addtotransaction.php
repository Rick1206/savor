<?php
define('IN_SK',true);
require ('./includes/init.php');


$oid = $_SESSION['order_id'];

$myquery = $db->query("INSERT INTO ".$ros->table('transactions')." (order_id, product_type, product_id, quantity) VALUES ('".$oid."','".$type."', '".$pid."', '".$qty."')");


?>