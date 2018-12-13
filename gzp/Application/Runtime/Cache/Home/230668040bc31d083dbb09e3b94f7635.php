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
	<span>安全生产 / 任务公示</span>
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
				<h3>任务公示</h3>
				<div class="search_2">
					<form action="/index.php/Home/Safety/renwugongshi" method="get">
					<input name="keyword" value="" class="sea" type="text" placeholder="请您输入要查询关键字">
					<input class="sub" type="submit" value="搜索">
					</form>
				</div>
				<a class="tj" href="/index.php/Home/Safety/renwugongshiadd">添加</a>

				<div class="div">
					<table width="100%" cellspacing="0" cellpadding="0" border="0">
						<tbody>
						<tr>
							<th width="5%">序号</th>
							<th width="10%">责任部门</th>
							<th width="15%">标题</th>
							<th>内容摘要</th>
							<th width="7%">详细内容</th>
							<th width="10%">上传时间</th>
							<th width="7%">编辑</th>
						</tr>
						<?php foreach($data as $k=>$v): ?>
						<tr>
							<td style="position: relative" align="center">
								<?php if(date("Y-m-d")==date("Y-m-d",$v['time'])||date("Y-m-d")==date("Y-m-d",$v['time']+1*24*60*60)||date("Y-m-d")==date("Y-m-d",$v['time']+2*24*60*60)): ?>
								<img style="position: absolute;top: 6px;left: 0px;" src="/Public/images/Home/hot.gif" />
								<?php endif; ?>
								<?php echo ++$a ?>
							</td>
							<td align="center"><?php echo ($v['maindep']); ?></td>
							<td align="center"><?php echo ($v['title']); ?></td>
							<td class="content" align="center" title="<?php echo ($v['maincontent']); ?>">
								<?php
 if(strlen($v['maincontent'])>=90){ echo mb_substr($v['maincontent'],0,35,"UTF-8").'...'; }elseif(strlen($v['maincontent'])<90){ echo $v['maincontent']; } ?>
							</td>
							<td align="center"><a href="/index.php/Home/Safety/renwugongshixq/id/<?php echo ($v['id']); ?>">详情</a></td>
							<td align="center"><?php echo date('Y-m-d',$v['time']) ?></td>
							<td align="center">
								<a href="/index.php/Home/Safety/renwugongshiedit/id/<?php echo ($v['id']); ?>">修改</a>|
								<a href="/index.php/Home/Safety/renwugongshidel/id/<?php echo ($v['id']); ?>" onclick="return confirm('确定要删除吗？');">删除</a>
							</td>
						</tr>
						<?php endforeach; ?>
						<tr>
							<td align="center">1</td>
							<td align="center">测试1</td>
							<td align="center">测试1</td>
							<td align="center">测试1</td>
							<td align="center"><a href="/index.php/Home/Safety/gainianxq/id/4">详情</a></td>
							<td align="center">2018-06-06 14:49:43</td>
							<td align="center">
								<a href="/index.php/Home/Safety/gainianedit/id/4">修改</a>|
								<a href="/index.php/Home/Safety/gainiandel/id/4" onclick="return confirm('确定要删除吗？');">删除</a>
							</td>
						</tr>
						<tr>
							<td align="center">2</td>
							<td align="center">安全的认识阶段</td>
							<td align="center">安全的认识阶段</td>
							<td align="center">安全的认识阶段</td>
							<td align="center"><a href="/index.php/Home/Safety/gainianxq/id/1">详情</a></td>
							<td align="center">2018-06-06 14:00:09</td>
							<td align="center">
								<a href="/index.php/Home/Safety/gainianedit/id/1">修改</a>|
								<a href="/index.php/Home/Safety/gainiandel/id/1" onclick="return confirm('确定要删除吗？');">删除</a>
							</td>
						</tr>
						</tbody>
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