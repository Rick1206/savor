<?php
define('IN_SK',true);

require_once('./includes/init.php');
require_once('./phpmailer/class.phpmailer.php');

if($_POST["type"] != ""){	
	$emailType = $_POST["type"];
}
$br = "<br/>";
switch($emailType){
	case "0":
		$emailBody = $_POST["name"].$br.$_POST["tel"].$br.$_POST["fax"].$br.$_POST["email"].$br.$_POST["message"];
		echo sendEmail($emailBody,"order@savor.com.hk");
		break;
}

function sendEmail($userEmail,$userAddress){
	
	$mail = new PHPMailer();
	$mail->IsSMTP();
	$mail->SMTPDebug  = 1;         
	$mail->SetLanguage('zh_cn','phpmailer/language/');
	
    $mail->CharSet 		 = "utf-8"; 
    $mail->Encoding		 = "base64";
    $mail->SMTPSecure 	 = "ssl";
	$mail->SMTPAuth      = true;                  
	$mail->SMTPKeepAlive = true;                  
	$mail->Host          = "hwsmtp.exmail.qq.com";
			  
	$mail->Port          = 465;                    
	$mail->Username      = "order@savor.com.hk";    
	$mail->Password      = "P@ss2234";            
	
	$mail->SetFrom('order@savor.com.hk', 'SavorEmail');
	$mail->Subject       = "SavorService";
	$body = preg_replace("/[\/]/",'',$userEmail);
	$mail->MsgHTML($body);
	$address = $userAddress;
	$mail->AddAddress($address, "");
	$mail->AddCC("tkt1.gd@gmail.com", "");
			
	if($mail->Send()) {
	  return "Ok";
	} else {
	  return "Wrong";
	}
}
?>
