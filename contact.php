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
<script language="javascript" src="js/form_reg.js"></script>
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
<div class="containter fis">
	<div class="tag-content">
        <img src="image/area_contact.png" class="ma contact-nav-img" />
        <div class="contact-about">
        <div class="comm-div"><br/><br/>

我們認為享受飲食並不意味著食物的多寡，它可以是"有品味地帶出芬芳馥郁的感覺"，我們致力於為每位客人提供最好的食物，提供專業的服務令顧客賓至如歸，留下一段段美好的回憶，由經驗豐富的經理統籌下，非常有效率的運輸團隊和酒店星級名廚主理特別設計的菜式會令你眼前一亮。

		</div>
        </div>  
    </div>  
    
    <div class="tag-content dn">
    	 <img src="image/area_contact_form.png" class="ma" />
         
         <div class="comm-div">
         	<h1 class="comm-title">付款方式</h1>    
            <p><br/>直接存入匯豐帳戶#561-807306-838，或者您也可以用信用卡網上支付後，選擇從購物車中的物品。
            </p>
         </div>
         
    </div>
    
     
    <div class="tag-content dn">
    	 <img src="image/area_contact_form.png" class="ma" />
         
         <div class="comm-div">
         	<h1 class="comm-title">聯絡我們</h1>    
            <p class="bb">
            	熱線：2330 3330<br/>
                             傳真：3011 3098<br/>
                             電子郵件：services@savor.com.hk
            </p>
            
            <table cellpadding="0" cellspacing="0" class="form-contact" id="contact-email">
            	
            	<tr><th>姓名：</th><td><input type="text" class="input-sytle-1" id="name" reg="empty" /></td></tr>
                </tr><th>電話：</th><td><input type="text" class="input-sytle-1" id="tel" reg="empty" /></td></tr>
                </tr><th>傳真：</th><td><input type="text" class="input-sytle-1" id="fax" reg="empty" /></td></tr>
               </tr> <th>電子郵件：</th><td><input type="text" class="input-sytle-1" id="email" reg="email" /></td></tr>
                </tr><th>信息：</th><td><input type="text" class="input-sytle-1" id="message" reg="empty" /></td></tr>
                </tr><th>&nbsp;</th><td class="gbt"><a href="javascript:;" class="comm-btn J_sent">發送</a><a href="javascript:;" class="comm-btn">重設</a></td></tr>                
            </table>
                 
         </div>
         
    </div>
    
    
    
    <div class="tag-content dn">
    	 <img src="image/area_contact_form.png" class="ma" />
         
         <div class="comm-div">
         	<h1 class="comm-title">特式風味</h1>    
            <p>
            <br/>特意為閣下度身訂做菜單，理念與設計上都非常創新。我們的目標是為有特別要求的客人，提供特定口味的菜單，務求精益求精更上一層樓。

			</p>
         </div>
         
    </div>
    
    
    
    
    <!--tag menus-->
        <div class="tag-menu tm1 l1 on">Savor</div>
        <div class="tag-menu tm2 l1">付款方式</div>      
        <div class="tag-menu tm3 l1">聯絡我們</div>
        <div class="tag-menu tm4 l1">特式風味</div>
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



$('.J_sent').click(function(){
                doSent();
            });
			
			function doSent()
			{
					var $signRegList = $("#contact-email input[reg]");
					var _re = regForm($signRegList);
					if(_re!="ok"){
						
						$signRegList.each(function(index){
							if(_re==index){
								$(this).addClass('error');
							}else{
								$(this).removeClass('error');
							}
  						});
  						
						return;
					}else{
						$signRegList.each(function(){
							$(this).removeClass('error');
						});
					}
					
					var name = $("#name").val(),tel = $('#tel').val(),fax = $('#fax').val(),email = $('#email').val(),message = $('#message').val();
	
					$('.J_sent').unbind('click');
					
					$.ajax({type:'POST',url:'ajax_email.php',data:{
							name:name,tel:tel,fax:fax,email:email,message:message,type:"0"},success:function(e){
							if(e=='Ok'){
								alert('Successfully!');
								$signRegList.val('');
								
								$('.J_sent').click(function(){
									doSent();
								});	
							}else{
								$('.J_sent').click(function(){
									doSent();
								});	
							}
						},error:function(){
							$('.J_sent').click(function(){
								doSent();
							});
						}});
				//});			
			}
});
</script>
</div>

</body>
</html>
