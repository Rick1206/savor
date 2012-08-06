<?php
# FileName="Connection_php_mysql.htm"
# Type="MYSQL"
# HTTP="true"
$hostname_savordata = "localhost";
$database_savordata = "savordata";
$username_savordata = "rick";
$password_savordata = "65329471";
$savordata = mysql_pconnect($hostname_savordata, $username_savordata, $password_savordata) or trigger_error(mysql_error(),E_USER_ERROR); 
?>