<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
<title>革镇堡街道挂图作战系统</title>
<link href="/Public/Home/Static/css/font-awesome.min.css" type="text/css" rel="stylesheet">
<link href="/Public/Home/Static/css/style.css" type="text/css" rel="stylesheet">
<link href="/Public/Home/Static/css/style1440.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="/Public/Common/Js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="/Public/Common/echars/echarts.min.js"></script>
<script type="text/javascript" src="/Public/Common/echars/shine.js"></script>
</head>
<body>

<h1 class="masked">
	<a href="#" onclick="javascript:history.back(-1);">
	<i class="fa fa-arrow-circle-left"></i></a>
	<img src="/Public/Home/Static/images/logo.png">
</h1>



<div class="general">
	<ul>
		<h1>安全生产</h1>
		<li><a href="/index.php/Home/Safety/renwugongshi"><i class="fa fa-list fa-2x"></i><p>任务公示</p></a></li>
		<li><a href="/index.php/Home/Safety/anquanmubiao"><i class="fa fa-lock fa-2x"></i><p>区内重大安全目标工作</p></a></li>
		<li><a href="/index.php/Home/Safety/wxhxp"><i class="fa fa-flask fa-2x"></i><p>危险化学品</p></a></li>
		<li><a href="/index.php/Home/Safety/zdwxy"><i class="fa fa-map-marker fa-2x"></i><p>重大危险源</p></a></li>
		<li><a href="/index.php/Home/Safety/jxcs"><i class="fa fa-compass fa-2x"></i><p>九小场所</p></a></li>
		<li><a href="/index.php/Home/Safety/comlist"><i class="fa fa-industry fa-2x"></i><p>安全生产</p></a></li>
		<li><a href="/index.php/Home/Safety/wangluo"><i class="fa fa-user fa-2x"></i><p>安全员网络</p></a></li>
		<li><a href="/index.php/Home/Safety/gainian"><i class="fa fa-book fa-2x"></i><p>安全基本</p></a></li>
		<!--{* <li><a href="/index.php/Home/Safety/feedback"><i class="fa fa-bar-chart fa-2x"></i><p>部门建议</p></a></li> *}-->
		<li><a href="/index.php/Home/Safety/advicelist"><i class="fa fa-exclamation-triangle fa-2x"></i><p>领导批示</p></a></li>
	</ul>
</div>


<?php
 $columnModel = M('H_column'); $data = $columnModel->order("sort ASC")->select(); ?>
<div class="text">
	<a>导航<br>v</a>
	<div class="win">
        <ul>
			<?php  if (is_array($data)) { $__LIST__ = $data;} else { $__LIST__=array(); }if (empty($__LIST__)) { echo "" ; }if (count($__LIST__) > 0) { $i = 0; foreach ($__LIST__ as $key=>$v) { $mod = ($i % 2 );++$i;?><li>
				<!-- 栏目警报 -->
				<img src="/Public/Home/Static/images/timg.gif" class="jb">
				<!-- 导航 -->
				<a href="<?php echo (HOST_NAME); ?>/<?php echo ($v['module']); ?>/<?php echo ($v['controller']); ?>/<?php echo ($v['action']); ?>">
					<img width="80" src="<?php echo ($v['logo']); ?>" >
					<?php echo ($v['name']); ?>
				</a>
			</li><?php } } ?>
        </ul>
	</div>
</div>
</body>
</html>