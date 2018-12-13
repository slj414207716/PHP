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
	<span>民生保障 / 往年残疾程度</span>
</h1>


<link rel="stylesheet" href="/Public/<?php echo (MODULE_NAME); ?>/<?php echo (CONTROLLER_NAME); ?>/<?php echo (ACTION_NAME); ?>.css" />

<script type="text/javascript" src="/Public/<?php echo (MODULE_NAME); ?>/<?php echo (CONTROLLER_NAME); ?>/<?php echo (ACTION_NAME); ?>.js"></script>
<script type="text/javascript">
</script>
<div id="outer">
    <div id="content">
        	<div class="data">
        		<H3 style="color: #fff">革镇堡历年数据</H3>
        		<div id="main1" style="width: 100%; height: 100%; margin: auto;"></div>
        	</div>
            <div class="data">
                <H3 style="color: #fff">革镇堡历年数据</H3>
                <div id="main2" style="width: 100%; height: 100%; margin: auto;"></div>
            </div>
            <ul style="display:block;">
            <div class="aqsc">
                <h3>残疾类别统计</h3>
                <div class="div"> 
        	<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<th scope="col">年份</th>
					<th scope="col">总人数</th>
                    <th scope="col">总户数</th>
                    <th scope="col">享受低保人数</th>
                    <th scope="col">重度残疾</th>
                    <th scope="col">非重度残疾</th>
                    <th scope="col">编辑</th>
				</tr>
				<?php  if (is_array($yData)) { $__LIST__ = $yData;} else { $__LIST__=array(); }if (empty($__LIST__)) { echo "" ; }if (count($__LIST__) > 0) { $i = 0; foreach ($__LIST__ as $key=>$v) { $mod = ($i % 2 );++$i;?><tr>
					<td><?php echo ($v['year']); ?></td>
					<td><?php echo ($v['number']); ?></td>
                    <td><?php echo ($v['sum']); ?></td>
                    <td><?php echo ($v['number1']); ?></td>
                    <td><?php echo ($v['sum1']); ?></td>
                    <td><?php echo ($v['sum_number']); ?></td>
                    <td><a class="search1" href="<?php echo (HOST_NAME); ?>/Home/People/canjiMonth/year/<?php echo ($v['year']); ?>">查看</a></td>
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