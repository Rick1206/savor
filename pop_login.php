<?php
	session_start();
?>
<a class="icon_popup pop_close"></a>
<div class="icon_popup commontitle">
	<div class="commontitle_inner">
		My Savor
	</div>
</div>
<div class="commontitle_t">
<?php
	if(isset($_SESSION['userName'])){
	}else{
	?>

	Login
	<?php
	}
	?>
</div>
<p class="pb10">
	Signing in gives you immediate access to member benefits.
</p>
<?php
if(isset($_SESSION['userName'])){
echo 'Welcome '.$_SESSION['userName'].' <a href="./logout.php">Logout</a> ';
}else{
?>

<div class="pb10">
	<input class="inputbox-style" placeholder="Email" id="J_myform_email" />
	<input class="inputbox-style" placeholder="Password" id="J_myform_pass" />
</div>
<div>
	<a class="btn_ordernow" id="J_userlog_submit">Login</a><a class="btn_ordernow" id="J_goto_reg">Register</a>
</div>
<?php
}
?>
<script>
	$(function() {
		$('#J_userlog_submit').click(function() {
			formsubmit_login();
		});

		$('#J_goto_reg').click(function() {
			commonPopupFix('pop_register.php');
		});

		$('#J_forget').click(function() {
			commonPopupFix('forget.php');
		});

		/*
		 提交注册
		 */
		function formsubmit_login() {
			var $signRegList = $("#myform-table input[reg]");
			var _re = regForm($signRegList);
			if (_re != "Ok") {
				$signRegList.eq(_re).addClass('error');
				return;
			}

			var email = $('#J_myform_email').val(), pass = $('#J_myform_pass').val();

			$('#J_userlog_submit').unbind('click');

			$.ajax({
				type : 'POST',
				url : '../ajax_log.php',
				data : {
					email : email,
					pass : pass
				},
				success : function(e) {
					switch(e) {
						case 'wrong1':
							alert('E-mail or Password is incorrect!');
							$('#J_userlog_submit').click(function() {
								formsubmit_login();
							});
							break;
						case 'wrong2':
							break;
						case '':
							$('#J_userlog_submit').click(function() {
								formsubmit_login();
							});
							alert('Error!');
							break;
						default:
							commonPopupFix('pop_shoppingcart.php');
							break;
					}

				},
				error : function(e) {
					alert('Error!');
					$('#J_userlog_submit').click(function() {
						formsubmit_login();
					});
				}
			});
		}

	}); 
</script>