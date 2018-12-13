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
	<span>民生保障 / 待遇资格认证人员</span>
</h1>



<script type="text/javascript" src="/Public/<?php echo (MODULE_NAME); ?>/<?php echo (CONTROLLER_NAME); ?>/<?php echo (ACTION_NAME); ?>.js"></script>
<script type="text/javascript" src="/Public/Common/echars/shine.js"></script>

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
    <ul style="display:block;">
            <div class="aqsc">
                <h3>待遇资格认证人员表</h3>
                <div class="div">  	
    <table border=0 width="100%" cellpadding="0" cellspacing="0">
       <h2 style=" font-weight:normal; margin-bottom:10px;" align="center">2018 年待遇资格认证人员情况统计报表</h2>
			  <tr>
			    <td colspan="2" rowspan="3" style="padding:0;"><img src="/Public/Home/Static/images/table.png" width="100%"></td>
			    <td colspan="10">人员变动情况统计</td>
			    <td rowspan="3">本月末管理人数</td>
			  </tr>
			  <tr>
			    <td colspan="5">其中：增加人数</td>
			    <td colspan="5">其中：减少人数</td>
			  </tr>
			  <tr>
			    <td>小计</td>
			    <td>新接收人数</td>
			    <td>跨区转入</td>
			    <td>区内转入</td>
			    <td>其他</td>
			    <td>小计</td>
			    <td>死亡</td>
			    <td>跨区转出</td>
			    <td>区内转出</td>
			    <td>其他</td>
			  </tr>
			  <tr>
			    <td colspan="2">甲</td>
			    <td>2</td>
			    <td>3</td>
			    <td>4</td>
			    <td>5</td>
			    <td>6</td>
			    <td>7</td>
			    <td>8</td>
			    <td>9</td>
			    <td>10</td>
			    <td>11</td>
			    <td>12</td>
			  </tr>
			  <tr>
			    <td>事业</td>
			    <td>退休人员</td>
			    <td>　</td>
			    <td>　</td>
			    <td>　</td>
			    <td>　</td>
			    <td>　</td>
			    <td>　</td>
			    <td>　</td>
			    <td>　</td>
			    <td>　</td>
			    <td>　</td>
			    <td>104</td>
			  </tr>
			  <tr>
			    <td>单位</td>
			    <td>遗属</td>
			    <td>　</td>
			    <td>　</td>
			    <td>　</td>
			    <td>　</td>
			    <td>　</td>
			    <td>　</td>
			    <td>　</td>
			    <td>　</td>
			    <td>　</td>
			    <td>　</td>
			    <td>10</td>
			  </tr>
			  <tr>
			    <td> 医</td>
			    <td>工伤人员</td>
			    <td>　</td>
			    <td>　</td>
			    <td>　</td>
			    <td>　</td>
			    <td>　</td>
			    <td>　</td>
			    <td>　</td>
			    <td>　</td>
			    <td>　</td>
			    <td>　</td>
			    <td>　</td>
			  </tr>
			  <tr>
			    <td> 保</td>
			    <td>工伤遗属</td>
			    <td>　</td>
			    <td>　</td>
			    <td>　</td>
			    <td>　</td>
			    <td>　</td>
			    <td>　</td>
			    <td>　</td>
			    <td>　</td>
			    <td>　</td>
			    <td>　</td>
			    <td>　</td>
			  </tr>
			  <tr>
			    <td>　</td>
			    <td>老年居民</td>
			    <td>　</td>
			    <td>1</td>
			    <td>　</td>
			    <td>　</td>
			    <td>　</td>
			    <td>　</td>
			    <td>11</td>
			    <td>　</td>
			    <td>　</td>
			    <td>　</td>
			    <td>2314</td>
			  </tr>
			  <tr>
			    <td colspan="2">　</td>
			    <td>　</td>
			    <td>　</td>
			    <td>　</td>
			    <td>　</td>
			    <td>　</td>
			    <td>　</td>
			    <td>　</td>
			    <td>　</td>
			    <td>　</td>
			    <td>　</td>
			    <td>　</td>
			  </tr>
			  <tr>
			    <td colspan="2">合计</td>
			    <td>　</td>
			    <td>　</td>
			    <td>　</td>
			    <td>　</td>
			    <td>　</td>
			    <td>　</td>
			    <td>　</td>
			    <td>　</td>
			    <td>　</td>
			    <td>　</td>
			    <td>2428</td>
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