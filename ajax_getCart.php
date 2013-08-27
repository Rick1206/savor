<?php 
define('IN_SK',true);
require ('./includes/init.php');

$uid = $_COOKIE['SESSION'];

$where = " WHERE user_session_id = '".$uid."'"." ORDER BY product_type ";
$myquery = $db->query("SELECT * FROM ".$ros->table('carts').$where);
$allMoney = 0;

while($thisB = $db->fetch_array($myquery)) {
	if($thisB["product_type"] == "menu"){
		$subquery = $db->query("SELECT * FROM ".$ros->table('products')." where product_id ='".$thisB['product_id']."'");
		if($subthisB = $db->fetch_array($subquery)) {
			$subMoney = $thisB['quantity']* $subthisB['price'];
		?>
		<li>
    		<em><?php  echo $subthisB['name_'.$lang]; ?></em>
    		<span>價錢 : 港幣$ <?php echo $subthisB['price']; ?></span>
    		<strong>數量 : <?php echo  $thisB['quantity']; ?></strong>
   			<a class="close" rel="<?php echo $subMoney ?>" pt="<?php echo $thisB["product_type"]; ?>" pi="<?php echo $thisB['product_id'];?>"></a>
		</li>
		<?php
		}
	}else{
		$subquery = $db->query("SELECT * FROM ".$ros->table('occasions')." where occasion_id ='".$thisB['product_id']."'");
		if($subthisB = $db->fetch_array($subquery)) {
			$subMoney = $thisB['quantity']* $subthisB['price'];
		?>	
		<li>
    		<em><?php  echo $subthisB['name_'.$lang]; ?></em>
    		<span>價錢 : 港幣$ <?php echo $subthisB['price']; ?></span>
    		<strong>數量 : <?php echo  $thisB['quantity']; ?></strong>
   			<a class="close" rel="<?php echo $subMoney ?>"  pt="<?php echo $thisB["product_type"]; ?>" pi="<?php echo $thisB['product_id'];?>"></a>
		</li>
		<?php
		}
	}
	$allMoney += $subMoney;	
?>
<?php
}
?>
<li class="total"><span class="fl">總額 : 港幣$ <span class="J_total_price"><?php echo $allMoney;?></span></span><a class="comm-btn-l-normal checkout J_check_out" href="mycart.php">提交訂單</a></li>