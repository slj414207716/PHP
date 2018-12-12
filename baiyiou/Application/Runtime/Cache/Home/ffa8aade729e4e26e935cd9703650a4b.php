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
<?php
 if(empty($_SESSION['tel'])) { echo "<script>alert('请你登录');location.href='/Home/Login/index';</script>"; } ?>  
<div class="personal">
<ul>
<a href=""><li><img src="/Public/images/personal2.png">订单管理</li></a>
</ul>
</div>

<div class="order">
<div class="order3">
<ul>
<li><a href="#">所有订单</a></li>
<li><a href="#">待付款（0）</a></li>
<li><a href="#">待发货（0）</a></li>
<li><a href="#">待确认收货（0）</a></li>
</ul>
<select name="">
  <option>请选择日期</option>
</select><input type="text" class="input1"><input type="image" src="/Public/images/search.png">
</div>
</div>
<div class="order4">订单编号：115458454102582 <br>下单时间：2016-07-01 </div>
<div class="order5">
<dl>
<dt>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><img src="/Public/images/pic1.jpg"></td>
    <td><b>加厚黑板贴儿童涂鸦办公可擦写环保绿白板自粘墙纸膜</b><br>
    <font>【加厚黑色】120*1.5米 【加厚绿色】120*2米 【加厚绿色】120*2米 【加厚白色】120*2米 【定制专拍】</font>
    </td>
    <td>55.70<br>元</td>
    <td>10<br>个</td>
    <td>557<br>元</td>
  </tr>
   <tr>
    <td><img src="/Public/images/pic1.jpg"></td>
    <td><b>加厚黑板贴儿童
涂鸦办公可擦写环保
绿白板自粘墙纸膜</b></td>
    <td>55.70<br>元</td>
    <td>10<br>个</td>
    <td>557<br>元</td>
  </tr> 
</table>
</dt>
<dd>交易成功<br><br><a href="#">订单详情</a></dd>
</dl>
<span>合计：<b>￥1114.00</b></span>
</div>
<div class="order4"><span>下单时间：2016-07-01</span>订单编号：115458454102582 </div>
<div class="order5">
<dl>
<dt>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><img src="/Public/images/pic1.jpg"></td>
    <td><b>加厚黑板贴儿童涂鸦办公可擦写环保绿白板自粘墙纸膜</b><br>
    <font>【加厚黑色】120*1.5米 【加厚绿色】120*2米 【加厚绿色】120*2米 【加厚白色】120*2米 【定制专拍】</font>
    </td>
    <td>55.70<br>元</td>
    <td>10<br>个</td>
    <td>557<br>元</td>
  </tr>
 
</table>
</dt>
<dd>交易成功<br><br><a href="#">订单详情</a></dd>
</dl>
<span>合计：<b>￥557.00</b></span>
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