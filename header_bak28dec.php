<div class="header">
    <div class="w">
    	<a href="index.php"><h1 class="logo"></h1></a>  
      	<ul class="menu">
              <li <?php echo (isset($nav) and $nav==1) ? "class='on'" : "" ?>><a href="index.php">&nbsp;&nbsp;&nbsp;主页&nbsp;&nbsp;&nbsp;</a></li>
              <li <?php echo (isset($nav) and $nav==2) ? "class='on'" : "" ?>><a href="luncheonmenu.php">&nbsp;&nbsp;菜式&nbsp;&nbsp;</a></li>
              <li <?php echo (isset($nav) and $nav==3) ? "class='on'" : "" ?>><a href="occasions.php">&nbsp;&nbsp;場合&nbsp;&nbsp;</a></li>
              <li <?php echo (isset($nav) and $nav==4) ? "class='on'" : "" ?>><a href="promotions.php">&nbsp;&nbsp;推廣&nbsp;&nbsp;</a></li>
              <li <?php echo (isset($nav) and $nav==5) ? "class='on'" : "" ?>><a href="contact.php">&nbsp;&nbsp;關於&nbsp;&nbsp;</a></li>
              <!--<li><a href="gateringmenu.html">CATERING MENU</a></li>
              <li><a href="events.html">NEWS & EVENT</a></li>-->
        </ul>
        <div class="shopcart pr">
        
        	<span class="username" id="J_username"><a href="/en/">英文</a> /&nbsp;<a href="/index.php">中文</a></span>
            <span class="cart" id="J_show_cart"><a href="mycart.php">購物籃 (<b class="J_cart_nums"><!--载入ajax_getCartNums.php--></b>)</a></span>
            <span class="user" id="J_user">
            	<?php
				if(isset($_SESSION['userName'])){
					?>
                    	<a href="user_personalinformation.php">我的帳戶</a>
                    <?php
					
				}else{
					?>
                    	<a href="javascript:;" id="J_log">客戶登入</a><a href="javascript:;">|</a><a href="javascript:;" id="J_reg">註冊為客戶</a>
                    <?php
				}          	
            	 ?>
			</span>
                
            <span class="username" id="J_username">
            	<?php
				if(isset($_SESSION['userName'])){
					echo 'Welcome '.$_SESSION['userName'].' <a href="logout.php">Logout</a> ';
				}
				?>
            </span>    
                
                
            <div class="shopcart-box dn">
                <div class="hack t-t"></div>
                <div class="cart-content">
                    <ul id="J_cart_content">
                        <!--载入ajax_getCart.php-->
                    </ul>
                </div>
                <div class="hack b-b"></div>
            </div>
        </div>
    </div>
</div>
