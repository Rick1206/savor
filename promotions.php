<?php
define('IN_SK',true);
require ('./includes/init.php');
require ('./control/seo.php');
?>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<?php
	$sid = "4";
	$seoquery = get_seo_info($sid,$lang);
	if($SeoB = $db->fetch_array($seoquery)){
		$page_title = $SeoB["title"];
		$page_keywords = $SeoB["keyword"];
		$page_description = $SeoB["description"];
	}
	
	include 'seo.php';
?>
<link rel="stylesheet" href="css/base.css" type="text/css" />
<link rel="stylesheet" href="css/common.css" type="text/css" />
<script language="javascript" src="js/jquery-1.7.js"></script>
</head>

<body class="jh">
<?php
	$nav = 4;
	include 'header.php';
	include 'footer.php';
?>
<div class="J_main jh jw">

<div class="banner jh jw">
<img src="image/banner/promotion.jpg" alt="" />
</div>

<!--main-->

<div class="menulist noshake" style="width:1000px; margin-left:-500px;">

<?php

$pro_type = array('1' => "推廣", '2' => "Seasonal");
$where= "";
$param = "type_id, name_".$lang." as title, photo, url, description_".$lang." as description";

$myquery = $db->query("SELECT ".$param." FROM ".$ros->table('promotions').$where." ORDER BY orderby");	
$num=0;
	while($thisB = $db->fetch_array($myquery)) {
		
	
?>
<div class="item l2 <?php echo ($num==0)? "dn":"";?>"><?php echo $pro_type[$thisB['type_id']];?>:<br/><?php echo $thisB['title'];?></div>
<div class="containter <?php echo ($num!=0)? "dn":"";?>">
    <div class="tag-content">
    	 <img src="<?php echo $file_dir."/promotions/".$thisB['photo']; ?>" class="ma" />         
         <div class="comm-div diy-con">
         	<h1 class="comm-title ib"><?php echo $thisB['title'];?></h1> 
   
            <ul class="cater-list farial">
            	<li style="display:block;">
                
				<p>
				<?php echo $thisB['description'];?>
				</p>

		<a class="comm-btn-l-normal" href="<?php echo $thisB['url'];?>">現在訂購</a>
                </li>
                
            </ul> 
         </div>
         
    </div>   
    
     
  
</div>

<?php
$num++;
}
?>




</div>

<script>
$(function(){
	standardCircleMenu('.menulist');
	circleMenu('.containter');
});	
</script>
</div>

<script language="javascript" src="js/common.js"></script>
</body>
</html>
