<?php
define('IN_SK',true);
require ('./includes/init.php');

if (isset($_COOKIE['SESSION'] )) {
	$uid = $_COOKIE['SESSION'];
}else{
	$uid = md5(uniqid('biped',true));
}

setcookie('SESSION', $uid, time()+(60*60*24*30));

echo "w";

$str = $_POST['arr'];
$parr = explode('||', $str);
$res = "";

foreach ($parr as $k=>$v) {
	$sarr =  explode('|', $v);
	$pty = $sarr[0];
	if($pty == "0"){
		$type = "menu";
	}else{
		$type = "occasion";
	}
	
	$pid = $sarr[1];
	$qty = $sarr[2];
	
	$where = " WHERE user_session_id = '".$uid."' AND product_type = '".$type."' AND product_id = '".$pid."' ";
	$query = $db->query("SELECT * FROM ".$ros->table('carts').$where);
	
	if ($thisB = $db->fetch_array($query)) {
		$myquery = $db->query("UPDATE ".$ros->table('carts')." SET quantity=quantity+".$qty.", date_modified='".date("Y-m-d H:i:s")."' WHERE id='".$thisB['id']."'");
	}else{
		$myquery = $db->query("INSERT INTO ".$ros->table('carts')." ( user_session_id, product_type, product_id, quantity) VALUES ('".$uid."','".$type."', '".$pid."', '".$qty."')");
	}

	if($myquery){
		$res = "Ok";
	}else{
		$res = "wrong1";
	}		
}

echo $res;

?>