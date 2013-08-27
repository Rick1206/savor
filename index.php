<?php
define('IN_SK',true);

require_once './includes/Mobile_Detect.php';
$detect = new Mobile_Detect;
$deviceType = ($detect->isMobile() ? ($detect->isTablet() ? 'tablet' : 'phone') : 'computer');
//$scriptVersion = $detect->getScriptVersion();
if($deviceType == "phone"){
	header("Location:./mobile/index.php");
	//exit;
}



include './includes/init.php';
include './control/homepage/home.php';
include './control/seo.php';

?>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<?php
	$sid = "1";
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
</head>
<body>	
<?php
	$nav = 1;
	include 'header.php';
	include 'footer.php';
	include 'nav.php';
?>

<div class="J_main jh jw">
    	<div class="banner">
        <ul class="jh jw">
        	<?php 
        		$bannerInfo = get_banners("");
				while ($thisB = $db->fetch_array($bannerInfo)) {
					?>
					<li><a href="<?php echo $thisB['link'] ?>"><img src="<?php echo $file_dir."/banners/".$thisB['photo_'.$lang]; ?>" alt="<?php echo $thisB['title_'.$lang] ?>" /></a></li>
			<?php
				}		
			 ?>
        </ul>
        </div>
        
        <div class="J_banner">
        <!--button预留位置-->	
        </div>
        
        
        <div class="banner-control">
        	<?php 
        	$occasionsInfo = get_occasions_categories("");
			while ($thisB = $db->fetch_array($occasionsInfo)) {
			?>
            <div class="box">
            	<a href="occasions.php?id=<?php echo $thisB['category_id'];?>"><?php echo $thisB['name_'.$lang] ;?></a><img src="<?php echo $file_dir."/occasion_category/s_".$thisB['photo']; ?>" />
            </div>
            <?php
			}
            ?>
        </div>
        
</div>

<script language="javascript" src="js/jquery-1.7.js"></script>
<script language="javascript" src="js/common.js"></script>
<script language="javascript" src="js/galleryImg.js"></script>
<script>
$(function(){
	$.galleryImg({
		obj:'.banner ul',
		control:'.J_banner',
		ic:".J_banner"
	});
	indexIconAnimation();	
});	
</script>
</body>
</html>

