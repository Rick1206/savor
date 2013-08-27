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
<title>Luncheon menu</title>
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
    <h1 class="comm-title ib">MY SAVOR</h1>
    <div class="menulist" style="width:1000px; margin-left:-500px;">
      <div class="containter _list">
        <div class="comm-div" id="menu-list">
          <h1 class="comm-title innertitle">My Shopping Cart</h1>
          <ul class="cater-list farial">
            <li style="display:block;">
            <form action="#s" id="pay_pal">
              <table cellpadding="0" cellspacing="0" class="form-contact myformtable confirm_mycart"
                                   id="myform-table">
                <tr>
                  <th colspan="2" class="c-bold">Order submitted successfully</th>
                </tr>
                <tr>
                  <th width="80">Code:</th>
                  <td id="order_number">SA00<?php echo $_SESSION['order_id']; ?></td>
                </tr>
                <tr>
                  <th>Name:</th>
                  <td id="order_name"><?php echo $thisB['first_name']." ".$thisB['last_name']; ?></td>
                </tr>
                <tr>
                  <th>Phone:</th>
                  <td id="order_phone"><?php echo $thisB['phone']; ?></td>
                </tr>
                <tr>
                <tr>
                  <th>Email:</th>
                  <td id="order_email"><?php echo $thisB['email']; ?></td>
                </tr>
                <tr>
                  <th>Address:</th>
                  <td><input type="text" class="" id="sendaddress" reg="empty" value="<?php echo $thisB['address']; ?>" style="color:#000000;" /></td>
                </tr>
                <tr>
                  <th>Send Date:</th>
                  <td><input type="text" class="" id="senddate" reg="empty" style="color:#000000;" readonly /></td>
                </tr>
                <tr>
                  <th>Total:</th>
                  <td>HK$ <?php echo $total; ?></td>
                </tr>
                <tr>
                  <th>Remark:</th>
                  <td><textarea id="remark" style="height:30px;color:#000000;"></textarea></td>
                </tr>
              </table>
              </form>
            </li>
          </ul>
          <table cellpadding="0" cellspacing="0" class="menu-form mycart-total mycart-confirm">
            <tr>
              <td>
              	 <ul class="raio-box pay-way" comment="J_pay_way">
                 	 <li rel="0">Paypal</li>
                     <li rel="1" class="on-select">Pay through other channel</li>
                 </ul>
                 <input type="hidden" value="0" id="J_pay_way" />
              </td>
            </tr>
          </table>
          
          <a href="javascript:;" class="comm-btn-l J_pay">Confirm</a> </div>
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
				$('.J_pay').unbind('click').click(function(){
					
					var $signRegList = $("#pay_pal input[reg]");
					var _re = regForm($signRegList);
					if(_re!="Ok")
					{
						$signRegList.eq(_re).addClass('error');
						return;
					}else{
						
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
									$('#pay_pal').submit();
								}
								else
								{
									
									$.ajax({type:'POST',url:'ajax_email.php',data:{type:2,name:$('#order_name').text(),tel:$('#order_phone').text(),email:$('#order_email').text(),message:$('#remark').val()},success: function(e){
										if(e=="Ok")
										{											
											menuAjax('mycart_paypalconditions.php',null);		
										}
										else
										{
											$('.J_pay').click(function(){
												doPaypal();
											});		
										}
									}});
									
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
	
					
					
				});
						
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