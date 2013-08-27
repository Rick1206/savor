<?php


define('IN_SK',true);
require ('./includes/init.php');

//$uid
$uid = $_COOKIE['SESSION'];

$pt = $_POST['product_type']; 

$pid = $_POST['product_id'];


$where = " WHERE user_session_id = '".$uid."' AND product_type = '".$pt."' AND product_id = '".$pid."' ";

$query = $db->query("DELETE FROM ".$ros->table('carts').$where);

if($query){
	echo "Ok";
}
	
?>