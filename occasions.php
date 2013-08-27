<?php
define('IN_SK',true);
require ('./includes/init.php');
require ('./control/seo.php');

$proId = !empty($_GET['id']) ? $_GET['id'] : "";

?>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<?php
	$sid = "3";
	
	$seoquery = get_seo_info($sid,$lang);
	
	if($SeoB = $db->fetch_array($seoquery)){
		$page_title = $SeoB["title"];
		$page_keywords = $SeoB["keyword"];
		$page_description = $SeoB["description"];
	}
	include 'seo.php';
?>
   <link rel="stylesheet" href="css/base.css" type="text/css"/>
    <link rel="stylesheet" href="css/common.css" type="text/css"/>
    <script language="javascript" src="js/jquery-1.7.js"></script>
    <script language="javascript" src="js/common.js"></script>
	<script language="javascript" src="js/jquery.jscrollpane.min.js"></script>
    <script language="javascript" src="js/jquery.mousewheel.js"></script>
    <link rel="stylesheet" href="css/jquery.jscrollpane.css" type="text/css" />
</head>

<body class="jh">
<?php
	$nav = 3;
	include 'header.php';
	include 'footer.php';
?> 

<div class="J_main jh jw">
<!-- insert data -->
<div class="banner jh jw">
<img src="image/banner/occasions.jpg" alt="" />
</div>

<!--main-->
<div class="menulist noshake" style="width:1000px; margin-left:-500px;">
<h1 class="comm-title ib" style="float:left; top:70px; margin-left:-270px; position:relative;">套餐</h1>
<?php
$where = "";
$param = "category_id,name_".$lang." as name";
$myquery = $db->query("SELECT ".$param." FROM ".$ros->table('occasions_categories').$where." ORDER BY orderby");

while($thisB = $db->fetch_array($myquery)) {

?>
<div class="item l1" rel="<?php echo $thisB['category_id']; ?>"><?php echo $thisB['name']; ?></div>
<?php 
}
?>
<div class="containter occasions_special">
    <div class="tag-content">
    	 <img src="image/occasions_sbg.png" class="ma" />   
    </div>         
</div>

</div>
<input type="hidden" value="1" id="typeid" />
<input type="hidden" value="<?php echo $proId;?>" id="redirect" />
<script>
$(function(){
	if($('#redirect').val()!=""){
		 function _lun_callback_t() {
		 }
		 commonAjax('ajax_occasions_detail.php', {id:$('#redirect').val()}, '.J_main', _lun_callback_t,null);
		 return;
	}
	
	standardCircleMenu('.menulist',true);
	$('.item').unbind('click').bind('click', function () {
		var _data = $(this).attr('rel');
		commonAjax('ajax_occasions_detail.php', {id:_data}, '.J_main', _lun_callback, _lun_error);
		function _lun_callback() {
			//menuAjax('luncheonmenu.php');
		}
		function _lun_error(){
			alert('Error!');	
		}
	});
	//$('.item').eq(0).click();
});	
</script>
</div>
<div class='oc_detail_box clearfix'></div>
<script language="javascript" src="js/common.js"></script>
</body>
</html>
