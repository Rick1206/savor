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
                  <th colspan="2" class="c-bold lh15">謝謝!<br/>
您的訂單已被放置！</th>
                </tr>
                
                <tr>
                  <th colspan="2" class="fb">訂單號: SA00<?php echo $_SESSION['order_id']; ?></th>
                </tr>
                
                <tr>
                  <td colspan="2">
                  <ul class="icon-list clearfix">
                  <li>您的訂單已被放置成功。請打印此消息，
記錄訂單。</li>
                        <li>確認號碼。這個數字可以被用來確認您的訂單
被安置。</li> <li>您還可以通過電子郵件發送的確認消息，其中包含重要信息，對您的訂單。</li>
                  </td>
                </tr>
                
                <tr>
                  <td colspan="2"><!-- <a href="user_order.php" class="fl mr8"><img src="image/view_my_order.png" /></a> --><a href="index.php" class="fl"><img src="image/back-to-savor.png" /></a></td>
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
