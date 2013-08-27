<?php
define('IN_SK',true);
require ('./includes/init.php');

$uid = $_COOKIE['SESSION'];

$where = " WHERE user_session_id = '".$uid."'";
$query = $db->query("SELECT * FROM ".$ros->table('carts').$where);

$thisB = $db->num_rows($query);

echo $thisB;

?>