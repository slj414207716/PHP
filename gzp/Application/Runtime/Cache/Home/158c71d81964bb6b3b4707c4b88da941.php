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
	<span>民生保障 / 少数民族统计</span>
</h1>


<link rel="stylesheet" href="/Public/<?php echo (MODULE_NAME); ?>/<?php echo (CONTROLLER_NAME); ?>/<?php echo (ACTION_NAME); ?>.css" />
<style>
.data h3{margin: 0px 0px 20px 0px};
</style>
<script type="text/javascript" src="/Public/<?php echo (MODULE_NAME); ?>/<?php echo (CONTROLLER_NAME); ?>/<?php echo (ACTION_NAME); ?>.js"></script>
<script type="text/javascript">
    var key = '';
    key = '<?php echo $key; ?>';
    var value = '';
    value = '<?php echo $value; ?>';

</script>
<div id="outer">
<ul id="tab">
	<li><a href="/index.php/Home/People/social">2018社会化管理人员</a></li>
	<li><a href="/index.php/Home/People/msbz">2018待遇资格认证人员</a></li>
	<li><a href="/index.php/Home/People/job">就业和失业</a></li>
	<li><a href="/index.php/Home/People/degree">残疾程度</a></li>
	<li><a href="/index.php/Home/People/canji">残疾类别</a></li>
	<li><a href="/index.php/Home/People/cadre">村（社区）干部</a></li>
	<li><a href="/index.php/Home/People/aged">居家养老中心</a></li>
	<li><a href="/index.php/Home/People/old">60岁及以上老年人口</a></li>
	<!--{* <li><a href="/index.php/Home/Safety/feedback">部门建议</a></li> *}-->
	<li><a href="/index.php/Home/People/nation">少数民族统计</a></li>
</ul>
    <div id="content">
        	<div class="data">
        		<H3 style="color: #fff;">各少数民族数据</H3>
        		<div id="canji1" style="width: 100%; height: 100%; margin: auto;"></div>
        	</div>
       		<div class="data">
       			<H3 style="color: #fff;">各村少数民族总人数</H3>
       			<div id="canji2" style="width: 100%; height: 100%; margin: auto;"></div>
       		</div>
            <ul style="display:block;">
            <div class="aqsc">
                <h3>少数民族统计</h3>
                <div class="div"> 
        	<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<th scope="col">单位</th>
					<th scope="col">满族</th>
                    <th scope="col">壮族</th>
                    <th scope="col">蒙古</th>
                    <th scope="col">回族</th>
                    <th scope="col">朝鲜族</th>
                    <th scope="col">锡伯族</th>
                    <th scope="col">达翰尔</th>
                    <th scope="col">合计</th>
				</tr>
				<?php  if (is_array($data)) { $__LIST__ = $data;} else { $__LIST__=array(); }if (empty($__LIST__)) { echo "" ; }if (count($__LIST__) > 0) { $i = 0; foreach ($__LIST__ as $key=>$v) { $mod = ($i % 2 );++$i;?><tr>
					<td><?php echo ($v['name']); ?></td>
					<td><?php echo ($v['man']); ?></td>
                    <td><?php echo ($v['zhuang']); ?></td>
                    <td><?php echo ($v['meng']); ?></td>
                    <td><?php echo ($v['hui']); ?></td>
                    <td><?php echo ($v['chaoxian']); ?></td>
                    <td><?php echo ($v['xibo']); ?></td>
                    <td><?php echo ($v['dhe']); ?></td>
                    <td></td>
				</tr><?php } } ?>
                <tr>
                    <th scope="col">合计</th>
                    <th scope="col"></th>
                    <th scope="col"></th>
                    <th scope="col"></th>
                    <th scope="col"></th>
                    <th scope="col"></th>
                    <th scope="col"></th>
                    <th scope="col"></th>
                    <th scope="col"></th>
                </tr>
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