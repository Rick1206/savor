<?php
define('IN_SK',true);
require ('./includes/init.php');
?>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>註冊為客戶</title>
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
      <div class="containter _list"> <img class="ma" src="image/promotions/b1.png">
        <div class="comm-div diy-con" id="mycart">
          <ul class="cater-list farial">
            <li style="display:block;">
              <table cellpadding="0" cellspacing="0" class="form-contact myformtable"
                                   id="myform-table">
                <tr>
                  <th class="comm-title">註冊為客戶</th>
                  <td></td>
                </tr>
                <tr>
                  <th>電郵地址  *:</th>
                  <td><input type="text" reg="email" class="input-sytle-1" id="J_myform_email"/></td>
                </tr>
                  </tr>
                
                
                  <th>密碼 *:</th>
                  <td><input type="password"  reg="empty" class="input-sytle-1" id="J_myform_pass"/></td>
                </tr>
                  </tr>
                
                
                  <th>確認密碼 *:</th>
                  <td><input type="password" reg="empty" class="input-sytle-1" id="J_myform_pass_compare"/></td>
                </tr>
                  </tr>
                
                
                  <th>姓 *:</th>
                  <td><input type="text"  class="input-sytle-1" id="J_myform_firstname"/></td>
                </tr>
                  </tr>
                
                
                  <th>名 *:</th>
                  <td><input type="text"  class="input-sytle-1" id="J_myform_lastname"/></td>
                </tr>
                  </tr>
                
                
                  <th>手提電話/傳呼機 *:</th>
                  <td><input type="text" reg="mobile" class="input-sytle-1" id="J_myform_mobile"/></td>
                </tr>
                  </tr>
                
                
                  <th>地區 *:</th>
                  <td><input type="text" class="input-sytle-1" id="J_myform_city" /></td>
                </tr>
                  </tr>
                
                
                  <th>住宅地址 *:</th>
                  <td><input type="text" class="input-sytle-1" id="J_myform_address"/></td>
                </tr>
                  </tr>
                
                
                  <th><br/>
                    <a href="javascript:;" class="comm-btn" id="J_userreg_submit">加入</a></th>
                  <td class="gbt"></td>
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
            $('#J_userreg_submit').click(function(){
                formsubmit_reg();
            });
			
/*
    提交注册
 */
function formsubmit_reg()
{
    var $signRegList = $("#myform-table input[reg]");
    var _re = regForm($signRegList);
    if(_re!="Ok")
    {
        $signRegList.eq(_re).addClass('error');
        return;
    }

    var email = $('#J_myform_email').val(),pass = $('#J_myform_pass').val(),pass_2 = $('#J_myform_pass_compare').val(),firstname = $('#J_myform_firstname').val(),lastname = $('#J_myform_lastname').val(),mobile = $('#J_myform_mobile').val(),address = $('#J_myform_address').val(),city = $('#J_myform_city').val();

    if(pass!=pass_2)
    {
        alert('Check Confirm Password');
        return false;
    }


    $('#J_userreg_submit').unbind('click');

    $.ajax({type:'POST',url:'ajax_reg.php',data:{
        email:email,pass:pass,firstname:firstname,lastname:lastname,mobile:mobile,address:address,city:city},success:function(e){
        switch(e)
        {
            case 'wrong1':
                alert('E-mail has been used!');
                $('#J_myform_email').select();
                $('#J_userreg_submit').click(function(){formsubmit_reg();});
                break;
            case 'wrong2':
                alert('error-wrong2!');
                $('#J_userreg_submit').click(function(){formsubmit_reg();});
                break;
            default:                
				if((/register.php/).exec(location.href)!=null)
				{
					location.href = 'index.php';
				}
				//显示个人信息				
				showPersonalInfo(firstname);								
				menuAjax(location.href);				
                break;
        }


    },error:function(){
        alert('Error!');
        $('#J_userreg_submit').click(function(){formsubmit_reg();});
    }});
}


        });
    </script> 
</div>
</body>
</html>
