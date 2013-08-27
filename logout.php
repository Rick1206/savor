<?php
if($_GET['url'] != ""){
	$url = $_GET['url'];
}else{
	$url = "/index.php";
}

$_SESSION = array();

session_destroy();

setcookie(session_name(), '', time( )-300);

header("Location: $url");

?>