<?php
define('IN_SK',true);
require ('./includes/init.php');
$id=$_POST['id'];
?>
  <!--main-->
  <div class="banner jh jw">
        <img src="image/luncheonmenu/background.jpg" alt=""/>
    </div>
  <div class="lunchmenudetail-box">
    <div class="lunchmenudetail-container">
    	<a href="javascript:;" class="arrange-icon left"></a>
    	<div class="lunchmenudetail-container-showbox">
        	<div class="JL">
            <ul>
            <li id="J_show_ajax_detail">
             	
            </li>  
           </ul>     
            </div>
     	</div>
        <a href="javascript:;" class="arrange-icon right"></a>
    </div>
  </div>
  <input type="hidden" value="<?php echo $id; ?>" id="start-x" />
  <input type="hidden" value="0" id="typeid" />
  
  <script>
        $(function(){

			var _tid = $('#start-x').val() || -1;
			
			
			if(_tid>-1)
			{
				getAndFix(_tid);
			}
			
			
			function getAndFix(_data)
			{
				commonAjax('ajax_luncheonmenu_detail_container.php', {id:_data}, '#J_show_ajax_detail', _lun_callback, _lun_error);
				function _lun_callback() {
					
					$('.J_panel').each(function(i) {
						$(this).jScrollPane({showArrows: true});
					});	
					
					$(document).keydown(function(e){						
						if(e.keyCode==40)
						{
							$('.jspArrowDown').trigger('mousedown');
							setTimeout(function(){$('.jspArrowDown').trigger('mouseup');},100);	
							return false;
						}
						if(e.keyCode==38)
						{
							$('.jspArrowUp').trigger('mousedown');
							setTimeout(function(){$('.jspArrowUp').trigger('mouseup');},100);	
							return false;
						}
					});
					
					$('.left').unbind('click').bind('click',function(){
						var _id = $('#prev_id').val() || -1;
						if(_id>-1)
						{
							getAndFix(_id);	
						}
					});
					$('.right').unbind('click').bind('click',function(){
						var _id = $('#next_id').val() || -1;
						if(_id>-1)
						{
							getAndFix(_id);	
						}	
					});
				}
				
				function _lun_error(){
					alert('Error!');	
				}		
			}
			
        });
    </script> 