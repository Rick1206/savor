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
  <div class="banner jh jw"> <img src="image/banner/shopingcart.jpg" alt=""/> </div>
  
  <!--main-->
  <div class="luncheonmenu" id="J_lunmenu_content">
    <div class="menulist noshake" style="width:1000px; margin-left:-500px;">
      <div class="containter _list">
        <div class="comm-div" id="menu-list">
          <h1 class="comm-title innertitle">購物籃</h1>
          <ul class="cater-list farial">
            <!--调用 ajax_getCartTable.php 数据-->
          </ul>
          <table cellpadding="0" cellspacing="0" class="menu-form mycart-total">
            <tr>
              <td width="229"></td>
              <td width="60"></td>
              <td>總額:</td>
              <td>港幣$ <span id="J_cart_now_total">0</span></td>
            </tr>
          </table>
          <div class="arrange-box"> <a class="arrange up"></a>
            <div class="page">1/2</div>
            <a class="arrange down"></a> </div>
          <a href="javascript:;" class="comm-btn-l J_addtocart">確認無誤</a>
          
          </div>
      </div>
    </div>
  </div>
  <input type="hidden" id="mycart" value="mycart" />
  <input type="hidden" id="___my___ca" value="<?php echo isset($_SESSION['userName']) ? $_SESSION['userName']:""; ?>" />
  <script>
        $(function () {
            var $lun_box = $('.luncheonmenu-box'), $lun_d_con = $('.menulist'), $lun_detail = $lun_d_con.find('#menu-list'), $lun_pay = $lun_d_con.find('.containter#mycart');
			commonAjax('ajax_getCartTable.php', {}, '.cater-list', _lun_callback, null);
			function _lun_callback() {
				
				var $close = $('.cater-list').find('.common-close'),$total = $('#J_cart_now_total');
				$close.click(function(){
					var $this = $(this),pt = $this.attr('pt'),pi=$this.attr('pi'), _val = parseFloat($this.attr('rel'))*parseInt($this.parents('tr').find("input.inputbox-style").val()),$par=$this.parents('tr'),_total = parseFloat($total.text());
					delCartItem(pt,pi,_del_callback);
					function _del_callback()
					{
						$par.slideUp(300,function(){
							$par.remove();
							$total.text((_total-_val).toFixed(2));
							//更新数量
							showCartNums();
						});
					}
				});
				pager('.arrange-box');
				bindCartButtons(_cart_callback,$('#J_cart_now_total'),'ajax_updatetocart.php');
                returnFormPrice($('#J_cart_now_total'))
                
				function _cart_callback(){
					var _se = $('#___my___ca').val();					
					if(_se!='')
					{
						$.ajax({type:'POST',url:"ajax_addtoorder.php",success: function(){
							$.ajax({type:'POST',url:"ajax_clearcart.php",success: function(){
								location.href='mycart_confirm.php';
							}});
						},error: function(){
							location.href = location.href;	
						}});
					}
					else
					{
						menuAjax('delivery_info.php');	
					}
				}
			}
        });
    </script> 
</div>
</body>
</html>
