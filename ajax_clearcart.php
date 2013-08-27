<?php
define('IN_SK',true);
require ('./includes/init.php');

$uid = $_COOKIE['SESSION'];

$where = " WHERE user_session_id = '".$uid."'";

$myquery = $db->query("DELETE FROM ".$ros->table('carts').$where);

if($myquery){
	echo "Ok";
}else{
	echo "wrong";
}

?>