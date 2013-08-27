<?php
define('IN_SK',true);
require_once('./includes/init.php');

$pass = md5($_POST['pass']);
//$pass = $_POST['pass'];

$mySql = $db->query("SELECT email, password, first_name,id  FROM ".$ros->table('customers')." WHERE email = '".$_POST["email"]."' AND password = '".$pass."' LIMIT 1");

if ($thisB = $db->fetch_array($mySql)) {
	session_regenerate_id(true);
	$_SESSION['user_id'] = $thisB['id'];
	$_SESSION['userName'] = $thisB['first_name'];
	echo $_SESSION['userName'];
}else{
	echo "wrong1";
}

$thisB= null;
$mySql= null;

?>