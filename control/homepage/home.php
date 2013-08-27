<?php
if (!defined('IN_SK')){
    die('Hacking attempt');
}

function get_banners($where)
{
	global $db,$ros;
	//$oldpass = md5($param['old_psw']);
	$sql = 'SELECT * '.
			'FROM '. $ros->table('banners').
			$where.
			'ORDER BY orderby';
			
	$info = $db->query($sql);	
		
	return $info;
}

function get_occasions_categories($where)
{
	global $db,$ros;
	//$oldpass = md5($param['old_psw']);
	$sql = 'SELECT * '.
			'FROM '. $ros->table('occasions_categories').
			$where.
			'ORDER BY orderby LIMIT 0,4';
			
	$info = $db->query($sql);	
		
	return $info;
}