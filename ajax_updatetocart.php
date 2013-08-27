<?php
define('IN_SK',true);
require ('./includes/init.php');


$uid = $_COOKIE['SESSION'];

$qty = $_POST['count'];

$pt = $_POST['product_type']; 

$pid = $_POST['product_id'];

$where = " WHERE user_session_id = '".$uid."' AND product_type = '".$pt."' AND product_id = '".$pid."' ";

if($qty>0){
	$myquery = $db->query("UPDATE ".$ros->table('carts')." SET quantity=".$qty.", date_modified='".date("Y-m-d H:i:s").$where);
}else{
	$myquery = $db->query("DELETE FROM ".$ros->table('carts').$where);
}

if($myquery){
	echo "Ok";
}else{
	echo "wrong";
}

?>