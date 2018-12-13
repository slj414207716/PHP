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


<link rel="stylesheet" href="/Public/<?php echo (MODULE_NAME); ?>/<?php echo (CONTROLLER_NAME); ?>/<?php echo (ACTION_NAME); ?>.css" />
<style>
.data h3{margin: 0px 0px 20px 0px};
</style>
<script type="text/javascript" src="/Public/<?php echo (MODULE_NAME); ?>/<?php echo (CONTROLLER_NAME); ?>/<?php echo (ACTION_NAME); ?>.js"></script>
<script type="text/javascript">

</script>
<div id="outer">
<ul id="tab">
	<li><a href="/index.php/Home/Work/stude">师生情况统计</a></li>
	<li><a href="/index.php/Home/Work/invest">教育投资情况</a></li>
	<li><a href="/index.php/Home/Work/tercel">办学特色</a></li>
</ul>
    <div id="content">
        	<div class="data">
        		<H3>近五年数据</H3>
        		<div id="party1"></div>
        	</div>
       		<div class="data">
       			<H3>本年数据</H3>
       			<div id="party2"></div>
       		</div>
        	<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<th scope="col">年份</th>
                        <th scope="col">大专以下</th>
                        <th scope="col">大专及以上</th>
                        <th scope="col">机关事业单位</th>
                        <th scope="col">农村</th>
                        <th scope="col">非公企</th>
				</tr>
				<?php  if (is_array($data)) { $__LIST__ = $data;} else { $__LIST__=array(); }if (empty($__LIST__)) { echo "" ; }if (count($__LIST__) > 0) { $i = 0; foreach ($__LIST__ as $key=>$v) { $mod = ($i % 2 );++$i;?><tr>
					<td><?php echo ($key); ?>年</td>
 
                        <td><?php echo ($v['大专以下']); ?>人</td>
                        <td><?php echo ($v['大专及以上']); ?>人</td>
       
				</tr><?php } } ?>
                <tr>
                    <th colspan="4" style="text-align:right">
                        <a class="search1" href="<?php echo (HOST_NAME); ?>/Home/Work/year/sid/<?php echo ($_GET['sid']); ?>">年度数据查询</a>
                    </th>
                </tr>
			</table>
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