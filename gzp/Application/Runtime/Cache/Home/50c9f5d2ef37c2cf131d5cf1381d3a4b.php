<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>革镇堡街道挂图作战系统</title>
		<link rel="stylesheet" href="/Public/<?php echo (MODULE_NAME); ?>/<?php echo (CONTROLLER_NAME); ?>/<?php echo (ACTION_NAME); ?>.css" />
		<script type="text/javascript" src="/Public/Common/Js/jquery-3.3.1.min.js"></script>
		<script type="text/javascript" src="/Public/<?php echo (MODULE_NAME); ?>/<?php echo (CONTROLLER_NAME); ?>/<?php echo (ACTION_NAME); ?>.js"></script>
	</head>
	<body>
		<header><span class="title" data-text="革镇堡街道挂图作战系统">革镇堡街道挂图作战系统</span></header>
		<div class="form_area">
			<form action="<?php echo (HOST_NAME); ?>/Home/Login/checkLogin" method="post" autocomplete="off" onsubmit="return check_submit();">
				<div class="input_username">
					<input type="text" name="username" id="username" placeholder="输入ID登录" />
				</div>
				<div class="input_password">
					<input type="password" name="password" id="password" placeholder="输入密码" />
				</div>
			<div class="submit_button">登录</div>
			</form>
		</div>
	</body>
</html>