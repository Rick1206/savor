<?php
define('IN_SK',true);

include './includes/init.php';
include './includes/calculate.php';

$userId = $_SESSION['user_id']; 
$orderId = $_SESSION['order_id'];
//$total = $_POST['total'];
$where = " WHERE id = '".$orderId."'";
$orderquery = $db->query("SELECT * FROM ".$ros->table('orders').$where);
$thisB = $db->fetch_array($orderquery);
$total = $thisB["total"];
$where = " WHERE id = '".$userId."'";
$myquery = $db->query("SELECT * FROM ".$ros->table('customers').$where);

if($thisB = $db->fetch_array($myquery)) {
	
?>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>購物籃</title>
<link rel="stylesheet" href="css/base.css" type="text/css"/>
<link rel="stylesheet" href="css/common.css" type="text/css"/>
<link type="text/css" rel="stylesheet" href="css/ui-lightness/jquery-ui-1.8.20.custom.css" />
<script language="javascript" src="js/jquery-1.7.js"></script>
<script language="javascript" src="js/common.js"></script>
</head>

<body class="jh">
<?php
	include 'header.php';
	include 'footer.php';
?>
<div class="J_main jw jh">
  <div class="banner jh jw"> <img src="image/luncheonmenu/background.jpg" alt=""/> </div>
  
  <!--main-->
  <div class="luncheonmenu" id="J_lunmenu_content">
    <h1 class="comm-title ib">用戶中心</h1>
    <div class="menulist noshake" style="width:1000px; margin-left:-500px;">
      <div class="containter _list">
        <div class="comm-div" id="menu-list">
          <h1 class="comm-title innertitle">購物籃</h1>
          <ul class="cater-list farial">
            <li style="display:block;">
            <form action="#s" id="pay_pal">
              <table cellpadding="0" cellspacing="0" class="form-contact myformtable confirm_mycart"
                                   id="myform-table">
                <tr>
                  <th colspan="2" class="c-bold">訂單提交成功！</th>
                </tr>
                <tr>
                  <th width="80">編號:</th>
                  <td>SA00<?php echo $_SESSION['order_id']; ?></td>
                </tr>
                <tr>
                  <th>客戶姓名:</th>
                  <td><?php echo $thisB['first_name']." ".$thisB['last_name']; ?></td>
                </tr>
                <tr>
                  <th>手提電話/傳呼機:</th>
                  <td><?php echo $thisB['phone']; ?></td>
                </tr>
                <tr>
                <tr>
                  <th>電郵地址:</th>
                  <td><?php echo $thisB['email']; ?></td>
                </tr>
                <tr>
                  <th>住宅地址:</th>
                  <td><input type="text" class="" id="sendaddress" reg="empty" value="<?php echo $thisB['address']; ?>" style="color:#000000;" /></td>
                </tr>
                <tr>
                  <th>送餐日期:</th>
                  <td><input type="text" class="" id="senddate" style="color:#000000;"/></td>
                </tr>
                <tr>
                  <th>總額:</th>
                  <td>港幣$ <?php echo $total; ?></td>
                </tr>
                <tr>
                  <th>備註:</th>
                  <td><textarea id="remark" style="height:30px;color:#000000;"></textarea></td>
                </tr>
              </table>
              </form>
            </li>
          </ul>
          <table cellpadding="0" cellspacing="0" class="menu-form mycart-total mycart-confirm" style="top:360px;">
            <tr>
              <td>
              	 <ul class="raio-box pay-way" comment="J_pay_way">
                 	 <li rel="0">Paypal</li>
                     <li rel="1" class="on-select">其它方式支付</li>
                 </ul>
                 <input type="hidden" value="0" id="J_pay_way" />
              </td>
            </tr>
          </table>          
          <a href="javascript:;" class="comm-btn-l J_pay">確認</a> </div>
      </div>
    </div>
  </div>
  <input type="hidden" id="mycart" value="mycart" />
  
<script language="javascript" src="js/jquery-ui-1.8.20.custom.min.js" type="text/javascript" ></script>
  <script>
        $(function () {
        	 $('#senddate').datepicker();
        	 $("#senddate").datepicker( "option", "dateFormat", "yy-mm-dd");
        	  
			var _d = new Date();
			$('#senddata').val(_d.getFullYear()+'-'+(parseInt(_d.getMonth())+1)+'-'+_d.getDate());
			radioButton('.raio-box','li');
			
			$('.J_pay').click(function(){
                doPaypal();
            });
			
			function doPaypal()
			{
				//$('.J_pay').click(function(){
					var $signRegList = $("#pay_pal input[reg]");
					var _re = regForm($signRegList);
					if(_re!="Ok")
					{
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
				
					var senddate = $('#senddate').val(),address = $('#sendaddress').val(),remark = $('#remark').val();
	
					$('.J_pay').unbind('click');
					
					$.ajax({type:'POST',url:'ajax_updatetoorder.php',data:{
							senddate:senddate,address:address,remark:remark},success:function(e){
							if(e=='Ok')
							{
								var _type = $('#J_pay_way').val();
								if(_type=='0')
								{
									//$('#pay_pal').submit();
									menuAjax('mycart_placed.php',null);	
								}
								else
								{
									menuAjax('mycart_paypalconditions.php',null);	
								}	
							}
							else
							{
								$('.J_pay').click(function(){
									doPaypal();
								});	
							}
					
						},error:function(){
							$('.J_pay').click(function(){
								doPaypal();
							});
						}});
				//});					
			}
	});
</script> 
</div>
</body>
</html>
<?php 
}else{
	$url = "/index.php";
	header("Location: $url");
	exit();
}
?>