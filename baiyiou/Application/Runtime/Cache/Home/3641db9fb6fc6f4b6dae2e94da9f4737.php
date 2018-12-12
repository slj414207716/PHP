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

 

<div class="classify1">
<input type="text" class="input2"><input type="image" src="/Public/images/search.png">
</div>

   <div class="tab">
		<div class="classify2">
			<ul class="tabs" id="tabs">
				<?php if(is_array($data)): $i = 0; $__LIST__ = $data;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li class="selected"><a href="<?php echo ($vo["id"]); ?>"><?php echo ($vo["name"]); ?></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
			</ul>
			<!-- <ul>
				<li class="selected">产品属性</li>
				<li>产品尺码表</li>
				<li>产品介绍</li>
			</ul> -->
		</div>
		<div class="index_2">
			<ul class="tab_conbox" id="tab_conbox">
				<?php if(is_array($adata)): $i = 0; $__LIST__ = $adata;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vi): $mod = ($i % 2 );++$i;?><li class="hide">
							<a href="/Home/Product/index/id/<?php echo ($vi["id"]); ?>">
							<img src="/Public/images/pic1.jpg">
							<b><?php echo ($vi["title"]); ?></b><font>123456人付款</font>
							</a>
						</li><?php endforeach; endif; else: echo "" ;endif; ?>
				<!-- <li><a href="#">
					<img src="/Public/images/pic3.jpg">
				<b>儿童涂鸦教学培训黑板绿板白板墙贴纸</b><font>123456人付款</font>
				</a>
				</li> -->
			</ul>

			<!-- <ul>
				<li>
					产品属性产品属性产品属性产品属性产品属性产品属性产品属性产品属性产品属性产品属性产品属性产品属性</li>
				<li class="hide">产品尺码表</li>
				<li class="hide">产品介绍</li>
			</ul> -->
		</div>
	</div>
<script src="/Public/js/jquery-1.9.0.min.js" type="text/javascript"></script>
<script type="text/javascript">
	$(function(){
	//选项卡功能
	var $li=$('div.classify2 ul li');
	$li.click(function(){
		$(this).addClass('selected')
		.siblings().removeClass('selected');
		var $index=$li.index(this);//索引当前的值
		$('div.index_2 ul li').eq($index).show()
		.siblings().hide();
	});
});
</script>




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