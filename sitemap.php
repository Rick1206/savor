<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>網站地圖</title>
<link rel="stylesheet" href="css/base.css" type="text/css" />
<link rel="stylesheet" href="css/common.css" type="text/css" />

<script language="javascript" src="js/jquery-1.7.js"></script>
<script language="javascript" src="js/time_en.js"></script>
<script language="javascript" src="js/common.js"></script>
<script language="javascript" src="js/galleryImg.js"></script>
</head>

<body class="jh">
<?php
	$nav = 5;
	include 'header.php';
	include 'footer.php';
?>

<div class="J_main jh jw">

<div class="banner jh jw">
<img src="image/banner/contactus.jpg" alt="" />
</div>

<!--main-->


<div class="menulist noshake" style="width:1000px; margin-left:-500px;">
<h1 class="comm-title ib" style="float:left; top:70px; margin-left:-270px; position:relative;">ABOUT</h1>

<div class="containter">
    <div class="tag-content J_des_box">
    	 <img src="image/banner/termsb.png" class="ma" />         
         <div class="comm-div diy-con">
         	<h1 class="comm-title ib">網站地圖
         		</h1>
            <ul class="cater-list farial  occasions_list">
            	<li style="display:block;">
                    <table cellpadding="0" cellspacing="0" class="sitemap_table">
                        <tr>
                       	  <td>
                            	<strong>菜式</strong>
                            <a href="luncheonmenu.php">到會菜單</a>
                          </td><td>
                            <strong>場合</strong>
                            <a href="occasions.php">場合</a></td><td>
                            	<strong>推廣</strong>
                                <a href="promotions.php">推廣</a>
                                </td>
                        </tr>
                        
                        <tr>
                        
                        </tr>
                        
                    </table>
                </li>
                
            </ul> 
         </div>
         
    </div>
             
</div>


</div>

<script>
$(function(){
standardCircleMenu('.menulist');
});
</script>
</div>

</body>
</html>
