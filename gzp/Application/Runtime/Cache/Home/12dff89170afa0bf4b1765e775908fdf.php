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
	<span>医疗卫生 /卫生/ 投入医疗卫生建设</span>
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
                <h3>卫生建设统计</h3>
                <div class="div"> 
            <table border="0" cellpadding="0" cellspacing="0" width="973">
                  <col width="82" />
                  <col width="99" />
                  <col width="89" />
                  <col width="69" span="3" />
                  <col width="86" />
                  <col width="69" />
                  <col width="245" />
                  <col width="96" />
                  <tr>
                    <td colspan="10" width="973">革镇堡街道办事处投入医疗卫生建设情况</td>
                  </tr>
                  <tr>
                    <td colspan="10">单位：万元</td>
                  </tr>
                  <tr>
                    <td rowspan="3">年度</td>
                    <td colspan="7">对地区医院投资情况</td>
                    <td rowspan="3" width="245">一体化项目投资情况</td>
                    <td rowspan="3">年度合计</td>
                  </tr>
                  <tr>
                    <td colspan="2">新增设备</td>
                    <td colspan="2">设备维护</td>
                    <td colspan="2">就医环境改善</td>
                    <td rowspan="2">补助</td>
                  </tr>
                  <tr>
                    <td>项目</td>
                    <td>资金</td>
                    <td>项目</td>
                    <td>资金</td>
                    <td>项目</td>
                    <td>资金</td>
                  </tr>
                  <tr>
                    <td>2014年</td>
                    <td>DR机</td>
                    <td>108</td>
                    <td width="69">现有所有设备</td>
                    <td>19</td>
                    <td>　</td>
                    <td>　</td>
                    <td>　</td>
                    <td width="245">　</td>
                    <td>127</td>
                  </tr>
                  <tr>
                    <td>2015年</td>
                    <td>　</td>
                    <td>　</td>
                    <td>　</td>
                    <td>　</td>
                    <td>食堂装修</td>
                    <td>40</td>
                    <td>50</td>
                    <td width="245">　</td>
                    <td>90</td>
                  </tr>
                  <tr>
                    <td>2016年</td>
                    <td>超声机</td>
                    <td>139.2</td>
                    <td>　</td>
                    <td>　</td>
                    <td>供暖</td>
                    <td>30.2</td>
                    <td>45</td>
                    <td width="245">50</td>
                    <td>264.4</td>
                  </tr>
                  <tr>
                    <td>2017年</td>
                    <td>生化仪</td>
                    <td>59.8</td>
                    <td>　</td>
                    <td>　</td>
                    <td width="69">停车场&nbsp; 及电梯</td>
                    <td>46.25</td>
                    <td>　</td>
                    <td width="245">155（含革镇堡街道预防接种儿童保健中心项目资金）</td>
                    <td>261.05</td>
                  </tr>
                  <tr>
                    <td>2018年</td>
                    <td>　</td>
                    <td>　</td>
                    <td>　</td>
                    <td>　</td>
                    <td width="69">医院外立面及门窗改造</td>
                    <td>约195</td>
                    <td>　</td>
                    <td width="245">135</td>
                    <td>330</td>
                  </tr>
                  <tr>
                    <td>合计</td>
                    <td>　</td>
                    <td>307</td>
                    <td>　</td>
                    <td>19</td>
                    <td>　</td>
                    <td>311.45</td>
                    <td>95</td>
                    <td width="245">340</td>
                    <td>1072.45</td>
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