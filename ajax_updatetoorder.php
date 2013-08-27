<?php
define('IN_SK',true);
require ('./includes/init.php');

$uid = $_COOKIE['SESSION'];

$oid = $_SESSION['order_id'];

$sdate = $_POST['senddate'];

//echo $sdate;

$address = $_POST['address'];
$remark = $_POST['remark'];

$where = " WHERE id = '".$oid."' ";

$myquery = $db->query("UPDATE ".$ros->table('orders')." SET send_date='".$sdate."' , order_address='".$address."' , order_remark='".$remark."'".$where);

if($myquery){
	echo "Ok";
}else{
	echo "wrong";
}

?>