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
		 var word = $('#password').val();

		 if (name=="") {

		 	$('#msg').html("<font color='red'>手机号不能空</font>");
		 	return false;
		 }

		 if (word=="") {

		 	$('#msg').html("<font color='red'>密码不能空</font>");
		 	return false;
		 }
	}
</script>
<div class="register">
<h1>用户登录</h1>
<form method="post" action="loginok">
	<input type="text" class="input1" name="user" id="user" placeholder="请输入您的手机号">
	<input type="password" class="input1" name="password" id="password" placeholder="请输入您的密码">
	<span id="msg"></span>
	<button type="submit" class="denglu" onclick="return show();">登录</button>
</form>
<a href="/Home/Login/login" class="zhuce">注册</a>
<img src="/Public/images/register1.png">
</div>
</body>
</html>