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
	<span>医疗卫生 /卫生/ 医院基本情况</span>
</h1>


<link rel="stylesheet" href="/Public/<?php echo (MODULE_NAME); ?>/<?php echo (CONTROLLER_NAME); ?>/<?php echo (ACTION_NAME); ?>.css" />

<script type="text/javascript" src="/Public/<?php echo (MODULE_NAME); ?>/<?php echo (CONTROLLER_NAME); ?>/<?php echo (ACTION_NAME); ?>.js"></script>
<script type="text/javascript">

</script>
<div id="outer">
<ul id="tab">
	<li><a href="/index.php/Home/Health/hosp">医院基本情况</a></li>
	<li><a href="/index.php/Home/Health/wsyt">卫生一体化</a></li>
	<li><a href="/index.php/Home/Health/constr">投入医疗卫生建设</a></li>
	<li><a href="/index.php/Home/Health/clinic">单位及注册诊所</a></li>
	<li><a href="/index.php/Home/Health/bond">医养结合</a></li>
</ul>
    <div id="content">
            <div class="data">
                <H3 style="color: #fff;">近五年数据</H3>
                <div id="main1" style="width: 100%; height: 100%; margin: auto;"></div>
            </div>
            <div class="data">
                <H3 style="color: #fff;">本年数据</H3>
                <div id="main2" style="width: 100%; height: 100%; margin: auto;"></div>
            </div>
            <ul style="display:block;">
            <div class="aqsc">
                <h3>医院基本情况统计</h3>
                <div class="div"> 
            <table border="0" cellpadding="0" cellspacing="0" width="816">
                  <col width="81" />
                  <col width="76" />
                  <col width="86" />
                  <col width="72" />
                  <col width="98" />
                  <col width="97" />
                  <col width="94" span="2" />
                  <col width="118" />
                  <tr>
                    <td colspan="9" width="816">革镇堡街道地区医院基本情况一览表</td>
                  </tr>
                  <tr>
                    <td rowspan="3" width="81">建筑面积（㎡）</td>
                    <td colspan="2">科室安排</td>
                    <td colspan="6">医资力量</td>
                  </tr>
                  <tr>
                    <td rowspan="2">功能科室</td>
                    <td rowspan="2">行政科室</td>
                    <td rowspan="2">共计</td>
                    <td rowspan="2" width="98">执业医师</td>
                    <td>　</td>
                    <td rowspan="2" width="94">执业护士</td>
                    <td>　</td>
                    <td rowspan="2" width="118">管理及其他</td>
                  </tr>
                  <tr>
                    <td>全科医师</td>
                    <td>全科护士</td>
                  </tr>
                  <tr>
                    <td>2707</td>
                    <td>13</td>
                    <td>4</td>
                    <td>70</td>
                    <td>29</td>
                    <td>9</td>
                    <td>17</td>
                    <td>9</td>
                    <td>24</td>
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