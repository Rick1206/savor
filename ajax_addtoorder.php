<?php
define('IN_SK',true);
require ('./includes/init.php');
require ('./includes/calculate.php');

$userId = $_SESSION['user_id'];

$myquery = $db->query("INSERT INTO ".$ros->table('orders')."(customer_id,order_date) VALUES ('".$userId."', '".date("Y-m-d H:i:s")."')");

if($myquery){
	$getID = mysql_insert_id();
	$_SESSION['order_id'] = $getID;
}else{
	echo "wrong";
}

$oid = $_SESSION['order_id'];
$uid = $_COOKIE['SESSION'];

$where = " WHERE user_session_id = '".$uid."'";
$query = $db->query("SELECT * FROM ".$ros->table('carts').$where);

while($thisB = $db->fetch_array($query)){
	if($thisB['product_type']=="menu"){
		$subquery = $db->query("SELECT * FROM ".$ros->table('products')." where product_id ='".$thisB['product_id']."'");
		if ($subthisB = $db->fetch_array($subquery)) {
			$myquery = $db->query("INSERT INTO ".$ros->table('order_contents')." ( order_id, product_type, product_id, quantity, price_per) VALUES ('".$oid."','".
			$thisB['product_type']."', '".$thisB['product_id']."', '".$thisB['quantity']."', '".$subthisB['price']."')");
		}
	}else{
		$subquery = $db->query("SELECT * FROM ".$ros->table('occasions')." where occasion_id ='".$thisB['product_id']."'");
		if ($subthisB = $db->fetch_array($subquery)) {
			$myquery = $db->query("INSERT INTO ".$ros->table('order_contents')." ( order_id, product_type, product_id, quantity, price_per) VALUES ('".$oid."','".
			$thisB['product_type']."', '".$thisB['product_id']."', '".$thisB['quantity']."', '".$subthisB['price']."')");
		}
	}
}

$where = "WHERE order_id = '".$oid."'";
$myquery = $db->query("SELECT SUM(quantity*price_per) as total FROM ".$ros->table('order_contents').$where);

if($thisB = $db->fetch_array($myquery)){
	echo $thisB['total'];
	$where = "WHERE id = '".$oid."'";
	$myupdate = $db->query("UPDATE ".$ros->table('orders')." SET total='".$thisB['total']."'".$where);
}


if($myupdate){
	echo "Ok";	
}else{
	echo "wrong";
}





?>