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
<div class="personal">
<ul>
<a href=""><li><img src="/Public/images/personal5.png">购物车</li></a>
</ul>
</div>

<div class="cart1">
<ul>
<li>本次订单下线累计购买<span>折扣</span><span>利差</span></li>
<li class="cur">￥59280元<span>5.5折</span><span>￥720.00</span></li>
</ul>
</div>
<div class="cart2">
<table width="100%" border="0" cellspacing="1" cellpadding="0">
  <tr>
    <td width="8%"><img src="/Public/images/pic1.jpg"></td>
    <td width="69%"><b>加厚黑板贴儿童涂鸦办公可擦写环保绿白板自粘墙纸膜</b><br>
    <font>【加厚黑色】120*1.5米 【加厚绿色】120*2米 【加厚绿色】120*2米 【加厚白色】120*2米 【定制专拍】</font>
    </td>
    <td width="6%">12个</td>
    <td width="5%" align="center"><a href="#">-</a><br><input class="input3" type="text" value="1" min="0" ><br><a href="#">+</a></td>
    <td width="7%">240元</td>
    <td width="4%" ><a href="#">删除</a></td>
  </tr>
</table>
<span>合计：<b>￥557.00</b></span>

</div>
<button class="button3">结算</button>



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