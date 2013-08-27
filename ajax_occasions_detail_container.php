<?php
define('IN_SK', true);
require ('./includes/init.php');

$id = $_POST['id'];

$where = " WHERE category_id ='" . $id . "'";

$param = "name_" . $lang . " as name, description_" . $lang . " as description, photo";

$myquery = $db -> query("SELECT " . $param . " FROM " . $ros -> table('occasions_categories') . $where . " ORDER BY orderby");

$thisB = $db -> fetch_array($myquery);
 ?>

	<div class="lt-img"><img src="<?php echo $file_dir . "/occasion_category/s_" . $thisB['photo']; ?>" /></div>
                <div class="lt-title"><?php echo $thisB["name"]; ?></div>
                <div class="rt-img"><img src="image/len_menu_rt_all_occasion.png" /></div>
                <table cellpadding="0" cellspacing="0" class="menu-form lun-container">
                <tr>
                	<td colspan="3">
                    <div class="occasion_new_detail_title">
						<?php echo cut_str($thisB['description'], 150); ?>
					</div>
                    </td>
                </tr>
              </table>
             
              <div class="occ-tag clearfix">
              <?php
              $where =" WHERE type_id='".$id."'";
			  
			  $param = "occasion_id, name_".$lang." as name, description_".$lang." as description, price";
			   
              $subquery = $db->query("SELECT ".$param." FROM ".$ros->table('occasions').$where." ORDER BY orderby");
			  $num = 0;
              while ($subThisB = $db->fetch_array($subquery)) {
              ?>
              	<a <?php echo ($num==0) ? "class='on-select'" : ""?> rel="<?php echo $subThisB['occasion_id']; ?>">
              	<?php echo $subThisB['name']; ?></a>
              <?php
			$num++;
			}
              ?>
              </div>
              
              <?php
              
              $param = "occasion_id, name_".$lang." as name, description_".$lang." as description, price";
			  
              $subquery = $db->query("SELECT ".$param." FROM ".$ros->table('occasions').$where." ORDER BY orderby");
			  $num = 0;
              while ($subThisB = $db->fetch_array($subquery)) {
              ?>
              <div class="mlist" rel="<?php echo $subThisB['occasion_id']; ?>" style="visibility:<?php echo ($num==0) ? "visible" : "hidden"?>;">
              <div class="J_panel_315">
              	<?php echo $subThisB['description']; ?>   
              </div>
              
              <table cellpadding="0" cellspacing="0" class="menu-form lun-container retoocc">
               <tr>
                  <th width="325">每位價格(港幣$)</th>
                  <th>數量</th>
                </tr>
                	<tr>
                  <td><?php echo $subThisB['price']; ?></td>
                  <td><input tid="1" class="inputbox-style" name="" price="<?php echo $subThisB['price']; ?>" rel="<?php echo $subThisB['occasion_id']; ?>">
                    <a class="conbtn add" href="javascript:;"></a><a class="conbtn cut" href="javascript:;"></a></td>
                </tr>
              </table>
              <a href="javascript:;" class="comm-btn-l-normal J_addtocart retooccbt">現在訂購</a>
              </div>
   				<?php
				$num++;
				}
   				?>
   				<?php
				$nid = (int)$id + 1;
				$where = " WHERE category_id ='" . $nid . "'";
				$pageQuery = $db -> query("SELECT * FROM " . $ros -> table('occasions_categories') . $where . " ORDER BY orderby");
				if ($next = $db -> fetch_array($pageQuery)) {
					$nextStr = $next["category_id"];
				} else {
					$nextStr = "-1";
				}
				?>
				<input type="hidden" id="next_id" value="<?php echo $nextStr; ?>" />
				<?php
				$pid = (int)$id - 1;
				$where = " WHERE category_id ='" . $pid . "-1'";
				$pageQuery = $db -> query("SELECT * FROM " . $ros -> table('occasions_categories') . $where . " ORDER BY orderby");
				if ($back = $db -> fetch_array($pageQuery)) {
					$backStr = $back["category_id"];
				} else {
					$backStr = "-1";
				}
				?>
				<input type="hidden" id="prev_id" value="<?php echo $backStr; ?>" />

<script>
	$(function() {
		bindCartButtons(_callback_lunmenu, null, null);
		function _callback_lunmenu() {
			menuAjax('occasions.php');
		}


		$('.rt-img').click(function() {
			menuAjax('occasions.php');
		});

		$('.occ-tag').each(function(index, element) {
			var $this = $(this);
			$this.find('a').click(function() {
				var _rel = $(this).attr('rel');
				$(this).addClass('on-select').siblings().removeClass('on-select');
				$this.parent().find(".mlist[rel='" + _rel + "']").css({
					'visibility' : 'visible'
				}).slideDown(0).siblings('.mlist').slideUp(0);
			});
		});
	}); 
</script>