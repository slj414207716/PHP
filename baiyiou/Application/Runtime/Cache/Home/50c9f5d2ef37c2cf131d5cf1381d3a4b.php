<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0,user-scalable=no" name="viewport" id="viewport" />
<title>微信商城</title>
<link href="/Public/css/web.css" type="text/css" rel="stylesheet">
</head>

<body style="max-width:640px; background-color:#5a93cf">
<script type="text/javascript" src="/Public/js/jquery-1.9.0.min.js"></script>
<script type="text/javascript">
	function show(){

		var name = $('#user').val();
		var word1 = $('#password').val();
		var word2 = $('#password2').val();

		if (name=="") {

			$('#msg').html("<font color='red'>手机号不能为空</font>");
			return false;
		}

		if (word1=="") {

			$('#msg').html("<font color='red'>密码不能为空</font>");
			return false;
		}

		if (word1!=word2) {

			$('#msg').html("<font color='red'>两次密码不相同</font>");
			return false;
		}
	}
</script>
<div class="register">
<h1>注册</h1>
<form method="post" action="addlogin">
	<input type="text" class="input1" placeholder="请输入推荐人手机号" name="ref" id="ref" value="<?php echo $_SESSION['tel'] ?>">
	<input type="text" class="input1" placeholder="请输入您的手机号" name="user" id="user"><span id="msg"></span>
	<input type="password" class="input1" placeholder="请输入您的密码" name="password" id="password"><span id="msg"></span>
	<input type="password" class="input1" placeholder="再次输入密码W" name="password2" id="password2"><span id="msg"></span>
	<button type="submit" class="denglu" onclick="return show();">注册</button>
</form>
<img src="/Public/images/register1.png">
</div>
</body>
</html>