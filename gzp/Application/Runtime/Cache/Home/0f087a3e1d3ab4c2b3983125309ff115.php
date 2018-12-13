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
	<span>民生保障 / 60岁及以上老年人口</span>
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
        		<H3 style="color: #fff;">男女人口数据</H3>
        		<div id="main1" style="width: 100%; height: 100%; margin: auto;"></div>
        	</div>
       		<div class="data">
       			<H3 style="color: #fff;">总人口数据比例</H3>
       			<div id="main2" style="width: 100%; height: 100%; margin: auto;"></div>
       		</div>
      <ul style="display:block;">
            <div class="aqsc">
                <h3>60岁及以上老年人口统计</h3>
                <div class="div"> 
                  <table width="2516" border="0" cellpadding="0" cellspacing="0">
                    <col width="48"/>
                    <col width="188"/>
                    <col width="147"/>
                    <col width="105"/>
                    <col width="486"/>
                    <col width="174"/>
                    <col width="72" span="19"/>
                    <tr height="19">
                      <td height="109.67" width="48" rowspan="3" x:str="x:str"><div align="center">单位</div></td>
                      <td width="188" rowspan="3" x:str="x:str"><div align="center">年末总人口数（人）</div></td>
                      <td width="2280" colspan="23" x:str="x:str"><div align="center">革镇堡街道60岁及以上老年人口数（人）</div></td>
                    </tr>
                    <tr height="58.67">
                      <td colspan="4" x:str="x:str"><div align="center">60岁以上老年人口数　　　　　</div></td>
                      <td colspan="4" x:str="x:str"><div align="center">65岁以上老年人口数&nbsp;&nbsp;</div></td>
                      <td colspan="4" x:str="x:str"><div align="center">70岁以上老年人口数&nbsp;&nbsp;</div></td>
                      <td colspan="4" x:str="x:str"><div align="center">80岁以上老年人口数&nbsp;&nbsp;</div></td>
                      <td colspan="4" x:str="x:str"><div align="center">90岁以上老年人口数&nbsp;</div></td>
                      <td colspan="3" x:str="x:str"><div align="center">100岁以上老年人口数</div></td>
                    </tr>
                    <tr height="32">
                      <td x:str="x:str"><div align="center">合计</div></td>
                      <td x:str="x:str"><div align="center">男</div></td>
                      <td x:str="x:str"><div align="center">女</div></td>
                      <td x:str="x:str"><div align="center">占户籍人口比例</div></td>
                      <td x:str="x:str"><div align="center">合计</div></td>
                      <td x:str="x:str"><div align="center">男</div></td>
                      <td x:str="x:str"><div align="center">女</div></td>
                      <td x:str="x:str"><div align="center">占户籍人口比例</div></td>
                      <td x:str="x:str"><div align="center">合计</div></td>
                      <td x:str="x:str"><div align="center">男</div></td>
                      <td x:str="x:str"><div align="center">女</div></td>
                      <td x:str="x:str"><div align="center">占户籍人口比例</div></td>
                      <td x:str="x:str"><div align="center">合计</div></td>
                      <td x:str="x:str"><div align="center">男</div></td>
                      <td x:str="x:str"><div align="center">女</div></td>
                      <td x:str="x:str"><div align="center">占户籍人口比例</div></td>
                      <td x:str="x:str"><div align="center">合计</div></td>
                      <td x:str="x:str"><div align="center">男</div></td>
                      <td x:str="x:str"><div align="center">女</div></td>
                      <td x:str="x:str"><div align="center">占户籍人口比例</div></td>
                      <td x:str="x:str"><div align="center">合计</div></td>
                      <td x:str="x:str"><div align="center">男</div></td>
                      <td x:str="x:str"><div align="center">女</div></td>
                    </tr>
                    <tr height="18">
                      <td height="18" x:str="x:str"><div align="center">中革</div></td>
                      <td x:num="x:num"><div align="center">4120</div></td>
                      <td x:fmla="=SUM(D4:E4)" x:num="x:num"><div align="center">1277</div></td>
                      <td x:num="x:num"><div align="center">602</div></td>
                      <td x:num="x:num"><div align="center">675</div></td>
                      <td x:fmla="=C4/B4" x:num="0.30995145631068"><div align="center">31%</div></td>
                      <td x:fmla="=H4+I4" x:num="x:num"><div align="center">854</div></td>
                      <td x:num="x:num"><div align="center">406</div></td>
                      <td x:num="x:num"><div align="center">448</div></td>
                      <td x:fmla="=G4/B4" x:num="0.20728155339805801"><div align="center">21%</div></td>
                      <td x:num="x:num"><div align="center">489</div></td>
                      <td x:num="x:num"><div align="center">227</div></td>
                      <td x:num="x:num"><div align="center">262</div></td>
                      <td x:fmla="=K4/B4" x:num="0.11868932038835001"><div align="center">12%</div></td>
                      <td x:num="x:num"><div align="center">122</div></td>
                      <td x:num="x:num"><div align="center">63</div></td>
                      <td x:num="x:num"><div align="center">59</div></td>
                      <td x:fmla="=O4/B4" x:num="2.9611650485436899e-002"><div align="center">3%</div></td>
                      <td x:num="x:num"><div align="center">12</div></td>
                      <td x:num="x:num"><div align="center">4</div></td>
                      <td x:num="x:num"><div align="center">8</div></td>
                      <td x:fmla="=S4/B4" x:num="2.9126213592233002e-003"><div align="center">0%</div></td>
                      <td x:fmla="=SUM(X4:Y4)" x:num="x:num"><div align="center">1</div></td>
                      <td><div align="center"></div></td>
                      <td x:num="x:num"><div align="center">1</div></td>
                    </tr>
                    <tr height="18">
                      <td height="18" x:str="x:str"><div align="center">后革</div></td>
                      <td x:num="x:num"><div align="center">2963</div></td>
                      <td x:fmla="=SUM(D5:E5)" x:num="x:num"><div align="center">900</div></td>
                      <td x:num="x:num"><div align="center">394</div></td>
                      <td x:num="x:num"><div align="center">506</div></td>
                      <td x:fmla="=C5/B5" x:num="0.30374620317245998"><div align="center">30%</div></td>
                      <td x:fmla="=H5+I5" x:num="x:num"><div align="center">563</div></td>
                      <td x:num="x:num"><div align="center">235</div></td>
                      <td x:num="x:num"><div align="center">328</div></td>
                      <td x:fmla="=G5/B5" x:num="0.19001012487343899"><div align="center">19%</div></td>
                      <td x:num="x:num"><div align="center">524</div></td>
                      <td x:num="x:num"><div align="center">231</div></td>
                      <td x:num="x:num"><div align="center">293</div></td>
                      <td x:fmla="=K5/B5" x:num="0.17684778940263199"><div align="center">18%</div></td>
                      <td x:num="x:num"><div align="center">152</div></td>
                      <td x:num="x:num"><div align="center">65</div></td>
                      <td x:num="x:num"><div align="center">87</div></td>
                      <td x:fmla="=O5/B5" x:num="5.1299358758015501e-002"><div align="center">5%</div></td>
                      <td x:num="x:num"><div align="center">9</div></td>
                      <td x:num="x:num"><div align="center">2</div></td>
                      <td x:num="x:num"><div align="center">7</div></td>
                      <td x:fmla="=S5/B5" x:num="3.0374620317245998e-003"><div align="center">0%</div></td>
                      <td x:fmla="=SUM(X5:Y5)" x:num="x:num"><div align="center">1</div></td>
                      <td><div align="center"></div></td>
                      <td x:num="x:num"><div align="center">1</div></td>
                    </tr>
                    <tr height="18">
                      <td height="18" x:str="x:str"><div align="center">夏家河</div></td>
                      <td x:num="x:num"><div align="center">2623</div></td>
                      <td x:fmla="=SUM(D6:E6)" x:num="x:num"><div align="center">861</div></td>
                      <td x:num="x:num"><div align="center">400</div></td>
                      <td x:num="x:num"><div align="center">461</div></td>
                      <td x:fmla="=C6/B6" x:num="0.32825009531071297"><div align="center">33%</div></td>
                      <td x:fmla="=H6+I6" x:num="x:num"><div align="center">654</div></td>
                      <td x:num="x:num"><div align="center">306</div></td>
                      <td x:num="x:num"><div align="center">348</div></td>
                      <td x:fmla="=G6/B6" x:num="0.249332825009531"><div align="center">25%</div></td>
                      <td x:num="x:num"><div align="center">409</div></td>
                      <td x:num="x:num"><div align="center">193</div></td>
                      <td x:num="x:num"><div align="center">216</div></td>
                      <td x:fmla="=K6/B6" x:num="0.15592832634388101"><div align="center">16%</div></td>
                      <td x:num="x:num"><div align="center">146</div></td>
                      <td x:num="x:num"><div align="center">61</div></td>
                      <td x:num="x:num"><div align="center">85</div></td>
                      <td x:fmla="=O6/B6" x:num="5.5661456347693497e-002"><div align="center">6%</div></td>
                      <td x:num="x:num"><div align="center">15</div></td>
                      <td x:num="x:num"><div align="center">4</div></td>
                      <td x:num="x:num"><div align="center">11</div></td>
                      <td x:fmla="=S6/B6" x:num="5.7186427754479597e-003"><div align="center">1%</div></td>
                      <td><div align="center"></div></td>
                      <td><div align="center"></div></td>
                      <td><div align="center"></div></td>
                    </tr>
                    <tr height="18">
                      <td height="18" x:str="x:str"><div align="center">羊圈子</div></td>
                      <td x:num="x:num"><div align="center">1349</div></td>
                      <td x:fmla="=SUM(D7:E7)" x:num="x:num"><div align="center">467</div></td>
                      <td x:num="x:num"><div align="center">220</div></td>
                      <td x:num="x:num"><div align="center">247</div></td>
                      <td x:fmla="=C7/B7" x:num="0.34618235730170499"><div align="center">35%</div></td>
                      <td x:fmla="=H7+I7" x:num="x:num"><div align="center">306</div></td>
                      <td x:num="x:num"><div align="center">141</div></td>
                      <td x:num="x:num"><div align="center">165</div></td>
                      <td x:fmla="=G7/B7" x:num="0.22683469236471501"><div align="center">23%</div></td>
                      <td x:num="x:num"><div align="center">195</div></td>
                      <td x:num="x:num"><div align="center">99</div></td>
                      <td x:num="x:num"><div align="center">96</div></td>
                      <td x:fmla="=K7/B7" x:num="0.144551519644181"><div align="center">14%</div></td>
                      <td x:num="x:num"><div align="center">51</div></td>
                      <td x:num="x:num"><div align="center">24</div></td>
                      <td x:num="x:num"><div align="center">27</div></td>
                      <td x:fmla="=O7/B7" x:num="3.7805782060785803e-002"><div align="center">4%</div></td>
                      <td x:num="x:num"><div align="center">4</div></td>
                      <td x:num="x:num"><div align="center">2</div></td>
                      <td x:num="x:num"><div align="center">2</div></td>
                      <td x:fmla="=S7/B7" x:num="2.9651593773165302e-003"><div align="center">0%</div></td>
                      <td><div align="center"></div></td>
                      <td><div align="center"></div></td>
                      <td><div align="center"></div></td>
                    </tr>
                    <tr height="18">
                      <td height="18" x:str="x:str"><div align="center">棋盘子</div></td>
                      <td x:num="x:num"><div align="center">3346</div></td>
                      <td x:fmla="=SUM(D8:E8)" x:num="x:num"><div align="center">998</div></td>
                      <td x:num="x:num"><div align="center">485</div></td>
                      <td x:num="x:num"><div align="center">513</div></td>
                      <td x:fmla="=C8/B8" x:num="0.29826658696951602"><div align="center">30%</div></td>
                      <td x:fmla="=H8+I8" x:num="x:num"><div align="center">580</div></td>
                      <td x:num="x:num"><div align="center">286</div></td>
                      <td x:num="x:num"><div align="center">294</div></td>
                      <td x:fmla="=G8/B8" x:num="0.173341303048416"><div align="center">17%</div></td>
                      <td x:num="x:num"><div align="center">377</div></td>
                      <td x:num="x:num"><div align="center">178</div></td>
                      <td x:num="x:num"><div align="center">199</div></td>
                      <td x:fmla="=K8/B8" x:num="0.11267184698146999"><div align="center">11%</div></td>
                      <td x:num="x:num"><div align="center">106</div></td>
                      <td x:num="x:num"><div align="center">47</div></td>
                      <td x:num="x:num"><div align="center">59</div></td>
                      <td x:fmla="=O8/B8" x:num="3.1679617453676e-002"><div align="center">3%</div></td>
                      <td x:num="x:num"><div align="center">12</div></td>
                      <td x:num="x:num"><div align="center">4</div></td>
                      <td x:num="x:num"><div align="center">8</div></td>
                      <td x:fmla="=S8/B8" x:num="3.58637178720861e-003"><div align="center">0%</div></td>
                      <td><div align="center"></div></td>
                      <td><div align="center"></div></td>
                      <td><div align="center"></div></td>
                    </tr>
                    <tr height="18">
                      <td height="18" x:str="x:str"><div align="center">鞍子山</div></td>
                      <td x:num="x:num"><div align="center">2022</div></td>
                      <td x:fmla="=SUM(D9:E9)" x:num="x:num"><div align="center">727</div></td>
                      <td x:num="x:num"><div align="center">345</div></td>
                      <td x:num="x:num"><div align="center">382</div></td>
                      <td x:fmla="=C9/B9" x:num="0.35954500494559799"><div align="center">36%</div></td>
                      <td x:fmla="=H9+I9" x:num="x:num"><div align="center">520</div></td>
                      <td x:num="x:num"><div align="center">243</div></td>
                      <td x:num="x:num"><div align="center">277</div></td>
                      <td x:fmla="=G9/B9" x:num="0.25717111770524198"><div align="center">26%</div></td>
                      <td x:num="x:num"><div align="center">320</div></td>
                      <td x:num="x:num"><div align="center">146</div></td>
                      <td x:num="x:num"><div align="center">174</div></td>
                      <td x:fmla="=K9/B9" x:num="0.158259149357072"><div align="center">16%</div></td>
                      <td x:num="x:num"><div align="center">93</div></td>
                      <td x:num="x:num"><div align="center">38</div></td>
                      <td x:num="x:num"><div align="center">55</div></td>
                      <td x:fmla="=O9/B9" x:num="4.5994065281899102e-002"><div align="center">5%</div></td>
                      <td x:num="x:num"><div align="center">17</div></td>
                      <td x:num="x:num"><div align="center">2</div></td>
                      <td x:num="x:num"><div align="center">15</div></td>
                      <td x:fmla="=S9/B9" x:num="8.4075173095944592e-003"><div align="center">1%</div></td>
                      <td><div align="center"></div></td>
                      <td><div align="center"></div></td>
                      <td><div align="center"></div></td>
                    </tr>
                    <tr height="18">
                      <td height="18" x:str="x:str"><div align="center">合计</div></td>
                      <td x:fmla="=SUM(B4:B9)" x:num="x:num"><div align="center">16423</div></td>
                      <td x:fmla="=SUM(C4:C9)" x:num="x:num"><div align="center">5230</div></td>
                      <td x:fmla="=SUM(D4:D9)" x:num="x:num"><div align="center">2446</div></td>
                      <td x:fmla="=SUM(E4:E9)" x:num="x:num"><div align="center">2784</div></td>
                      <td x:fmla="=C10/B10" x:num="0.31845582414905899"><div align="center">32%</div></td>
                      <td x:fmla="=SUM(G4:G9)" x:num="x:num"><div align="center">3477</div></td>
                      <td x:fmla="=SUM(H4:H9)" x:num="x:num"><div align="center">1617</div></td>
                      <td x:fmla="=SUM(I4:I9)" x:num="x:num"><div align="center">1860</div></td>
                      <td x:fmla="=G10/B10" x:num="0.21171527735492901"><div align="center">21%</div></td>
                      <td x:fmla="=SUM(K4:K9)" x:num="x:num"><div align="center">2314</div></td>
                      <td x:fmla="=SUM(L4:L9)" x:num="x:num"><div align="center">1074</div></td>
                      <td x:fmla="=SUM(M4:M9)" x:num="x:num"><div align="center">1240</div></td>
                      <td x:fmla="=K10/B10" x:num="0.14089995737684999"><div align="center">14%</div></td>
                      <td x:fmla="=SUM(O4:O9)" x:num="x:num"><div align="center">670</div></td>
                      <td x:fmla="=SUM(P4:P9)" x:num="x:num"><div align="center">298</div></td>
                      <td x:fmla="=SUM(Q4:Q9)" x:num="x:num"><div align="center">372</div></td>
                      <td x:fmla="=O10/B10" x:num="4.07964440114474e-002"><div align="center">4%</div></td>
                      <td x:fmla="=SUM(S4:S9)" x:num="x:num"><div align="center">69</div></td>
                      <td x:fmla="=SUM(T4:T9)" x:num="x:num"><div align="center">18</div></td>
                      <td x:fmla="=SUM(U4:U9)" x:num="x:num"><div align="center">51</div></td>
                      <td x:fmla="=S10/B10" x:num="4.2014248310296501e-003"><div align="center">0%</div></td>
                      <td x:fmla="=SUM(W4:W9)" x:num="x:num"><div align="center">2</div></td>
                      <td x:fmla="=SUM(X4:X9)" x:num="x:num"><div align="center">0</div></td>
                      <td x:fmla="=SUM(Y4:Y9)" x:num="x:num"><div align="center">2</div></td>
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