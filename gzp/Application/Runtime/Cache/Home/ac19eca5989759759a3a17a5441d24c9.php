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
	<span>医疗卫生 /卫生/ 卫生一体化</span>
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
                <h3>卫生一体化统计</h3>
                <div class="div"> 
            <table border="0" cellpadding="0" cellspacing="0" width="998">
                  <col width="72" />
                  <col width="190" />
                  <col width="126" span="2" />
                  <col width="99" />
                  <col width="97" />
                  <col width="77" />
                  <col width="67" />
                  <col width="72" span="2" />
                  <tr>
                    <td colspan="10" width="998">革镇堡街道卫生一体化（革镇堡街道预防接种儿童保健中心）基本情况一览表</td>
                  </tr>
                  <tr>
                    <td rowspan="2" width="72">序号</td>
                    <td rowspan="2" width="190">名称</td>
                    <td rowspan="2" width="126">地址</td>
                    <td colspan="5" width="466">医资力量（人）</td>
                    <td colspan="2" width="144">受众人数（人）</td>
                  </tr>
                  <tr>
                    <td width="126">共计</td>
                    <td width="99">执业医师</td>
                    <td width="97">执业护士</td>
                    <td width="77">药剂师</td>
                    <td width="67">乡医</td>
                    <td width="72">共计</td>
                    <td width="72">户籍人口数</td>
                  </tr>
                  <tr>
                    <td width="72">1</td>
                    <td width="190">羊圈村社区卫生服务站</td>
                    <td width="126">村委会院内</td>
                    <td width="126">3</td>
                    <td width="99">1</td>
                    <td width="97">1</td>
                    <td width="77">1</td>
                    <td width="67">　</td>
                    <td width="72">1341</td>
                    <td width="72">507</td>
                  </tr>
                  <tr>
                    <td width="72">2</td>
                    <td width="190">夏家河村社区卫生服务站</td>
                    <td width="126">村委会院内</td>
                    <td width="126">2</td>
                    <td width="99">　</td>
                    <td width="97">　</td>
                    <td width="77">　</td>
                    <td width="67">2</td>
                    <td width="72">2632</td>
                    <td width="72">1606</td>
                  </tr>
                  <tr>
                    <td width="72">3</td>
                    <td width="190">鞍子山村社区卫生服务站</td>
                    <td width="126">鞍子山村177号（老村委会）</td>
                    <td width="126">2</td>
                    <td width="99">1</td>
                    <td width="97">1</td>
                    <td width="77">　</td>
                    <td width="67">　</td>
                    <td width="72">1996</td>
                    <td width="72">750</td>
                  </tr>
                  <tr>
                    <td width="72">4</td>
                    <td width="190">棋盘村社区卫生服务站</td>
                    <td width="126">棋盛园25号公建</td>
                    <td width="126">3</td>
                    <td width="99">1</td>
                    <td width="97">2</td>
                    <td width="77">　</td>
                    <td width="67">　</td>
                    <td width="72">3309</td>
                    <td width="72">1165</td>
                  </tr>
                  <tr>
                    <td width="72">5</td>
                    <td width="190">中革村社区卫生服务站（革镇堡街道预防接种儿童保健中心）</td>
                    <td width="126">槐屹街34号</td>
                    <td width="126">7</td>
                    <td width="99">1</td>
                    <td width="97">6</td>
                    <td width="77">　</td>
                    <td width="67">　</td>
                    <td width="72">4797</td>
                    <td width="72">1693</td>
                  </tr>
                  <tr>
                    <td width="72">6</td>
                    <td width="190">后革村社区卫生服务站</td>
                    <td width="126">后革街344号</td>
                    <td width="126">3</td>
                    <td width="99">1</td>
                    <td width="97">2</td>
                    <td width="77">　</td>
                    <td width="67">　</td>
                    <td width="72">2716</td>
                    <td width="72">1043</td>
                  </tr>
                  <tr>
                    <td colspan="3" width="388">合计</td>
                    <td width="126">20</td>
                    <td width="99">5</td>
                    <td width="97">12</td>
                    <td width="77">1</td>
                    <td width="67">2</td>
                    <td width="72">16791</td>
                    <td width="72">6764</td>
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