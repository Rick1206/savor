<?php
define('IN_SK',true);
include './includes/init.php';
?>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>購物籃</title>
<link rel="stylesheet" href="css/base.css" type="text/css"/>
<link rel="stylesheet" href="css/common.css" type="text/css"/>
<script language="javascript" src="js/jquery-1.7.js"></script>
<script language="javascript" src="js/time_en.js"></script>
<script language="javascript" src="js/common.js"></script>
</head>

<body class="jh ">
<?php
	include 'header.php';
	include 'footer.php';
?>
<div class="J_main jw jh">
  <div class="banner jh jw"> <img src="image/luncheonmenu/background.jpg" alt=""/> </div>
  
  <!--main-->
  <div class="luncheonmenu" id="J_lunmenu_content">
    <div class="menulist noshake" style="width:1000px; margin-left:-500px;">
      <div class="containter _list">
        <div class="comm-div" id="menu-list">
          <h1 class="comm-title innertitle">購物籃</h1>
          <ul class="cater-list farial">
            <li style="display:block;">
              <table cellpadding="0" cellspacing="0" class="form-contact myformtable confirm_mycart"
                                   id="myform-table">
                <tr>
                  <th colspan="2" class="c-bold">PayPal 條件</th>
                </tr>
                <tr>
                  <td colspan="2">
                  <ul class="icon-list clearfix">
                  <li>
                  		如果您選擇PayPal作為您的付款方式，您將繼續通過標準的檢驗過程，然後自動進行paypal.com完成付款。</li>
                        <li>
一旦你已經被重定向到paypal.com，你將有25分鐘，完成付款之前，您的訂單將被丟棄。</li>
<li>
如果，PayPal是用於支付，所有退貨產品必須通過郵件發送，而不是實體店。                  </li>
                  </td>
                </tr>
                
                <tr>
                  <td colspan="2"> <a href="index.php"><img src="image/back-to-savor.png" /></a></td>
                </tr>
              </table>
            </li>
          </ul>
          
      </div>
    </div>
  </div>
  <input type="hidden" id="mycart" value="mycart" />
  <script>
        $(function () {
			
        });
    </script> 
</div>
</body>
</html>
