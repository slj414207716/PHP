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
	<img src="/Public/Home/Static/images/logo.png"  class="logo">
	<span>文化体育 / 农家书屋、社区书屋</span>
</h1>



<script type="text/javascript" src="/Public/<?php echo (MODULE_NAME); ?>/<?php echo (CONTROLLER_NAME); ?>/<?php echo (ACTION_NAME); ?>.js"></script>
<script type="text/javascript" src="/Public/Common/echars/shine.js"></script>

<div id="outer">
<ul id="tab">
	<li><a href="/index.php/Home/Sports/religion">宗教场所</a></li>
	<li><a href="/index.php/Home/Sports/tydw">体育队伍</a></li>
	<li><a href="/index.php/Home/Sports/jsgc">健身广场</a></li>
	<li><a href="/index.php/Home/Sports/whdw">文化队伍</a></li>
	<li><a href="/index.php/Home/Sports/njsw">农家书屋、社区书屋</a></li>
	<li><a href="/index.php/Home/Sports/whhd">文化活动室</a></li>
	<li><a href="/index.php/Home/Sports/whbh">文化保护名录</a></li>
</ul>
    <div id="content">
<!--社会化管理人员情况-->
		<div class="data05">
			<h3 style="color: #fff">当年统计数据</h3>
        	<div id="main1" style="width: 100%;height: 100%"></div>
        </div>	
        <ul style="display:block;">
            <div class="aqsc">
                <h3>农家书屋、社区书屋</h3>
                <div class="div">	   	
        	<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<th scope="col">序号</th>
					<th scope="col">单位</th>
					<th scope="col">图书室数量</th>
					<th scope="col">面积（平方米）</th>
					<th scope="col">藏书数（册）</th>
					<th scope="col">负责人</th>
				</tr>
				<?php  if (is_array($data)) { $__LIST__ = $data;} else { $__LIST__=array(); }if (empty($__LIST__)) { echo "" ; }if (count($__LIST__) > 0) { $i = 0; foreach ($__LIST__ as $key=>$vo) { $mod = ($i % 2 );++$i;?><tr>
					<td><?php echo ++$a?></td>
					<td><?php echo ($vo['name']); ?></td>
					<td><?php echo ($vo['number']); ?></td>
					<td><?php echo ($vo['area']); ?></td>
					<td><?php echo ($vo['sum']); ?></td>
					<td><?php echo ($vo['charge']); ?></td>
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