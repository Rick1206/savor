<?php
define('IN_SK',true);
require ('./includes/init.php');
?>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>用戶中心</title>
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

     <div class="banner jh jw"> <img src="image/banner/register.jpg" alt=""/> </div>

    <!--main-->
    <div class="luncheonmenu" id="J_lunmenu_content">        
        <div class="menulist noshake" style="width:1000px; margin-left:-500px;">
        <h1 class="comm-title ib">用戶中心</h1>
            <div class="containter _list">      
            	<img class="ma" src="image/promotions/b1.png">          
                <div class="comm-div diy-con" id="mycart">
                    <ul class="cater-list farial">
                        <li style="display:block;">
                            <table cellpadding="0" cellspacing="0" class="form-contact myformtable"
                                   id="myform-table">
                                <tr>
                                    <th class="comm-title">登入</th>
                                    <td></td>
                                </tr>
                                <tr>
                                	<td colspan="2">登入獲得會員優惠<br/><br></td>
                                </tr>
                                <tr>
                                    <th width="85">電郵地址/手提電話/傳呼機 *:</th>
                                    <td><input type="text" reg="email" class="input-sytle-1" id="J_myform_email"/></td>
                                </tr>
                                <tr>
                                <th>密碼 *:</th>
                                <td><input type="text"  reg="empty" class="input-sytle-1" id="J_myform_pass"/></td>
                                </tr>
                                <!--<tr>
                                	<td colspan="2"><br><a href="javascript:;" class="un_line" id="J_forget">Forget Password</a></td>
                                </tr>-->
                                <tr>
                                <th><br/><a href="javascript:;" class="comm-btn" id="J_userlog_submit">登入</a>
                                </th>
                                <td><br/><a href="javascript:;" class="comm-btn" id="J_goto_reg">註冊為客戶</a></td>
                                </tr>
                            </table>

                        </li>
                    </ul>
                </div>
            </div>
        </div>

    </div>
    <script>
        $(function () {
            $('#J_userlog_submit').click(function(){
                formsubmit_login();
            });
			
			$('#J_goto_reg').click(function(){
                menuAjax('register.php');
            });
			
			$('#J_forget').click(function(){
                menuAjax('forget.php');
            });
			
			/*
    提交注册
 */
function formsubmit_login()
{
    var $signRegList = $("#myform-table input[reg]");
    var _re = regForm($signRegList);
    if(_re!="Ok")
    {
        $signRegList.eq(_re).addClass('error');
        return;
    }

    var email = $('#J_myform_email').val(),pass = $('#J_myform_pass').val();

    $('#J_userlog_submit').unbind('click');

    $.ajax({type:'POST',url:'ajax_log.php',data:{
        email:email,pass:pass},success:function(e){
        switch(e)
        {
            case 'wrong1':
                alert('E-mail or Password is incorrect!');
				$('#J_userlog_submit').click(function(){formsubmit_login();});
                break;
            case 'wrong2':
                break;
            default:
                if((/login.php/).exec(location.href)!=null)
				{
					location.href = 'index.php';
				}
				showPersonalInfo(e);
				menuAjax(location.href);	
                break;
        }


    },error:function(e){
        alert('Error!');
        $('#J_userlog_submit').click(function(){formsubmit_login();});
    }});
}


			
			
        });
    </script>
</div>


</body>
</html>
