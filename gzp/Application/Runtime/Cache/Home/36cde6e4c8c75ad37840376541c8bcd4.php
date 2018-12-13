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
	<span>医疗卫生 /卫生/ 医养结合</span>
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
                <h3>医养结合统计</h3>
                <div class="div"> 
            <table border="0" cellpadding="0" cellspacing="0" width="1260">
                  <col width="52" />
                  <col width="325" />
                  <col width="139" />
                  <col width="370" />
                  <col width="158" />
                  <col width="72" span="3" />
                  <tr>
                    <td width="52">序号</td>
                    <td width="325">名称</td>
                    <td width="139">地址</td>
                    <td width="370">开展项目</td>
                    <td width="158">受众人数</td>
                  </tr>
                  <tr>
                    <td>1</td>
                    <td>大连市甘井子区金牛山庄休闲养老福利院</td>
                    <td>夏家河村</td>
                    <td rowspan="6" width="370">1、摸清新入住的老年人健康状况，建立健康档案<br />
                      2、全面监测、分析、评估老人的健康数据，对有问题的老人进行指导、咨询、危险因素干预，制定针对性的综合诊疗方案。<br />
                      3、每周开展一次上门诊视、健康查体、慢性病管理、保健咨询等。<br />
                      4、急性病需住院的提供救护车接送，并与就诊医院合作开通绿色通道，让老人及时得到救治</td>
                    <td>36</td>
                  </tr>
                  <tr>
                    <td>2</td>
                    <td>大连市甘井子区革镇堡蓝天养老院</td>
                    <td>夏家河村</td>
                    <td>169</td>
                  </tr>
                  <tr>
                    <td>3</td>
                    <td>大连甘井子阳光养老中心</td>
                    <td>鞍子山村</td>
                    <td>37</td>
                  </tr>
                  <tr>
                    <td>4</td>
                    <td>大连市甘井子区春阳养老院</td>
                    <td>鞍子山村</td>
                    <td>46</td>
                  </tr>
                  <tr>
                    <td>5</td>
                    <td>大连市甘井子区革镇堡镇敬老院</td>
                    <td>中革村</td>
                    <td>120</td>
                  </tr>
                  <tr>
                    <td>6</td>
                    <td>大连市甘井子区敬爱之乡养老院</td>
                    <td>夏家河村</td>
                    <td>10</td>
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