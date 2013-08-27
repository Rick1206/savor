<?php
if (!defined('IN_SK')){
    die('Hacking attempt');
}

function get_seo_info($id,$lang)
{
	global $db,$ros;
	$where = "WHERE page_id = '".$id."'";
	$param = "ptitle_".$lang." as title".", pkeyword_".$lang." as keyword".", pdescription_".$lang." as description";
	$sql = 'SELECT '.$param.' '.
			'FROM '. $ros->table('seo').
			$where;
			
	$info = $db->query($sql);	
		
	return $info;
}
 
 
?>