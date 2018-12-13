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



<div class="jjgz">

	<div class="jjgz1">
		<h1>基本指标</h1>
		<ul>
			<li>
				<a href="<?php echo (HOST_NAME); ?>/Home/Economic/shxf/sid/1">
					<i class="fa fa-bar-chart fa-2x"></i><p>地区生成总值</p>
				</a>
			</li>
			<li>
				<a href="<?php echo (HOST_NAME); ?>/Home/Economic/shxf/sid/2">
					<i class="fa fa-cny fa-2x"></i><p>财政收入</p>
				</a>
			</li>
			<li>
				<a href="<?php echo (HOST_NAME); ?>/Home/Economic/shxf/sid/3">
					<i class="fa fa-area-chart fa-2x"></i><p>规上工业总产值</p>
				</a>
			</li>
			<li>
				<a href="<?php echo (HOST_NAME); ?>/Home/Economic/shxf/sid/4">
					<i class="fa fa-external-link fa-2x"></i><p>固定资产投资</p>
				</a>
			</li>
			<li>
				<img src="/Public/Home/Static/images/timg.gif">
				<a href="<?php echo (HOST_NAME); ?>/Home/Economic/shxf/sid/5">
					<i class="fa fa-shopping-cart fa-2x"></i><p>社会消费品零售额</p>
				</a>
			</li>
			<li>
				<a href="<?php echo (HOST_NAME); ?>/Home/Economic/shxf/sid/6">
					<i class="fa fa-calendar fa-2x"></i><p>使用内资</p>
				</a>
			</li>
			<li>
				<a href="<?php echo (HOST_NAME); ?>/Home/Economic/shxf/sid/7">
					<i class="fa fa-random fa-2x"></i><p>引进外资</p>
				</a>
			</li>
		</ul>
	</div>
   
	<div class="jjgz2">
		<h1>重点项目</h1>
		<ul>
			<li>
				<img src="/Public/Home/Static/images/timg.gif">
				<a href="<?php echo (HOST_NAME); ?>/Home/Economic/fdcl/sid/1">
					<i class="fa fa-building fa-2x"></i><p>房地产类</p>
				</a>
			</li>
          
			<li>
				<a href="#">
					<i class="fa fa-globe fa-2x"></i><p>城市建设类</p>
				</a>
			</li>
			<li>
				<a href="#">
					<i class="fa fa-user-circle fa-2x"></i><p>民生类</p>
				</a>
			</li>
		</ul>
	</div>
   
	<div class="jjgz4">
		<h1>重点企业</h1>
			<ul>
				<li>
					<a href="<?php echo (HOST_NAME); ?>/Home/Economic/zdqy">
					<i class="fa fa-sort-amount-desc fa-2x"></i><p>各个基本指标贡献前十排名</p>
				</a>
			</li>
		</ul>
	</div>
   
	<div class="jjgz3">
		<h1>招商引资</h1>
		<ul>
			<li>
				<a href="<?php echo (HOST_NAME); ?>/Home/Economic/zsyzJh">
					<i class="fa fa-file-text-o fa-2x"></i><p>计划</p>
				</a>
			</li>
			<li>
				<a href="<?php echo (HOST_NAME); ?>/Home/Economic/zsyzSjqk">
					<i class="fa fa-calendar-check-o fa-2x"></i><p>完成情况</p>
				</a>
			</li>
			<li>
				<img src="/Public/Home/Static/images/timg.gif">
				<a href="<?php echo (HOST_NAME); ?>/Home/Economic/zsyzCzwt">
					<i class="fa fa-question-circle-o fa-2x"></i><p>存在问题</p>
				</a>
			</li>
		</ul>
	</div>

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