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
	<span>民生保障 / 村（社区）干部</span>
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
        		<H3 style="color:#fff;">村（社区）干部数据</H3>
        		<div id="main1" style="width: 100%; height: 100%; margin: auto;"></div>
        	</div>
       		<div class="data">
       			<H3 style="color:#fff;">数据比例</H3>
       			<div id="main2" style="width: 100%; height: 100%; margin: auto;"></div>
       		</div>
        	<ul style="display:block;">
            <div class="aqsc">
                <h3>村（社区）干部统计</h3>
                <div class="div"> 
                  <table width="720" border="0" cellpadding="0" cellspacing="0">                     
                    <col width="72" span="10"/>
                    <tr height="18">
                      <td height="36" width="72" rowspan="2" x:str="x:str"><div align="center">单位</div></td>
                      <td width="72" rowspan="2" x:str="x:str"><div align="center">总人数</div></td>
                      <td width="216" colspan="3" x:str="x:str"><div align="center">年龄情况</div></td>
                      <td width="216" colspan="3" x:str="x:str"><div align="center">学历情况</div></td>
                      <td width="144" colspan="2" x:str="x:str"><div align="center">性别情况</div></td>
                    </tr>
                    <tr height="18">
                      <td x:str="x:str"><div align="center">35岁以下</div></td>
                      <td x:str="x:str"><div align="center">36-49岁</div></td>
                      <td x:str="x:str"><div align="center">50岁以上</div></td>
                      <td x:str="x:str"><div align="center">高中及其他</div></td>
                      <td x:str="x:str"><div align="center">大专以上</div></td>
                      <td x:str="x:str"><div align="center">研究生</div></td>
                      <td x:str="x:str"><div align="center">男</div></td>
                      <td x:str="x:str"><div align="center">女</div></td>
                    </tr>
                    <tr height="18">
                      <td height="18" x:str="x:str"><div align="center">渤海社区</div></td>
                      <td x:num="x:num"><div align="center">3</div></td>
                      <td><div align="center"></div></td>
                      <td x:num="x:num"><div align="center">1</div></td>
                      <td x:num="x:num"><div align="center">2</div></td>
                      <td x:num="x:num"><div align="center">2</div></td>
                      <td x:num="x:num"><div align="center">1</div></td>
                      <td><div align="center"></div></td>
                      <td x:num="x:num"><div align="center">1</div></td>
                      <td x:num="x:num"><div align="center">2</div></td>
                    </tr>
                    <tr height="18">
                      <td height="18" x:str="x:str"><div align="center">中革村</div></td>
                      <td x:num="x:num"><div align="center">7</div></td>
                      <td><div align="center"></div></td>
                      <td x:num="x:num"><div align="center">5</div></td>
                      <td x:num="x:num"><div align="center">2</div></td>
                      <td><div align="center"></div></td>
                      <td><div align="center"></div></td>
                      <td><div align="center"></div></td>
                      <td><div align="center"></div></td>
                      <td x:num="x:num"><div align="center">1</div></td>
                    </tr>
                    <tr height="18">
                      <td height="18" x:str="x:str"><div align="center">后革村</div></td>
                      <td x:num="x:num"><div align="center">7</div></td>
                      <td x:num="x:num"><div align="center">1</div></td>
                      <td x:num="x:num"><div align="center">5</div></td>
                      <td x:num="x:num"><div align="center">1</div></td>
                      <td><div align="center"></div></td>
                      <td x:num="x:num"><div align="center">7</div></td>
                      <td><div align="center"></div></td>
                      <td x:num="x:num"><div align="center">4</div></td>
                      <td x:num="x:num"><div align="center">3</div></td>
                    </tr>
                    <tr height="18">
                      <td height="18" x:str="x:str"><div align="center">夏家河村</div></td>
                      <td x:num="x:num"><div align="center">5</div></td>
                      <td x:num="x:num"><div align="center">1</div></td>
                      <td x:num="x:num"><div align="center">3</div></td>
                      <td x:num="x:num"><div align="center">1</div></td>
                      <td><div align="center"></div></td>
                      <td x:num="x:num"><div align="center">5</div></td>
                      <td><div align="center"></div></td>
                      <td x:num="x:num"><div align="center">4</div></td>
                      <td x:num="x:num"><div align="center">1</div></td>
                    </tr>
                    <tr height="18">
                      <td height="18" x:str="x:str"><div align="center">羊圈村</div></td>
                      <td x:num="x:num"><div align="center">7</div></td>
                      <td><div align="center"></div></td>
                      <td x:num="x:num"><div align="center">4</div></td>
                      <td x:num="x:num"><div align="center">3</div></td>
                      <td><div align="center"></div></td>
                      <td x:num="x:num"><div align="center">7</div></td>
                      <td><div align="center"></div></td>
                      <td x:num="x:num"><div align="center">6</div></td>
                      <td x:num="x:num"><div align="center">1</div></td>
                    </tr>
                    <tr height="18">
                      <td height="18" x:str="x:str"><div align="center">棋盘村</div></td>
                      <td x:num="x:num"><div align="center">5</div></td>
                      <td><div align="center"></div></td>
                      <td x:num="x:num"><div align="center">2</div></td>
                      <td x:num="x:num"><div align="center">3</div></td>
                      <td><div align="center"></div></td>
                      <td x:num="x:num"><div align="center">5</div></td>
                      <td><div align="center"></div></td>
                      <td x:num="x:num"><div align="center">3</div></td>
                      <td x:num="x:num"><div align="center">2</div></td>
                    </tr>
                    <tr height="18">
                      <td height="18" x:str="x:str"><div align="center">鞍子山村</div></td>
                      <td x:num="x:num"><div align="center">7</div></td>
                      <td><div align="center"></div></td>
                      <td x:num="x:num"><div align="center">3</div></td>
                      <td x:num="x:num"><div align="center">4</div></td>
                      <td><div align="center"></div></td>
                      <td x:num="x:num"><div align="center">7</div></td>
                      <td><div align="center"></div></td>
                      <td x:num="x:num"><div align="center">6</div></td>
                      <td x:num="x:num"><div align="center">1</div></td>
                    </tr>
                    <tr height="18">
                      <td height="18" x:str="x:str"><div align="center">合计</div></td>
                      <td x:fmla="=SUM(B3:B9)" x:num="x:num"><div align="center">41</div></td>
                      <td x:fmla="=SUM(C3:C9)" x:num="x:num"><div align="center">2</div></td>
                      <td x:fmla="=SUM(D3:D9)" x:num="x:num"><div align="center">23</div></td>
                      <td x:fmla="=SUM(E3:E9)" x:num="x:num"><div align="center">16</div></td>
                      <td x:fmla="=SUM(F3:F9)" x:num="x:num"><div align="center">2</div></td>
                      <td x:fmla="=SUM(G3:G9)" x:num="x:num"><div align="center">32</div></td>
                      <td x:fmla="=SUM(H3:H9)" x:num="x:num"><div align="center">0</div></td>
                      <td x:fmla="=SUM(I3:I9)" x:num="x:num"><div align="center">24</div></td>
                      <td x:fmla="=SUM(J3:J9)" x:num="x:num"><div align="center">11</div></td>
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