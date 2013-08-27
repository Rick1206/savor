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
	$sid = "2";
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
	<script language="javascript" src="js/jcarousellite1.2.js"></script>
   <link rel="stylesheet" href="css/jquery.jscrollpane.css" type="text/css"/>
</head>

<body class="jh ">
<?php
	$nav = 2;
	include 'header.php';
	include 'footer.php';
?>


<div class="J_main jw jh">

    <div class="banner jh jw">
        <img src="image/luncheonmenu/background.jpg" alt=""/>
    </div>

    <!--main-->
    <div class="luncheonmenu noshake" id="J_lunmenu_content">
        <h1 class="comm-title ib">到會菜單</h1>

        <div class="luncheonmenu-box _list">
            <ul>
            	<?php
            	$num = 1;
            	$where = "";
				$param = "category_id,photo,name_".$lang." as name";
				$myquery = $db->query("SELECT ".$param." FROM ".$ros->table('products_categories').$where." ORDER BY orderby");
            	while($thisB = $db->fetch_array($myquery)) {
            	?>
            		<li rel="<?php echo $thisB['category_id']; ?>">
                    <img src="<?php echo $file_dir."/product_category/".$thisB['photo']; ?>"/>
                    <h2><?php echo $thisB['name']; ?></h2>
            		</li>
            	<?php
            	$num++;
				}
            	?>
            </ul>
        </div>
        <div class="menulist dn" style="width:1000px; margin-left:-500px;">
            <div class="item l1" id="_item_return">All Category</div>
            <div class="containter _list">
                 <!--调用 ajax_luncheonmenu_detail.php 数据-->
            </div>
        </div>
    </div>
    <input type="hidden" value="0" id="typeid" />
    <input type="hidden" value="<?php echo $proId;?>" id="redirect" />
    <script>
        $(function () {
        	
        	if($('#redirect').val()!=""){
				 function _lun_callback_t() {
                    // menuAjax('luncheonmenu.php');
                 }
				 commonAjax('ajax_luncheonmenu_detail.php', {id:$('#redirect').val()}, '.J_main', _lun_callback_t,null);
				 return;
			}
        	
            var $lun_box = $('.luncheonmenu-box'), $lun_d_con = $('.menulist'), $lun_detail = $lun_d_con.find('#menu-list'), $lun_pay = $lun_d_con.find('.containter#mycart');
            $lun_box.find('li').bind('click', function () {
                var _data = $(this).attr('rel');
                commonAjax('ajax_luncheonmenu_detail.php', {id:_data}, '.J_main', _lun_callback, _lun_error);
                function _lun_callback() {
                    // menuAjax('luncheonmenu.php');
                }
				
				function _lun_error(){
					alert('Error!');	
				}
				
            });
			
        });
    </script>
</div>
</body>
</html>
