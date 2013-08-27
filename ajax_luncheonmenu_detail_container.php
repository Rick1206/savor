<?php
define('IN_SK',true);
require ('./includes/init.php');

	$id = $_POST['id'];
    $where = ' WHERE type_id = '.$id;
	
	$param = "category_id,photo,name_".$lang." as name";
	
    $mycatequery = $db->query("SELECT ".$param." FROM ".$ros->table('products_categories')."WHERE category_id = '".$id."' ORDER BY orderby");
    $mycatequeryB = $db->fetch_array($mycatequery);
	            
?>
<div class="lt-img"><img src="<?php echo $file_dir."/product_category/".$mycatequeryB['photo']; ?>" /></div>
                <div class="lt-title"><?php echo $mycatequeryB["name"]?></div>
                <div class="rt-img"><img src="image/len_menu_rt_all.png" /></div>
                <table cellpadding="0" cellspacing="0" class="menu-form lun-container">
                <tr>
                  <th width="325">食物</th>
                  <th width="85">價格(港幣$)</th>
                  <th>数量</th>
                </tr>
                <tr>
                	<td colspan="3" height="10"></td>
                </tr>
              </table>
              <div class="J_panel" style="width:530px;height:255px;">
       
              <table cellpadding="0" cellspacing="0" class="menu-form lun-container">
                <tr>
                  <th width="325"></th>
                  <th width="85"></th>
                  <th></th>
                </tr>
                <?php  
                $param = "product_id,price,name_".$lang." as name";
				
                $myquery = $db->query("SELECT ".$param." FROM ".$ros->table('products').$where." ORDER BY orderby");     
                while($thisB = $db->fetch_array($myquery)) {
                ?>
                <tr>
                  <td><?php echo $thisB['name']; ?></td>
                  <td><?php echo $thisB['price'] ?></td>
                  <td><input tid="0" rel="<?php echo $thisB['product_id']; ?>" price="<?php echo $thisB['price'] ?>" name="<?php echo $thisB['name']; ?>" class="inputbox-style" />
                    <a href="javascript:;" class="conbtn add"></a><a href="javascript:;" class="conbtn cut"></a></td>
                </tr>
                <?php          
                }
                ?>
              </table>
              </div>
              <a href="javascript:;" class="comm-btn-l-normal J_addtocart">現在訂購</a>
              <?php
   				$nid = (int)$id+1;
   				$where = " WHERE category_id ='".$nid."'";
              	$pageQuery = $db->query("SELECT * FROM ".$ros->table('products_categories').$where." ORDER BY orderby");
				if($next=$db->fetch_array($pageQuery)){
					$nextStr = $next["category_id"];
				}else{
					$nextStr = "-1";
				}
				?>
				<input type="hidden" id="next_id" value="<?php echo $nextStr; ?>" />
				<?php
				$pid = (int)$id-1;
   				$where = " WHERE category_id ='".$pid."-1'";
              	$pageQuery = $db->query("SELECT * FROM ".$ros->table('products_categories').$where." ORDER BY orderby");
				if($back=$db->fetch_array($pageQuery)){
					$backStr = $back["category_id"];
				}else{
					$backStr = "-1";
				}
				?>
				<input type="hidden" id="prev_id" value="<?php echo $backStr; ?>" />
<script>
$(function(){
	
			bindCartButtons(_callback_lunmenu,null,null);
			function _callback_lunmenu(){
				menuAjax('luncheonmenu.php');	
			}
			
			$('.rt-img').click(function(){
				menuAjax('luncheonmenu.php');	
			});	
});
</script>