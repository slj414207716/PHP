<?php if (!defined('THINK_PATH')) exit();?>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0,user-scalable=no" name="viewport" id="viewport" />
<title>微信商城</title>
<link href="/bai/Public/css/web.css" type="text/css" rel="stylesheet">
</head>

<body style="max-width:640px; background-color:#5a93cf">
<div class="top"><a href="/Home/Index/index" title="返回首页"><img src="/bai/Public/images/home.png"></a></div>

 ﻿




<div class="index_1">
<img src="/bai/Public/images/logo1.jpg" width="35%">
<input type="text" class="input1">
<p><img src="/bai/Public/images/notice.png"><a href="news_text.html">最新公告最新公告最新公最新公....</a></p>
</div>

<div class="addWrap">
	<div class="swipe" id="mySwipe">
		<div class="swipe-wrap">
			<div><a href="javascript:;"><img class="img-responsive" src="/bai/Public/images/banner1.jpg"/></a></div>
			<div><a href="javascript:;"><img class="img-responsive" src="/bai/Public/images/banner1.jpg" /></a></div>
			<div><a href="javascript:;"><img class="img-responsive" src="/bai/Public/images/banner1.jpg"/></a></div>
		</div>
	</div>
	
	<ul id="position">
		<li class="cur"></li>
		<li></li>
		<li></li>
	</ul>
</div><!--/addWrap--> 
<script src="/bai/Public/js/hhSwipe.js" type="text/javascript"></script>
<script type="text/javascript">
var bullets = document.getElementById('position').getElementsByTagName('li');

var banner = Swipe(document.getElementById('mySwipe'), {
	auto: 4000,
	continuous: true,
	disableScroll:false,
	callback: function(pos) {
		var i = bullets.length;
		while (i--) {
			bullets[i].className = ' ';
		}
		bullets[pos].className = 'cur';
	}
})
</script>

	<div class="index_2">
		<ul>
			<?php if(is_array($data)): $i = 0; $__LIST__ = $data;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li><a href="/Home/Product/index/id/<?php echo ($vo["id"]); ?>">

				<img src="/bai/Public/images/pic1.jpg">
				<b><?php echo ($vo["title"]); ?></b><font>123456人付款</font>
				</a></li><?php endforeach; endif; else: echo "" ;endif; ?>
		</ul>
	</div>

<div class="index_3"><a href="/Home/News/index"><img src="/bai/Public/images/pic4.jpg"></a></div>




<div class="bottom">
		<ul>
			<li><a href="/Home/Personal/index"><img src="/bai/Public/images/personal.png"></a></li>
			<li><a href="/Home/Order/index"><img src="/bai/Public/images/order.png"></a></li>
			<li><a href="/Home/Cart/index"><img src="/bai/Public/images/shopping.png"></a></li>
			<li><a href="/Home/Classify/index"><img src="/bai/Public/images/classify.png"></a></li>
		</ul>
	</div>
</body>
</html>