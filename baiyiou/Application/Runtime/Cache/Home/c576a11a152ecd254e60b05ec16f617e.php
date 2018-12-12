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
<?php echo $_SESSION['tel']?></p>
</div>
	<div class="personal">
		<ul>
			<li><img src="/Public/images/personal3.png">收货地址</li>
		</ul>
	</div>
	<div class="address">
		<form action="/Home/Personal/address_add" method="post">
			<?php if(is_array($data)): $i = 0; $__LIST__ = $data;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><dl>
				<dt><img src="/Public/images/contact1.png"><?php echo ($vo["name"]); ?> <span><?php echo ($vo["tel"]); ?></span></dt>

				<dd><?php echo ($vo["address"]); ?></dd>

				<input name="pass" type="checkbox" class="checkbox" id="d" value="X" checked>

				<label for="d" class="checkbox">默认地址</label>

				<a onclick="return confirm('确认删除吗？')" href="/Home/Personal/del/id/<?php echo ($vo["id"]); ?>"><img src="/Public/images/delete.jpg" height="25">删除</a>

			</dl><?php endforeach; endif; else: echo "" ;endif; ?>
			<button class="button4">添加新地址</button>	
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