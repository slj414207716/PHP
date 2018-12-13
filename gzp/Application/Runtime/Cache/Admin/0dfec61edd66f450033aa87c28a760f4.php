<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>革镇堡</title>

	<link href="/Public/Admin/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link href="/Public/Home/Static/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<style type="text/css">
		body { background-color:#373B3E; font-family:"Source Sans Pro", "Helvetica Neue", Helvetica, Arial, sans-serif; }
		.container { width:300px; margin:50px auto; }
		.container header h1 { color:#fff; text-align:center; }
	</style>

	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
	<![endif]-->

	<script src="/Public/Common/Js/jquery-3.3.1.min.js"></script>
</head>
<body>

<section id="content">
	<div class="container">
		<header>
			<h1>革镇堡管理员登录</h1>
		</header>

		<form action="/index.php/Admin/Login/checkLogin" method="post">
			<div class="form-group">
				<input type="text" name="username" placeholder="用户名" class="form-control">
			</div>
			<div class="form-group">
				<input type="password" name="password" placeholder="密码" class="form-control">
			</div>
			<div class="form-group">
				<button type="submit" class="btn btn-default">登录</button>
			</div>
		</form>
	</div>
</section>

</body>
</html>