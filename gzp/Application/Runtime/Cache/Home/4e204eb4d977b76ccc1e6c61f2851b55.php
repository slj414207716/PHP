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
<script type="text/javascript" src="/Public/Common/echars/shine2.js"></script>
</head>
<body>

<h1 class="masked">
	<a href="#" onclick="javascript:history.back(-1);">
	<i class="fa fa-arrow-circle-left"></i></a>
	<img src="/Public/Home/Static/images/logo.png"  class="logo">
	<span>安全生产 / 安全基本</span>
</h1>


<link rel="stylesheet" href="/Public/Home/Static/css/style2.css" />

<div id="outer">
	<ul id="tab">
	<li><a href="/index.php/Home/Safety/renwugongshi">任务公示</a></li>
	<li><a href="/index.php/Home/Safety/anquanmubiao">区内重大安全目标工作</a></li>
	<li><a href="/index.php/Home/Safety/wxhxp">危险化学品</a></li>
	<li><a href="/index.php/Home/Safety/zdwxy">重大危险源</a></li>
	<li><a href="/index.php/Home/Safety/jxcs">九小场所</a></li>
	<li><a href="/index.php/Home/Safety/comlist">安全生产</a></li>
	<li><a href="/index.php/Home/Safety/wangluo">安全员网络</a></li>
	<li><a href="/index.php/Home/Safety/gainian">安全基本</a></li>
	<!--{* <li><a href="/index.php/Home/Safety/feedback">部门建议</a></li> *}-->
	<li><a href="/index.php/Home/Safety/advicelist">领导批示</a></li>
</ul>
	<div id="content">
		<ul style="display:block;">
			<div class="aqsc">
				<h3>安全基本</h3>
				<div class="search_2">
					<form action="/index.php/Home/Safety/gainian" method="get" class="sys_form">
					<input class="sea" type="text" name="key" value="" placeholder="请您输入要查询关键字">
					<input class="sub" type="submit" value="搜索">
					</form>
				</div>
				<a class="tj" href="/index.php/Home/Safety/gainianadd">添加</a>

				<div class="div">
					<table border=1 class="sys_table">
						<tr>
							<th>序号</th>
							<th>标题</th>
							<th>内容</th>
							<th>上传时间</th>
							<th>编辑</th>
						</tr>
						<?php foreach($data as $k=>$v): ?>
						<tr>
							<td align="center"><?php echo ++$a ?></td>
							<td align="center"><?php echo ($v['title']); ?></td>
							<td align="center">
								<a href="/index.php/Home/Safety/gainianxq/id/<?php echo ($v['id']); ?>">详情</a>
							</td>
							<td align="center"><?php echo date('Y-m-d H:i:s',$v['time']) ?></td>
							<td align="center">
								<a href="/index.php/Home/Safety/gainianedit/id/<?php echo ($v['id']); ?>">修改</a>|
								<a href="/index.php/Home/Safety/gainiandel/id/<?php echo ($v['id']); ?>" onclick="return confirm('确定要删除吗？');">删除</a>
							</td>
						</tr>
						<?php endforeach; ?>
					</table>
				</div>
			</div>
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