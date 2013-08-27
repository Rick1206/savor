<li style="display:block;">
    <table cellpadding="0" cellspacing="0" class="menu-form mycart-form">            	
        <tr><th width="200">貨品名稱</th><th width="60">價錢</th><th>數量</th><th>合計</th><th width="10"></th></tr>
<?php 

define('IN_SK',true);
require ('./includes/init.php');

$uid = $_COOKIE['SESSION'];

$where = " WHERE user_session_id = '".$uid."'"." ORDER BY product_type ";
$myquery = $db->query("SELECT * FROM ".$ros->table('carts').$where);

while($thisB = $db->fetch_array($myquery)) {
	if($thisB["product_type"] == "menu"){
		
		$subquery = $db->query("SELECT * FROM ".$ros->table('products')." where product_id ='".$thisB['product_id']."'");
		
		if($subthisB = $db->fetch_array($subquery)) {
				
			$subMoney = $thisB['quantity']* $subthisB['price'];
?>

  <tr>
            <td><?php  echo $subthisB['name_'.$lang]; ?></td><td><?php echo $subthisB['price']; ?></td><td>
            	<input rel="<?php echo $thisB['product_id'];?>" price="<?php echo $subthisB['price']; ?>" name="" class="inputbox-style" value="<?php echo  $thisB['quantity']; ?>" readonly="readonly" />
            	<a href="javascript:;" class="conbtn add"></a><a href="javascript:;" class="conbtn cut"></a></td><td>港幣$ <?php echo $subMoney;?></td>
            <td><a rel="<?php echo $subMoney;?>" class="common-close" pt="<?php echo $thisB["product_type"]; ?>" pi="<?php echo $thisB['product_id'];?>"></a></td>
        </tr> 

<?php
		}
	}else{
		$subquery = $db->query("SELECT * FROM ".$ros->table('occasions')." where occasion_id ='".$thisB['product_id']."'");
		if($subthisB = $db->fetch_array($subquery)) {
			$subMoney = $thisB['quantity']* $subthisB['price'];
		?>	

        <tr>
            <td><?php  echo $subthisB['name_'.$lang]; ?></td>
            <td><?php echo $subthisB['price']; ?></td>
            <td><input rel="<?php echo $thisB['product_id'];?>" price="<?php echo $subthisB['price']; ?>" name="" class="inputbox-style" value="<?php echo  $thisB['quantity']; ?>"  readonly="readonly"/><a href="javascript:;" class="conbtn add"></a><a href="javascript:;" class="conbtn cut"></a></td>
            <td>港幣$ <?php echo $subMoney;?></td><td><a rel="<?php echo $subMoney;?>" class="common-close" pt="<?php echo $thisB["product_type"]; ?>" pi="<?php echo $thisB['product_id'];?>"></a></td>
        </tr> 
        
	<?php
		}
	}
?>

<?php
}
?>        
        
        
        
        
        
        
        
        
         
    </table>
</li>
<input type="hidden" id="J_other_price" value="0" />