<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>event</title>
<link rel="stylesheet" href="css/base.css" type="text/css" />
<link rel="stylesheet" href="css/common.css" type="text/css" />
<script language="javascript" src="js/jquery-1.7.js"></script>
</head>

<body class="jh">
<?php
	include 'header.php';
	include 'footer.php';
?>

<div class="J_main jh jw">

<div class="banner jh jw">
<img src="image/event-gallery/background.png" alt="" />
</div>

<!--main-->



<div class="menulist events" style="width:1000px; margin-left:-500px;">


<div class="item dn"><img src="image/event-gallery/01.png" /></div>
<div class="containter">
    <img src="image/event-gallery/01_b.png" />
    <h2>Mixed fruit and potato salad 3lbs</h2>
    
    <!--tag menus-->
        <div class="tag-menu tm1 l1 _newslink">NEWS</div>
        <div class="tag-menu tm2 l2 on _gallerylink">PHOTO<br/>GALLERY</div>      
    <!--tag menu end-->
    
</div>

<div class="item"><img src="image/event-gallery/01.png" /></div>
<div class="containter dn">
    <img src="image/event-gallery/01_b.png" />
    <h2>Mixed fruit and potato salad 3lbs</h2>
    
    <!--tag menus-->
        <div class="tag-menu tm1 l1 _newslink">NEWS</div>
        <div class="tag-menu tm2 l2 on _gallerylink">PHOTO<br/>GALLERY</div>      
    <!--tag menu end-->
</div>

<div class="item"><img src="image/event-gallery/01.png" /></div>
<div class="containter dn">
    <img src="image/event-gallery/01_b.png" />
    <h2>Mixed fruit and potato salad 3lbs</h2>
    
    <!--tag menus-->
        <div class="tag-menu tm1 l1 _newslink">NEWS</div>
        <div class="tag-menu tm2 l2 on _gallerylink">PHOTO<br/>GALLERY</div>      
    <!--tag menu end-->
</div>



</div>

<script>
$(function(){
	$('._newslink').unbind('click').click(function(){
		location.href = 'news.html';	
	});
	$('._gallerylink').unbind('click').click(function(){
		location.href = 'events.html';	
	});
});	
</script>
</div>
<script language="javascript" src="js/common.js"></script>
</body>
</html>
