<?php
define('IN_SK',true);
require_once('./includes/init.php');
?>
<!doctype html>
<html>
<head>
<meta charset="utf-8">

<?php
	$sid = "5";
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


<div class="menulist" style="width:1000px; margin-left:-500px;">
<div class="containter fis">
	<div class="tag-content">
        <img src="image/area_contact.png" class="ma contact-nav-img" />
        <div class="contact-about">
        <div class="comm-div">SAVOR means a passion for culinary excellence. 
        <br/>We are committed to serve our customers the best food in its taste, presentation and nutrient standard, not to forget to provide professional service to make every event an unforgettable moment of joy and laughs. 
        We believe that catering doesn't mean low quality of food and it can be as tasteful as dining in a restaurant. 
        Thanks to the very efficient transportation of Gourmet Paradise and SAVOR's particular setup, we can serve you in all settings. 
        Our team is composed of very experienced chefs from high-end restaurant, hotels and private clubhouses. 
		</div>
        </div>  
    </div>  
    
    <div class="tag-content dn">
    	 <img src="image/area_contact_form.png" class="ma" />
         
         <div class="comm-div">
         	<h1 class="comm-title">PAYMENT &  DELIVERY</h1>    
            <p><br/>Direct deposit to our HSBC account or you can pay online with a credit card after choosing the items from the shopping cart.
            </p>
         </div>
         
    </div>
    
     
    <div class="tag-content dn">
    	 <img src="image/area_contact_form.png" class="ma" />
         
         <div class="comm-div">
         	<h1 class="comm-title">CONTACT US</h1>    
            <p class="bb">
            	Hotline：2330 3330<br/>
                Fax：3030 9209<br/>
                Email：service@savor.com.hk
            </p>
            
            <table cellpadding="0" cellspacing="0" class="form-contact">
            	
            	<tr><th>Name：</th><td><input type="text" class="input-sytle-1" /></td></tr>
                </tr><th>Tel：</th><td><input type="text" class="input-sytle-1" /></td></tr>
                </tr><th>Fax：</th><td><input type="text" class="input-sytle-1" /></td></tr>
                </tr> <th>Email：</th><td><input type="text" class="input-sytle-1" /></td></tr>
                </tr><th>Message：</th><td><input type="text" class="input-sytle-1" /></td></tr>
                </tr><th>&nbsp;</th><td class="gbt"><a href="javascript:;" class="comm-btn">Sent</a><a href="javascript:;" class="comm-btn">Reset</a></td></tr>                
            </table>
                 
         </div>
         
    </div>
    
    
    
    <div class="tag-content dn">
    	 <img src="image/area_contact_form.png" class="ma" />
         
         <div class="comm-div">
         	<h1 class="comm-title">SAVOR FLAVOURS</h1>    
            <p>
            <br/>With a strong belief that customers are all unique, we are ready to work on tailor-made menus to create and to surprise.<br/>
            Our food is made with much attention to health, safety and much love to great taste. 
            We aim to serve food aficionados with discerning taste, making the meal delicious and unforgettable!
			</p>
         </div>
    </div>

    <!--tag menus-->
        <div class="tag-menu tm1 l1 on">ABOUT SAVOR</div>
        <div class="tag-menu tm2 l2">PAYMENT & <br/>DELIVERY</div>      
        <div class="tag-menu tm3 l1">CONTACT US</div>
        <div class="tag-menu tm4 l1">SAVOR FLAVOURS</div>
    <!--tag menu end-->
    
    <!--tel-->
    <div class="main-tel">
        <a href="#"><img src="image/tel.png" /></a>
    </div>
</div>

</div>

<script>
$(function(){
standardCircleMenu('.menulist');
circleMenu('.containter');	
});
</script>
</div>

</body>
</html>
