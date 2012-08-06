<?php

$conn = @ mysql_connect("localhost", "root", "") or die("数据库链接错误");
mysql_select_db("savordata", $conn);
mysql_query("set names 'UTF-8'"); //使用GBK中文编码;

function htmtocode($content) {
	$content = str_replace("\n", "<br>", str_replace(" ", "&nbsp;", $content));
	return $content;
}


?>
