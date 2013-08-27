<?php
define('IN_SK',true);
require ('./includes/init.php');
require ('./control/seo.php');

$myquery = $db->query("SELECT * FROM ".$ros->table('promotions').$where." ORDER BY orderby");

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



<div class="menulist" style="width:1000px; margin-left:-500px;">


<div class="item l2 dn">推廣:<br/>提供現場烹調食物,務求新鮮</div>
<div class="containter">
    <div class="tag-content">
    	 <img src="image/promotions/b1.png" class="ma" />         
         <div class="comm-div diy-con">
         	<h1 class="comm-title ib">提供現場烹調食物,務求新鮮</h1> 
            <p>
            	<!--Total 2 items, please choose: -->
            </p>
            
            <ul class="cater-list farial">
            	<li style="display:block;">
                
<p>
我們擁有一支專業的服務員為您的會議，宴會或政黨派對。<br/>
我們已經準備好度身定做的菜單創意和驚喜！食物非常重視健康及地道口味！<br/>
我們的目標是提供食物特定要求者，製作了一頓配合口味令人難忘！
</p>

		<a class="comm-btn-l-normal">現在訂購</a>
                </li>
                
            </ul> 
         </div>
         
    </div>    
    
    <div class="tag-content dn">
    	 <img src="image/promotions/b1.png" class="ma" />         
         <div class="comm-div diy-con">
         	<h1 class="comm-title ib">船河</h1> 
            <p>
            	<!--Total 2 items, please choose: -->
            </p>
            
            <ul class="cater-list farial">
            	<li style="display:block;">
                
<p>
在船上一個美麗的陽光燦爛日子裡配合我們特定套餐中西菜式及大型宴會配合。我們為您提供美味的食品，甚至安排租船出海！<br/>
婚禮雞尾酒<br/>
這是我們美味的食物和無敵服務，保證所有的歡樂和輝煌的最重要的一天，你的生活，你所愛的人！持續永遠的珍貴回憶，帶給所有心愛的貴客每一個難忘愉快的時刻！

</p>

		<a class="comm-btn-l-normal">現在訂購</a>
                </li>
                
            </ul> 
         </div>
         
    </div> 
    
    <!--tag menus-->
       <!-- <div class="tag-menu tm1 l1 on">SEASONAL</div>
        <div class="tag-menu tm2 l1">COUPONS</div>     --> 
    <!--tag menu end-->
</div>



<div class="item l2">推廣:<br/>船河</div>
<div class="containter dn">
    <div class="tag-content">
    	 <img src="image/promotions/b2.png" class="ma" />         
         <div class="comm-div diy-con">
         	<h1 class="comm-title ib">船河</h1> 
            <p>
            	<!--Total 2 items, please choose: -->
            </p>
            
            <ul class="cater-list farial">
            	<li style="display:block;">
                
<p>
在船上一個美麗的陽光燦爛日子裡配合我們特定套餐中西菜式及大型宴會配合。我們為您提供美味的食品，甚至安排租船出海！<br/>
婚禮雞尾酒<br/>
這是我們美味的食物和無敵服務，保證所有的歡樂和輝煌的最重要的一天，你的生活，你所愛的人！持續永遠的珍貴回憶，帶給所有心愛的貴客每一個難忘愉快的時刻！

</p>

		<a class="comm-btn-l-normal">現在訂購</a>
                </li>
                
            </ul> 
         </div>
         
    </div> 
    
    <!--tag menus-->
        <!--<div class="tag-menu tm1 l1 on">SEASONAL</div>
        <div class="tag-menu tm2 l1">COUPONS</div>      -->
    <!--tag menu end-->
</div>





<div class="item l2">推廣:<br/>聖誕節設計菜單</div>
<div class="containter dn">
    <div class="tag-content">
    	 <img src="image/promotions/b2.png" class="ma" />         
         <div class="comm-div diy-con">
         	<h1 class="comm-title ib">聖誕節設計菜單</h1> 
            <p>
            	<!--Total 2 items, please choose: -->
            </p>
            
            <ul class="cater-list farial">
            	<li style="display:block;">
                
<p>
聖誕是指日可待！對於這個節日，我們已經準備好菜式，伴隨著歡快的氣氛，有許多的驚喜！
</p>

		<a class="comm-btn-l-normal">現在訂購</a>
                </li>
                
            </ul> 
         </div>
         
    </div> 
    
    <div class="tag-content dn">
    	 <img src="image/promotions/b2.png" class="ma" />         
         <div class="comm-div diy-con">
         	<h1 class="comm-title ib">Savor Occasions Set Menu</h1> 
            <p>
            	<!--Total 2 items, please choose:-->
            </p>
            
            <ul class="cater-list farial">
            	<li style="display:block;">
                
<p>
Yacht Trip Set Menu<br/>
Ever imagined to be away from the bustling city and get on a boat on a beautiful sunny day!! It's a piece of cake with our boat trip one-stop service. We provide you with savory food and even arrange boat rental!  
</p>
<p>
Wedding Cocktail Set Menu<br/>
This is our delicious food and seamless services that guarantee all the joy and splendor of the most important day of your life with your loved one! A precious memory that lasts for forever, a delightful moment with all beloved guests!   
</p>

		<a class="comm-btn-l-normal">現在訂購</a>
                </li>
                
            </ul> 
         </div>
         
    </div>
    
    <!--tag menus-->
        <!--<div class="tag-menu tm1 l1 on">SEASONAL</div>
        <div class="tag-menu tm2 l1">COUPONS</div>      -->
    <!--tag menu end-->
</div>


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
