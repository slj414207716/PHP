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
	<span>教育工作 / 教育 / 办学特色</span>
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
            <ul style="display:block;">
            <div class="aqsc">
                <h3>办学特色</h3>
                <div class="div">
                  <table width="100%" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                    <th scope="col">序号</th>
                    <th scope="col">单位</th>
                    <th scope="col">特色名称</th>
                    <th scope="col">项目简介</th>
                    <th scope="col">参与学生人数</th>
                    <th scope="col">取得的主要成绩及荣誉</th>
                </tr>
                <?php  if (is_array($data)) { $__LIST__ = $data;} else { $__LIST__=array(); }if (empty($__LIST__)) { echo "" ; }if (count($__LIST__) > 0) { $i = 0; foreach ($__LIST__ as $key=>$vo) { $mod = ($i % 2 );++$i;?><tr>
                    <td><?php echo ++$a?></td>
                    <td><?php echo ($vo['name']); ?></td>
                    <td><?php echo ($vo['tsmc']); ?></td>
                    <td><?php echo ($vo['xmjj']); ?></td>
                    <td><?php echo ($vo['number']); ?></td>
                    <td><?php echo ($vo['honor']); ?></td>
                </tr><?php } } ?>
                    <tr>
                        <th scope="col">合计</th>
                        <th colspan="5" scope="col">
                            参与学生人数：<?php echo ($sum); ?>
                        </th>
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