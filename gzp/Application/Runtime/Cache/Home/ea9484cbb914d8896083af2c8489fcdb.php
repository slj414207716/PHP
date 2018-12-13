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
		<i class="fa fa-arrow-circle-left"></i>
	</a>
    <img src="/Public/Home/Static/images/logo.png" width="30%">
</h1>



<div class="general">
	<ul>
		<h1>重点督办</h1>
		<li><a href="/index.php/Home/Focus/total_progress"><i class="fa fa-line-chart fa-2x"></i><p>进度总览</p></a></li>
		<li><a href="/index.php/Home/Focus/task_list"><i class="fa fa-list-alt fa-2x"></i><p>任务列表</p></a></li>
		<li><a href="/index.php/Home/Focus/task_ing"><i class="fa fa-check-square-o fa-2x"></i><p>反馈进展</p></a></li>
		<li><a href="/index.php/Home/Focus/task_more_department"><i class="fa fa-handshake-o fa-2x"></i><p>跨部门合作</p></a></li>
		<li><a href="/index.php/Home/Focus/task_delay"><i class="fa fa-pencil fa-2x"></i><p>延期申请</p></a></li>
		<li><a href="/index.php/Home/Focus/task_zhenggai"><i class="fa fa-pencil-square-o fa-2x"></i><p>整改工作</p></a></li>
		<li><a href="/index.php/Home/Focus/task_finished"><i class="fa fa-star fa-2x"></i><p>办结评价</p></a></li>
		<li><a href="/index.php/Home/Focus/focus_event" target="_blank"><i class="fa fa-eye fa-2x"></i><p>督办系统</p></a></li>
		<!--{* <li><a href="/index.php/Home/Focus/feedback"><i class="fa fa- fa-2x"></i><p>部门建议</p></a></li> *}-->
		<li><a href="/index.php/Home/Focus/advicelist"><i class="fa fa-exclamation-triangle fa-2x"></i><p>领导批示</p></a></li>
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