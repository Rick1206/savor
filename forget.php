<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Luncheon menu</title>
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

    <div class="banner jh jw">
        <img src="image/luncheonmenu/background.jpg" alt=""/>
    </div>

    <!--main-->
    <div class="luncheonmenu" id="J_lunmenu_content">        
        <div class="menulist" style="width:1000px; margin-left:-500px;">
            <div class="containter _list">      
            	<img class="ma" src="image/promotions/b1.png">          
                <div class="comm-div diy-con" id="mycart">
                    <ul class="cater-list farial">
                        <li style="display:block;">
                            <table cellpadding="0" cellspacing="0" class="form-contact myformtable"
                                   id="myform-table">
                                <tr>
                                    <th colspan="2" class="comm-title">Forgot Password</th>                                    
                                </tr>
                                <tr>
                                    <td colspan="2"><br/></td>
                                </tr>
                                <tr>
                                    <th width="80">Email *:</th>
                                    <td><input type="text" reg="email" class="input-sytle-1" id="J_myform_email"/></td>
                                </tr>
                                <tr>
                                <th><br/><a href="javascript:;" class="comm-btn" id="J_requestpass">Submit</a>
                                </th>
                                <td><br/><a href="javascript:;" class="comm-btn forgetbtn" id="J_rlog">Return Login</a></td>
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
            $('#J_requestpass').click(function(){
                formsubmit_reqpass();
            });
			
			$('#J_rlog').click(function(){
                menuAjax('login.php');
            });
			
			/*
    提交注册
 */
function formsubmit_reqpass()
{
    var $signRegList = $("#myform-table input[reg]");
    var _re = regForm($signRegList);
    if(_re!="Ok")
    {
        $signRegList.eq(_re).addClass('error');
        return;
    }

    var email = $('#J_myform_email').val();

    $('#J_requestpass').unbind('click');

    $.ajax({type:'POST',url:'ajax_requestpassword.php',data:{
        email:email,pass:pass},success:function(e){
        switch(e)
        {
            case 'wrong1':
                alert('E-mail is incorrect!');
				$('#J_requestpass').click(function(){formsubmit_reqpass();});
                break;
            default:
				alert('Successfully!');
                if((/forget.php/).exec(location.href)!=null)
				{
					location.href = 'index.php';
				}
				menuAjax(location.href);	
                break;
        }


    },error:function(e){
        alert('Error!');
        $('#J_requestpass').click(function(){formsubmit_reqpass();});
    }});
}


			
			
        });
    </script>
</div>


</body>
</html>
