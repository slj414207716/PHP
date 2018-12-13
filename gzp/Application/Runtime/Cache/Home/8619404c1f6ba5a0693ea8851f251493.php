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
	<span>医疗卫生 /卫生/ 单位及注册</span>
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
                <h3>单位及注册统计</h3>
                <div class="div"> 
            <table border="0" cellpadding="0" cellspacing="0" width="640">
              <col width="48" />
              <col width="70" />
              <col width="297" />
              <col width="89" />
              <col width="136" />
              <tr>
                <td width="48">序号</td>
                <td width="70">分类</td>
                <td width="297">单位</td>
                <td width="89">负责人</td>
                <td width="136">地址</td>
              </tr>
              <tr>
                <td>1</td>
                <td rowspan="7" width="70">辖区内医疗单位</td>
                <td width="297">大连市甘井子区革镇堡医院</td>
                <td>刘晓辉</td>
                <td>镇中街</td>
              </tr>
              <tr>
                <td>2</td>
                <td width="297">大连市甘井子区革镇堡中革社区服务站</td>
                <td>刘晓辉</td>
                <td>中革村</td>
              </tr>
              <tr>
                <td>3</td>
                <td width="297">大连市甘井子区革镇堡后革社区服务站</td>
                <td>刘晓辉</td>
                <td>后革村</td>
              </tr>
              <tr>
                <td>4</td>
                <td width="297">大连市甘井子区革镇堡羊圈子社区服务站</td>
                <td>刘晓辉</td>
                <td>羊圈子村</td>
              </tr>
              <tr>
                <td>5</td>
                <td width="297">大连市甘井子区革镇堡夏家河子社区服务站</td>
                <td>刘晓辉</td>
                <td>夏家河子村</td>
              </tr>
              <tr>
                <td>6</td>
                <td width="297">大连市甘井子区革镇堡棋盘子社区服务站</td>
                <td>刘晓辉</td>
                <td>棋盘子村</td>
              </tr>
              <tr>
                <td>7</td>
                <td width="297">大连市甘井子区革镇堡鞍子山社区服务站</td>
                <td>刘晓辉</td>
                <td>鞍子山村</td>
              </tr>
              <tr>
                <td>8</td>
                <td rowspan="9" width="70">辖区内在册诊所（9所）</td>
                <td width="297">大连市甘井子区革镇堡沈红口腔诊所</td>
                <td>沈红</td>
                <td>中革村</td>
              </tr>
              <tr>
                <td>9</td>
                <td width="297">大连市甘井子区革镇堡罗宗全诊所</td>
                <td>罗宗全</td>
                <td>中革村</td>
              </tr>
              <tr>
                <td>10</td>
                <td width="297">大连市甘井子革镇堡慧仁门诊部</td>
                <td>王雪华</td>
                <td>中革村</td>
              </tr>
              <tr>
                <td>11</td>
                <td width="297">大连市甘井子张红玉诊所</td>
                <td>张红玉</td>
                <td>羊圈子村</td>
              </tr>
              <tr>
                <td>12</td>
                <td width="297">大连市甘井子林淑芬诊所</td>
                <td>林淑芬</td>
                <td>棋盘子村</td>
              </tr>
              <tr>
                <td>13</td>
                <td width="297">大连市甘井子金香玉诊所</td>
                <td>金香玉</td>
                <td>鞍子山村</td>
              </tr>
              <tr>
                <td>14</td>
                <td width="297">大连市甘井子李元军内科诊所</td>
                <td>李元军</td>
                <td>鞍子山村</td>
              </tr>
              <tr>
                <td>15</td>
                <td>大连市甘井子鞍子山沙包子诊所</td>
                <td>周桂花</td>
                <td>鞍子山村</td>
              </tr>
              <tr>
                <td>16</td>
                <td>沈阳铁路局大连疗养院</td>
                <td>赵晔</td>
                <td>鞍子山村</td>
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