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
		<h1>民生保障</h1>
		<li><a href="/index.php/Home/People/social"><i class="fa fa-list fa-2x"></i><p>2018年社会化管理人员情况统计报表</p></a></li>
		<li><a href="/index.php/Home/People/msbz"><i class="fa fa-lock fa-2x"></i><p>2018年待遇资格认证人员情况统计报表</p></a></li>
		<li><a href="/index.php/Home/People/job"><i class="fa fa-flask fa-2x"></i><p>就业和失业</p></a></li>
		<li><a href="/index.php/Home/People/degree"><i class="fa fa-map-marker fa-2x"></i><p>残疾程度</p></a></li>
		<li><a href="/index.php/Home/People/canji"><i class="fa fa-compass fa-2x"></i><p>残疾类别</p></a></li>
		<li><a href="/index.php/Home/People/cadre"><i class="fa fa-industry fa-2x"></i><p>村（社区）干部</p></a></li>
		<li><a href="/index.php/Home/People/aged"><i class="fa fa-user fa-2x"></i><p>居家养老中心</p></a></li>
		<li><a href="/index.php/Home/People/old"><i class="fa fa-book fa-2x"></i><p>60岁及以上老年人口</p></a></li>
		<!--{* <li><a href="/index.php/Home/Safety/feedback"><i class="fa fa-bar-chart fa-2x"></i><p>部门建议</p></a></li> *}-->
		<li><a href="/index.php/Home/People/nation"><i class="fa fa-exclamation-triangle fa-2x"></i><p>少数民族统计</p></a></li>
	</ul>
	<ul>
		<h1>文化体育</h1>
		<li><a href="/index.php/Home/Sports/religion"><i class="fa fa-list fa-2x"></i><p>宗教场所</p></a></li>
		<li><a href="/index.php/Home/Sports/tydw"><i class="fa fa-grav fa-2x"></i><p>体育队伍</p></a></li>
		<li><a href="/index.php/Home/Sports/jsgc"><i class="fa fa-handshake-o fa-2x"></i><p>健身广场</p></a></li>
		<li><a href="/index.php/Home/Sports/whdw"><i class="fa fa-telegram fa-2x"></i><p>文化队伍</p></a></li>
		<li><a href="/index.php/Home/Sports/njsw"><i class="fa fa-ravelry fa-2x"></i><p>农家书屋、社区书屋</p></a></li>
		<li><a href="/index.php/Home/Sports/whhd"><i class="fa fa-bank  fa-2x"></i><p>文化活动室</p></a></li>
		<li><a href="/index.php/Home/Sports/whbh"><i class="fa fa-vcard  fa-2x"></i><p>文化保护名录</p></a></li>
	</ul>
	<ul>
		<h1>教育工作</h1>
		<li><a href="/index.php/Home/Work/educ"><i class="fa fa-list fa-2x"></i><p>教育</p></a></li>
		<li><a href="/index.php/Home/Work/child"><i class="fa fa-users fa-2x"></i><p>幼儿园基本情况</p></a></li>
		<li><a href="/index.php/Home/Work/food"><i class="fa fa-pie-chart fa-2x"></i><p>学校配餐统计</p></a></li>
	</ul>
	<ul>
		<h1>医疗卫生</h1>
		<li><a href="/index.php/Home/Health/ylwj"><i class="fa fa-heart fa-2x"></i><p>卫计</p></a></li>
		<li><a href="/index.php/Home/Health/ylws"><i class="fa fa-user-md fa-2x"></i><p>卫生</p></a></li>
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