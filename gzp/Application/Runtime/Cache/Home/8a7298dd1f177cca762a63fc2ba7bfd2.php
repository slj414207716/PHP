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
	<a href="#" onclick="javascript:history.back(-1);"><i class="fa fa-arrow-circle-left"></i></a>
	<img src="/Public/Home/Static/images/logo.png"  class="logo">
	<span>城市管理 / 城建项目</span>
</h1>


<link rel="stylesheet" href="/Public/Home/Static/css/style2.css"/>

<div id="outer">
	<ul id="tab">
	<li><a href="/index.php/Home/City/chengjianxiangmu">城建项目</a></li>
	<li><a href="/index.php/Home/City/yicunyijing">一村一景</a></li>
	<li><a href="/index.php/Home/City/lvhua">绿化</a></li>
	<li><a href="/index.php/Home/City/saobao">环卫扫保</a></li>
	<li><a href="/index.php/Home/City/weijian">违建项目</a></li>
	<li><a href="/index.php/Home/City/gonglu">交通</a></li>
	<li><a href="/index.php/Home/City/wuyeguanli">物业管理</a></li>
	<!--{* <li><a href="/index.php/Home/City/feedback">部门建议</a></li> *}-->
	<li><a href="/index.php/Home/City/chengshisafe">安全上报</a></li>
</ul>
	<div id="content">
		<ul style="display:block;">
			<div class="aqsc">
				<h3>城建项目</h3>
				<div class="div">

					<script type="text/javascript">
						var current_start_year  = "<?php echo ($current_start_year); ?>";
						var current_start_month = "<?php echo ($current_start_month); ?>";
						var current_end_year    = "<?php echo ($current_end_year); ?>";
						var current_end_month   = "<?php echo ($current_end_month); ?>";
						var amount_data         = <?php echo ($amount_data); ?>;
						var type_data           = <?php echo ($type_data); ?>;
						var progress_data       = <?php echo ($progress_data); ?>;
					</script>

					<table border=1 class="sys_table">
						<tr>
							<th>项目</th>
							<th>责任部门</th>
							<th>责任领导</th>
							<th><?php echo ($time[0]); ?>月</th>
							<th><?php echo ($time[1]); ?>月</th>
							<th><?php echo ($time[2]); ?>月</th>
							<th><?php echo ($time[3]); ?>月</th>
						</tr>
						<!--<?php dump($data) ?>-->
						<?php  if (is_array($data)) { $__LIST__ = $data;} else { $__LIST__=array(); }if (empty($__LIST__)) { echo "" ; }if (count($__LIST__) > 0) { $i = 0; foreach ($__LIST__ as $key=>$vo) { $mod = ($i % 2 );++$i;?><tr>
								<td align="center"><?php echo ($vo['project']); ?></td>
								<td align="center"><?php echo ($vo['responsible_department']); ?></td>
								<td align="center"><?php echo ($vo['responsible_leadership']); ?></td>
								<td align="center"><?php echo ($vo['2018-03']); ?></td>
								<td align="center"><?php echo ($vo['2018-04']); ?></td>
								<td align="center"><?php echo ($vo['2018-05']); ?></td>
								<td align="center"><?php echo ($vo['2018-06']); ?></td>
							</tr><?php } } ?>
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