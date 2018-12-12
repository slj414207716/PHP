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

 

<?php
 if(empty($_SESSION['tel'])) { echo "<script>alert('请你登录');location.href='/Home/Login/index';</script>"; } ?>  
<div class="personal_1">
<img src="<?php echo $_SESSION['img']?> ">
<p><?php echo $_SESSION['name']?>   <?php echo $_SESSION['sex']?><br>
运营董事<br>
<?php echo $_SESSION['tel'] ?></p>
</div>

<div class="personal">
<ul>
<a href="information"><li><span><img src="/Public/images/vip_right.png"></span><img src="/Public/images/personal1.png">个人信息</li></a>
<a href="agent"><li><span><img src="/Public/images/vip_right.png"></span><img src="/Public/images/personal2.png">代理报备</li></a>

<a href="ercode/tel/<?php echo $_SESSION['tel'] ?>">
	<li>
		<span><img src="/Public/images/vip_right.png"></span>
		<img src="/Public/images/personal2.png">二维码推广
	</li>
</a>

<a href="address"><li><span><img src="/Public/images/vip_right.png"></span><img src="/Public/images/personal3.png">收货地址</li></a>
<a href="Password"><li><span><img src="/Public/images/vip_right.png"></span><img src="/Public/images/personal4.png">修改密码</li></a>
<a href="mail"><li><span><img src="/Public/images/vip_right.png"></span><img src="/Public/images/personal5.png">站内消息（4）</li></a>
<a href="message"><li><span><img src="/Public/images/vip_right.png"></span><img src="/Public/images/personal6.png">我的留言</li></a>
<a href="contact"><li><span><img src="/Public/images/vip_right.png"></span><img src="/Public/images/personal7.png">联系我们</li></a>
<a href="loginout"><li><span><img src="/Public/images/vip_right.png"></span><img src="/Public/images/personal7.png">退出登录</li></a>
</ul>

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