<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Promotions</title>
<link rel="stylesheet" href="css/base.css" type="text/css" />
<link rel="stylesheet" href="css/common.css" type="text/css" />
<script language="javascript" src="js/jquery-1.7.js"></script>
</head>

<body class="jh">
<?php
	include 'header.php';
	include 'footer.php';
?>

<div class="banner jh body-bg-news">

</div>

<!--main-->



<div class="menulist" style="width:1000px; margin-left:-500px;">


<div class="item l2 dn">Promotion:<br/>Lunch Promotio</div>
<div class="containter">
    <div class="tag-content">
    	 <img src="image/news/b1.png" class="ma" />         
         <div class="comm-div diy-con">
         	<h1 class="comm-title innertitle">NEWS</h1>
            <ul class="cater-list farial">
            	<li style="display:block;">
                <table cellpadding="0" cellspacing="0" class="news-table">  
                	<tr>
                    	<th width="80"></th><th></th>
                    </tr>          	
                    <tr>
                    	<td>30 Dec 2012</td><td><a href="javascript:;" rel="0">Chef Chris Cosentino pushes boundaries of Italian cuisine</a></td>
                    </tr>  
                    <tr>
                    	<td>30 Dec 2012</td><td><a href="javascript:;" rel="0">Chef Chris Cosentino pushes boundaries of Italian cuisine</a></td>
                    </tr>          
                </table>
                </li>
            </ul>
           	
           
            <div class="arrange-box">
            	<a class="arrange up"></a>
                <div class="page">1/2</div>
                <a class="arrange down"></a>
            </div> 
         </div>
         
    </div>  
    
    <div class="tag-content dn" id="J_news_detail">
    	 <img src="image/news/b1.png" class="ma" />         
         <div class="comm-div diy-con">
         	<h1 class="comm-title innertitle">NEWS</h1>
            <ul class="cater-list farial">
            	<li style="display:block;">
               
                </li>
            </ul>
         </div>
         <a href="javascript:;" id="J_n_close" class="btn-close"></a>
    </div> 
     
    
    <!--tag menus-->
        <div class="tag-menu tm1 l1 on _newslink">NEWS</a></div>
        <div class="tag-menu tm2 l2 _gallerylink"><a href="events.html">PHOTO<br/>GALLERY</a></div>      
    <!--tag menu end-->
</div>


</div>

<script language="javascript" src="js/common.js"></script>
<script>
$(function(){
	$('._gallerylink').unbind('click').click(function(){
		location.href = 'gallery.html';	
	});
});	
</script>
</body>
</html>
