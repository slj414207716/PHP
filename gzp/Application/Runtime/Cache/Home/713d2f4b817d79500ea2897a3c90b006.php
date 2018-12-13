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
	<a href="#" onclick="javascript:history.back(-1);"><i class="fa fa-arrow-circle-left"></i></a><img src="/Public/Home/Static/images/logo.png"  width="30%">
</h1>



<div class="general">
	<ul>
		<h1>城市管理</h1>
		<li><a href="/index.php/Home/City/chengjianxiangmu"><i class="fa fa-list fa-2x"></i><p>城建项目</p></a></li>
		<li><a href="/index.php/Home/City/yicunyijing"><i class="fa fa-picture-o fa-2x"></i><p>一村一景</p></a></li>
		<li><a href="/index.php/Home/City/lvhua"><i class="fa fa-leaf fa-2x"></i><p>绿化</p></a></li>
		<li><a href="/index.php/Home/City/saobao"><i class="fa fa-globe fa-2x"></i><p>环卫扫保</p></a></li>
		<li><a href="/index.php/Home/City/weijian"><i class="fa fa-list-alt fa-2x"></i><p>违建项目</p></a></li>
		<li><a href="/index.php/Home/City/gonglu"><i class="fa fa-bus fa-2x"></i><p>交通</p></a></li>
		<li><a href="/index.php/Home/City/wuyeguanli"><i class="fa fa-building fa-2x"></i><p>物业管理</p></a></li>
		<!--{* <li><a href="/index.php/Home/City/feedback"><i class="fa fa- fa-2x"></i><p>部门建议</p></a></li> *}-->
		<li><a href="/index.php/Home/City/chengshisafe"><i class="fa fa-pencil-square-o fa-2x"></i><p>安全上报</p></a></li>
	</ul>

	<ul>
		<h1>城市防灾</h1>
		<li><a href="/index.php/Home/Disaster/binan"><i class="fa fa-ambulance fa-2x"></i><p>避难</p></a></li>
		<li><a href="/index.php/Home/Disaster/river"><i class="fa fa-tint fa-2x"></i><p>河道、水库</p></a></li>
		<li><a href="/index.php/Home/Disaster/muyuan"><i class="fa fa-plus-square-o fa-2x"></i><p>墓园</p></a></li>
		<li><a href="/index.php/Home/Disaster/sanfen"><i class="fa fa-map-signs fa-2x"></i><p>散坟</p></a></li>
		<!--{* <li><a href="/index.php/Home/Disaster/feedback"><i class="fa fa- fa-2x"></i><p>部门建议</p></a></li> *}-->
	</ul>

	<ul>
		<h1>应急管理</h1>
		<li><a href="/index.php/Home/Video/video_live"><i class="fa fa-medkit fa-2x"></i><p>应急管理</p></a></li>
		<li><a href="/index.php/Home/Video/yingji"><i class="fa fa-heartbeat fa-2x"></i><p>应急救援队伍保障</p></a></li>
		<li><a href="/index.php/Home/Video/xiangying"><i class="fa fa-tasks fa-2x"></i><p>响应程序</p></a></li>
		<li><a href="/index.php/Home/Video/lishichakan"><i class="fa fa-history fa-2x"></i><p>历史查看</p></a></li>
		<!--{* <li><a href="/index.php/Home/Video/feedback"><i class="fa fa- fa-2x"></i><p>部门建议</p></a></li> *}-->
	</ul>

	<ul>
		<h1>综治维稳</h1>
		<li><a href="/index.php/Home/Treat/basicrf"><i class="fa fa-users fa-2x"></i><p>综治办社会治安防控体系建设工作基础数据（人防体系）</p></a></li>
		<li><a href="/index.php/Home/Treat/basicjf"><i class="fa fa-building fa-2x"></i><p>综治办社会治安防控体系建设工作基础数据（技防体系）</p></a></li>
		<li><a href="/index.php/Home/Treat/basicwf"><i class="fa fa-archive fa-2x"></i><p>综治办社会治安防控体系建设工作基础数据（物防体系）</p></a></li>
		<li><a href="/index.php/Home/Treat/special"><i class="fa fa-user-secret fa-2x"></i><p>综治办特殊人群管理工作数据</p></a></li>
		<li><a href="/index.php/Home/Treat/student"><i class="fa fa-graduation-cap fa-2x"></i><p>综治办校园安全管理工作数据</p></a></li>
		<li><a href="/index.php/Home/Treat/road"><i class="fa fa-train fa-2x"></i><p>综治办铁路护路队伍数据</p></a></li>
		<li><a href="/index.php/Home/Treat/cases"><i class="fa fa-lock fa-2x"></i><p>综治办各类治安案件数据</p></a></li>
		<!--{* <li><a href="/index.php/Home/Treat/feedback"><i class="fa fa- fa-2x"></i><p>部门建议</p></a></li> *}-->
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