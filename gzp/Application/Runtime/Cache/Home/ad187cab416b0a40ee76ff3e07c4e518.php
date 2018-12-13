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
	<span>教育工作 / 教育 / 师生情况统计</span>
</h1>


<link rel="stylesheet" href="/Public/<?php echo (MODULE_NAME); ?>/<?php echo (CONTROLLER_NAME); ?>/<?php echo (ACTION_NAME); ?>.css" />
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
        	<div class="data">
        		<H3 style="color: #fff;">教师数据</H3>
        		<div id="party1"></div>
        	</div>
       		<div class="data">
       			<H3 style="color: #fff;">学生数据</H3>
       			<div id="party2"></div>
       		</div>
            <ul style="display:block;">
            <div class="aqsc">
                <h3>师生情况统计</h3>
                <div class="div">
        	 <table width="1198.40" border="0" cellpadding="0" cellspacing="0">
                    <col width="75.20"/>
                    <col width="56.80"/>
                    <col width="72"/>
                    <col width="64"/>
                    <col width="71.20"/>
                    <col width="52"/>
                    <col width="32.80" span="3"/>
                    <col width="115.20"/>
                    <col width="72"/>
                    <col width="117.60"/>
                    <col width="67.20"/>
                    <col width="64.80"/>
                    <col width="45.60"/>
                    <col width="48.80"/>
                    <col width="64" span="2"/>
                    <col width="49.60"/>
                    <tr height="25">
                      <td height="50" width="75" rowspan="2" x:str="x:str">学校</td>
                      <td width="57" rowspan="2" x:str="x:str">在编数</td>
                      <td width="72" rowspan="2" x:str="x:str">校级干部</td>
                      <td width="71" rowspan="2" x:str="x:str">中层干部</td>
                      <td width="71" rowspan="2" x:str="x:str">专任教师数</td>
                      <td width="150" colspan="4" x:str="x:str">骨干教师数</td>
                      <td width="304" colspan="3" x:str="x:str">教师学历情况</td>
                      <td width="67" rowspan="2" x:str="x:str">班级数</td>
                      <td width="64" rowspan="2" x:str="x:str">学生数</td>
                      <td width="45" rowspan="2" x:str="x:str">病休</td>
                      <td width="48" rowspan="2" x:str="x:str">退休</td>
                      <td width="64" rowspan="2" x:str="x:str">暂离岗</td>
                      <td width="64" rowspan="2" x:str="x:str">保安数</td>
                      <td width="49" rowspan="2" x:str="x:str">备注</td>
                    </tr>
                    <tr height="25">
                      <td x:str="x:str">国家</td>
                      <td x:str="x:str">省</td>
                      <td x:str="x:str">市</td>
                      <td x:str="x:str">区</td>
                      <td x:str="x:str">研究生以上</td>
                      <td x:str="x:str">本科</td>
                      <td x:str="x:str">专科及以下</td>
                    </tr>
                    <tr height="19">
                      <td height="19" x:str="x:str">66中</td>
                      <td align="right" x:num="x:num">85</td>
                      <td align="right" x:num="x:num">3</td>
                      <td align="right" x:num="x:num">5</td>
                      <td align="right" x:num="x:num">78</td>
                      <td></td>
                      <td></td>
                      <td align="right" x:num="x:num">5</td>
                      <td align="right" x:num="x:num">7</td>
                      <td align="right" x:num="x:num">13</td>
                      <td align="right" x:num="x:num">69</td>
                      <td align="right" x:num="x:num">2</td>
                      <td align="right" x:num="x:num">24</td>
                      <td align="right" x:num="x:num">1094</td>
                      <td></td>
                      <td></td>
                      <td align="right" x:num="x:num">1</td>
                      <td align="right" x:num="x:num">2</td>
                      <td></td>
                    </tr>
                    <tr height="19">
                      <td height="19" x:str="x:str">中心校</td>
                      <td align="right" x:num="x:num">59</td>
                      <td align="right" x:num="x:num">3</td>
                      <td align="right" x:num="x:num">6</td>
                      <td align="right" x:num="x:num">54</td>
                      <td></td>
                      <td></td>
                      <td align="right" x:num="x:num">5</td>
                      <td align="right" x:num="x:num">3</td>
                      <td align="right" x:num="x:num">4</td>
                      <td align="right" x:num="x:num">55</td>
                      <td align="right" x:num="x:num">0</td>
                      <td align="right" x:num="x:num">24</td>
                      <td align="right" x:num="x:num">1026</td>
                      <td align="right" x:num="x:num">1</td>
                      <td align="right" x:num="x:num">1</td>
                      <td></td>
                      <td align="right" x:num="x:num">2</td>
                      <td></td>
                    </tr>
                    <tr height="27">
                      <td height="27" x:str="x:str">后革</td>
                      <td align="right" x:num="x:num">43</td>
                      <td align="right" x:num="x:num">1</td>
                      <td align="right" x:num="x:num">4</td>
                      <td align="right" x:num="x:num">40</td>
                      <td></td>
                      <td></td>
                      <td align="right" x:num="x:num">3</td>
                      <td align="right" x:num="x:num">3</td>
                      <td align="right" x:num="x:num">3</td>
                      <td align="right" x:num="x:num">33</td>
                      <td align="right" x:num="x:num">7</td>
                      <td align="right" x:num="x:num">19</td>
                      <td align="right" x:num="x:num">711</td>
                      <td align="right" x:num="x:num">2</td>
                      <td></td>
                      <td></td>
                      <td align="right" x:num="x:num">2</td>
                      <td></td>
                    </tr>
                    <tr height="27">
                      <td height="27" x:str="x:str">棋盘</td>
                      <td align="right" x:num="x:num">19</td>
                      <td align="right" x:num="x:num">1</td>
                      <td align="right" x:num="x:num">2</td>
                      <td align="right" x:num="x:num">18</td>
                      <td></td>
                      <td></td>
                      <td align="right" x:num="x:num">1</td>
                      <td align="right" x:num="x:num">2</td>
                      <td align="right" x:num="x:num">1</td>
                      <td align="right" x:num="x:num">18</td>
                      <td></td>
                      <td align="right" x:num="x:num">7</td>
                      <td align="right" x:num="x:num">210</td>
                      <td x:str="x:str">产休1</td>
                      <td></td>
                      <td></td>
                      <td align="right" x:num="x:num">2</td>
                      <td></td>
                    </tr>
                    <tr height="27">
                      <td height="27" x:str="x:str">夏家河</td>
                      <td align="right" x:num="x:num">17</td>
                      <td align="right" x:num="x:num">1</td>
                      <td align="right" x:num="x:num">2</td>
                      <td align="right" x:num="x:num">17</td>
                      <td></td>
                      <td></td>
                      <td align="right" x:num="x:num">1</td>
                      <td></td>
                      <td></td>
                      <td align="right" x:num="x:num">16</td>
                      <td align="right" x:num="x:num">1</td>
                      <td align="right" x:num="x:num">6</td>
                      <td align="right" x:num="x:num">207</td>
                      <td></td>
                      <td></td>
                      <td></td>
                      <td align="right" x:num="x:num">2</td>
                      <td></td>
                    </tr>
                    <tr height="27">
                      <td height="27" x:str="x:str">小学小计</td>
                      <td align="right" x:fmla="=SUM(B4:B7)" x:num="x:num">138</td>
                      <td align="right" x:fmla="=SUM(C4:C7)" x:num="x:num">6</td>
                      <td align="right" x:fmla="=SUM(D4:D7)" x:num="x:num">14</td>
                      <td align="right" x:fmla="=SUM(E4:E7)" x:num="x:num">129</td>
                      <td align="right" x:fmla="=SUM(F4:F7)" x:num="x:num">0</td>
                      <td align="right" x:fmla="=SUM(G4:G7)" x:num="x:num">0</td>
                      <td align="right" x:fmla="=SUM(H4:H7)" x:num="x:num">10</td>
                      <td align="right" x:fmla="=SUM(I4:I7)" x:num="x:num">8</td>
                      <td align="right" x:fmla="=SUM(J4:J7)" x:num="x:num">8</td>
                      <td align="right" x:fmla="=SUM(K4:K7)" x:num="x:num">122</td>
                      <td align="right" x:fmla="=SUM(L4:L7)" x:num="x:num">8</td>
                      <td align="right" x:fmla="=SUM(M4:M7)" x:num="x:num">56</td>
                      <td align="right" x:fmla="=SUM(N4:N7)" x:num="x:num">2154</td>
                      <td align="right" x:fmla="=SUM(O4:O7)" x:num="x:num">3</td>
                      <td align="right" x:fmla="=SUM(P4:P7)" x:num="x:num">1</td>
                      <td align="right" x:fmla="=SUM(Q4:Q7)" x:num="x:num">0</td>
                      <td align="right" x:fmla="=SUM(R4:R7)" x:num="x:num">8</td>
                      <td></td>
                    </tr>
                    <tr height="27">
                      <td height="27" x:str="x:str">合计</td>
                      <td align="right" x:fmla="=B3+B8" x:num="x:num">223</td>
                      <td align="right" x:fmla="=C3+C8" x:num="x:num">9</td>
                      <td align="right" x:fmla="=D3+D8" x:num="x:num">19</td>
                      <td align="right" x:fmla="=E3+E8" x:num="x:num">207</td>
                      <td align="right" x:fmla="=F3+F8" x:num="x:num">0</td>
                      <td align="right" x:fmla="=G3+G8" x:num="x:num">0</td>
                      <td align="right" x:fmla="=H3+H8" x:num="x:num">15</td>
                      <td align="right" x:fmla="=I3+I8" x:num="x:num">15</td>
                      <td align="right" x:fmla="=J3+J8" x:num="x:num">21</td>
                      <td align="right" x:fmla="=K3+K8" x:num="x:num">191</td>
                      <td align="right" x:fmla="=L3+L8" x:num="x:num">10</td>
                      <td align="right" x:fmla="=M3+M8" x:num="x:num">80</td>
                      <td align="right" x:fmla="=N3+N8" x:num="x:num">3248</td>
                      <td align="right" x:fmla="=O3+O8" x:num="x:num">3</td>
                      <td align="right" x:fmla="=P3+P8" x:num="x:num">1</td>
                      <td align="right" x:fmla="=Q3+Q8" x:num="x:num">1</td>
                      <td align="right" x:fmla="=R3+R8" x:num="x:num">10</td>
                      <td></td>
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