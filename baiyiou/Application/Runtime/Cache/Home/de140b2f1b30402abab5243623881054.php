<?php if (!defined('THINK_PATH')) exit();?>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0,user-scalable=no" name="viewport" id="viewport" />
<title>微信商城</title>
<link href="/Public/css/web.css" type="text/css" rel="stylesheet">
</head>

<body style="max-width:640px; background-color:#5a93cf">
<div class="top"><a href="/Home/Index/index" title="返回首页"><img src="/Public/images/home.png"></a></div>

 ﻿

<div class="personal_1">
<img src="<?php echo $_SESSION['img']?> ">
<p><?php echo $_SESSION['name']?>   <?php echo $_SESSION['sex']?><br>
运营董事<br>
<?php echo $_SESSION['tel'] ?></p>
</div>
<script type="text/javascript" src="/Public/js/jquery-1.9.0.min.js"></script>
<script type="text/javascript">
	function show(){
		 var name = $('#name').val();
		 var word = $('#tel').val();
		  var word1 = $('#address').val();

		 if (name=="") {

		 	$('#msg').html("<font color='red'>不能空</font>");
		 	return false;
		 }

		 if (word=="") {

		 	$('#msg').html("<font color='red'>不能空</font>");
		 	return false;
		 }

		 if (word1=="") {

		 	$('#msg').html("<font color='red'>不能空</font>");
		 	return false;
		 }
	}
</script>

	<div class="personal">
		<ul>
			<li><img src="/Public/images/personal3.png">添加地址</li>
		</ul>
	</div>

	<div class="information">
		<form method="post" action="address_addok">

			<ul>
				<li><b>收货人姓名</b><input name="name" type="text" id="name" class="input1"></li>

				<li><b>联系人电话</b><input name="tel" type="text" id="tel" class="input1"></li>

				<li><b>收货人地址</b><input name="address" type="text" id="address" class="input1"></li> 
				<span id="msg"></span>
				<li><input type="submit" name="Button1" value="确认" id="Button1" class="button2" onclick="return show();"></li>
			</ul>
		</form>
	</div>




<div class="bottom">
		<ul>
			<li><a href="/Home/Personal/index"><img src="/Public/images/personal.png"></a></li>
			<li><a href="/Home/Order/index"><img src="/Public/images/order.png"></a></li>
			<li><a href="/Home/Cart/index"><img src="/Public/images/shopping.png"></a></li>
			<li><a href="/Home/Classify/index"><img src="/Public/images/classify.png"></a></li>
		</ul>
	</div>
</body>
</html>