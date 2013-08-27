<?php
define('IN_SK',true);
require_once('./includes/init.php');

$mySql = $db->query("SELECT email FROM ".$ros->table('customers')." WHERE email = '".$_POST["email"]."' LIMIT 1");

if ($thisB = $db->fetch_array($mySql)) {
	echo "wrong1";
	$mySql = null;
	$thisB = null;
	return;
}

$pass = md5($_POST['pass']);
//$pass = $_POST['pass'];

$mySql = $db->query("INSERT INTO ".$ros->table('customers')." (email, password, first_name, last_name, phone, city, address, date_created) VALUES ('".
$_POST["email"]."', '".$pass."', '".$_POST["firstname"]."', '".$_POST["lastname"]."', '".$_POST["mobile"]."', '".$_POST["city"]."', '".$_POST["address"]."', '".date('Y-m-d')."')");

if($mySql){
	echo $_POST["firstname"];
	$mySql = $db->query("SELECT email, password, first_name,id  FROM ".$ros->table('customers')." WHERE email = '".$_POST["email"]."' AND password = '".$pass."' LIMIT 1");
	if ($thisB = $db->fetch_array($mySql)) {
		$_SESSION['user_id'] = $thisB['id'];
		$_SESSION['userName'] = $thisB["first_name"];
	}
}else{
	echo "wrong2";
}	

$mySql = null;
?>