<div class="header">
    <div class="w">
    	<h1 class="logo"></h1>    
      	<ul class="menu">
              <li class="on"><a href="index.php">HOME</a></li>
              <li><a href="luncheonmenu.php">MENU</a></li>
              <li><a href="occasions.php">OCCASIONS</a></li>
              <li><a href="promotions.php">PROMOTIONS</a></li>
              <li><a href="contact.php">ABOUT</a></li>
              <!--<li><a href="gateringmenu.html">CATERING MENU</a></li>
              <li><a href="events.html">NEWS & EVENT</a></li>-->
        </ul>
        <div class="shopcart pr">
            <span class="cart" id="J_show_cart"><a href="javascript:;">My Shopping Cart (<b class="J_cart_nums"><!--载入ajax_getCartNums.php--></b> items)</a></span>
            <span class="user" id="J_user"><a href="javascript:;" id="J_log">
            	<?php
				if(isset($_SESSION['userName'])){
					echo 'Welcome '.$_SESSION['userName'].':';
				}else{
					echo "Login";
				}          	
            	 ?>
				</a><a href="javascript:;">|</a><a href="javascript:;" id="J_reg">Register</a></span>
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

<div class="footer">
    <div class="w">
		<span class="fl"><a class="friend-link" href="#">Terms & Conditions</a><a class="friend-link nb" href="#">Sitemap</a></span>
        
        <span class="social">
        	<a href="#face"></a>
            <a href="#rr"></a>
            <a href="#tt"></a>
            <a href="#in" class="in"></a>
            <a href="#ban" class="in"></a>
            <a href="#weibo"></a>
        </span>
        <span class="fr">Copyright © Savor Catering 2012.  All Right Reserved.&nbsp;</span>
        
    </div>
</div>

<div class="nav">
        <div class="nav-content">
            <div class="nav-content-1">
                <h2>Promotion</h2>
                <p><strong>New Forms of Restaurants Advertising</strong><br/>
    Get the complete information about different forms of restaurant advertising, discover...</p>
            </div>
            <div class="nav-content-2">
                <h2 class="book">Book Table</h2>
                <div>
                    <span>Arrival Date</span><span><input class="inputsytle" type="text" onFocus="HS_setDate(this)" /></span>                
                    <span>People</span>
                    <div class="dropdownlist">
                        <div class="title">1</div>
                        <ul class="list dn">
                            <li>1</li>
                            <li>2</li>
                            <li>3</li>
                        </ul>
                    </div>
                </div>
                <div>
                    <a class="pt8 block" href="javascript:;"><img src="image/btn_booknow.png" /></a>
                </div>
            </div>
            <div class="nav-content-3">
                <h2 class="contact">Contact Us</h2>
                <p>
                Call (852) 2368 8811<br/>
                Email bookings@savor.com<br/>
                517 West 7th Street Newport, KY 41071-1238
                </p>
            </div>
        </div>
    </div>
