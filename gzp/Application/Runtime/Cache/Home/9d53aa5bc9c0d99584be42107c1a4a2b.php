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
	<span>教育工作 / 幼儿园基本情况 / 建筑、资源情况</span>
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
	<li><a href="/index.php/Home/Work/staff">教职工情况</a></li>
	<li><a href="/index.php/Home/Work/qvod">建筑、资源情况</a></li>
</ul>
    <div id="content">
            <ul style="display:block;">
            <div class="aqsc">
                <h3>建筑、资源统计</h3>
                <div class="div"> 
        	<table width="1169" border="0" cellpadding="0" cellspacing="0">
                    <col width="36"/>
                    <col width="136"/>
                    <col width="80"/>
                    <col width="85"/>
                    <col width="68"/>
                    <col width="43"/>
                    <col width="63"/>
                    <col width="50" span="2"/>
                    <col width="65"/>
                    <col width="50"/>
                    <col width="65"/>
                    <col width="156"/>
                    <col width="222"/>
                    <tr height="51.27">
                      <td height="87.27" width="36" rowspan="2" x:str="x:str">序号</td>
                      <td width="136" rowspan="2" x:str="x:str">学校名称</td>
                      <td width="80" rowspan="2" x:str="x:str">建筑物名称</td>
                      <td width="85" rowspan="2" x:str="x:str">建筑面积（㎡）</td>
                      <td width="68" rowspan="2" x:str="x:str">结构类型、主要材质</td>
                      <td width="43" rowspan="2" x:str="x:str">层数</td>
                      <td width="63" rowspan="2" x:str="x:str">竣工年份</td>
                      <td width="100" colspan="2" x:str="x:str">抗震鉴定情况</td>
                      <td width="115" colspan="2" x:str="x:str">安全鉴定情况</td>
                      <td width="156" rowspan="2" x:str="x:str">使用情况</td>
                      <td width="222" rowspan="2" x:str="x:str">主要安全隐患</td>
                 
                    </tr>
                    <tr height="36">
                      <td x:str="x:str">鉴定结果</td>
                      <td x:str="x:str">处理意见</td>
                      <td x:str="x:str">鉴定结果</td>
                      <td x:str="x:str">处理意见</td>
                
                    </tr>
                    <tr height="19">
                      <td height="19" align="right" x:num="x:num">1</td>
                      <td rowspan="5" x:str="x:str">第六十六中学</td>
                      <td x:str="x:str">教学楼</td>
                      <td x:num="x:num">9778</td>
                      <td x:str="x:str">砖混</td>
                      <td x:num="x:num">5</td>
                      <td x:num="x:num">1992</td>
                      <td x:str="x:str">不满足</td>
                      <td x:str="x:str">加固</td>
                      <td x:str="x:str">Bsu</td>
                      <td></td>
                      <td x:str="x:str">正常使用</td>
                      <td></td>
                    </tr>
                    <tr height="19">
                      <td height="19" align="right" x:num="x:num">2</td>
                      <td x:str="x:str">操场</td>
                      <td x:num="x:num">14490</td>
                      <td x:str="x:str">塑胶</td>
                      <td></td>
                      <td></td>
                      <td x:str="x:str">——</td>
                      <td x:str="x:str">——</td>
                      <td x:str="x:str">——</td>
                      <td x:str="x:str">——</td>
                      <td></td>
                      <td></td>
                    </tr>
                    <tr height="31.27">
                      <td height="31.27" align="right" x:num="x:num">3</td>
                      <td x:str="x:str">食堂</td>
                      <td x:num="x:num">509</td>
                      <td x:str="x:str">砖混</td>
                      <td></td>
                      <td></td>
                      <td x:str="x:str">——</td>
                      <td x:str="x:str">——</td>
                      <td x:str="x:str">——</td>
                      <td x:str="x:str">——</td>
                      <td></td>
                      <td></td>
                    </tr>
                    <tr height="31.27">
                      <td height="31.27" align="right" x:num="x:num">4</td>
                      <td x:str="x:str">厕所</td>
                      <td x:num="x:num">681.62</td>
                      <td x:str="x:str">水厕</td>
                      <td></td>
                      <td></td>
                      <td x:str="x:str">——</td>
                      <td x:str="x:str">——</td>
                      <td x:str="x:str">——</td>
                      <td x:str="x:str">——</td>
                      <td></td>
                      <td></td>
                    </tr>
                    <tr height="31.27">
                      <td height="31.27" align="right" x:num="x:num">5</td>
                      <td x:str="x:str">锅炉</td>
                      <td></td>
                      <td></td>
                      <td></td>
                      <td></td>
                      <td x:str="x:str">——</td>
                      <td x:str="x:str">——</td>
                      <td x:str="x:str">——</td>
                      <td x:str="x:str">——</td>
                      <td></td>
                      <td></td>
                    </tr>
                    <tr height="31.27">
                      <td height="31.27" align="right" x:num="x:num">6</td>
                      <td rowspan="5" x:str="x:str">革镇堡中心小学</td>
                      <td x:str="x:str">教学楼</td>
                      <td x:num="x:num">3777</td>
                      <td x:str="x:str">砖混</td>
                      <td x:num="x:num">4</td>
                      <td x:num="x:num">1986</td>
                      <td x:str="x:str">不满足</td>
                      <td x:str="x:str">加固</td>
                      <td x:str="x:str">Bsu</td>
                      <td></td>
                      <td x:str="x:str">正常使用</td>
                      <td></td>
                
                    </tr>
                    <tr height="31.27">
                      <td height="31.27" align="right" x:num="x:num">7</td>
                      <td x:str="x:str">多功能室</td>
                      <td x:num="x:num">240</td>
                      <td x:str="x:str">砖混</td>
                      <td x:num="x:num">1</td>
                      <td x:num="x:num">2006</td>
                      <td></td>
                      <td></td>
                      <td></td>
                      <td></td>
                      <td></td>
                      <td></td>
                    </tr>
                    <tr height="31.27">
                      <td height="31.27" align="right" x:num="x:num">8</td>
                      <td x:str="x:str">操场</td>
                      <td x:num="x:num">15075</td>
                      <td x:str="x:str">塑胶</td>
                      <td></td>
                      <td x:num="x:num">2008</td>
                      <td x:str="x:str">——</td>
                      <td x:str="x:str">——</td>
                      <td x:str="x:str">——</td>
                      <td x:str="x:str">——</td>
                      <td></td>
                      <td></td>
                    </tr>
                    <tr height="31.27">
                      <td height="31.27" align="right" x:num="x:num">9</td>
                      <td x:str="x:str">厕所</td>
                      <td x:num="x:num">180</td>
                      <td x:str="x:str">砖混</td>
                      <td x:num="x:num">1</td>
                      <td x:num="x:num">1986</td>
                      <td x:str="x:str">——</td>
                      <td x:str="x:str">——</td>
                      <td x:str="x:str">——</td>
                      <td x:str="x:str">——</td>
                      <td></td>
                      <td></td>
                    </tr>
                    <tr height="31.27">
                      <td height="31.27" align="right" x:num="x:num">10</td>
                      <td x:str="x:str">锅炉</td>
                      <td x:str="x:str">1吨</td>
                      <td x:str="x:str">兰炭常压热水取暖</td>
                      <td></td>
                      <td x:num="x:num">2016</td>
                      <td></td>
                      <td></td>
                      <td></td>
                      <td></td>
                      <td></td>
                      <td></td>
                    </tr>
                    <tr height="31.27">
                      <td height="31.27" align="right" x:num="x:num">11</td>
                      <td rowspan="6" x:str="x:str">后革小学</td>
                      <td x:str="x:str">教学楼</td>
                      <td x:num="x:num">5456</td>
                      <td x:str="x:str">砖混</td>
                      <td x:num="x:num">4</td>
                      <td x:num="x:num">1998</td>
                      <td x:str="x:str">不满足</td>
                      <td x:str="x:str">加固</td>
                      <td x:str="x:str">Bsu</td>
                      <td></td>
                      <td x:str="x:str">正常使用</td>
                      <td></td>
                    </tr>
                    <tr height="31.27">
                      <td height="31.27" align="right" x:num="x:num">12</td>
                      <td x:str="x:str">食堂</td>
                      <td x:num="x:num">240</td>
                      <td x:str="x:str">砖混</td>
                      <td x:num="x:num">1</td>
                      <td x:num="x:num">1985</td>
                      <td x:str="x:str">不满足</td>
                      <td x:str="x:str">加固</td>
                      <td x:str="x:str">Csu</td>
                      <td x:str="x:str">加固</td>
                      <td x:str="x:str">停用封存</td>
                      <td></td>
              
                    </tr>
                    <tr height="31.27">
                      <td height="31.27" align="right" x:num="x:num">13</td>
                      <td x:str="x:str">多功能厅</td>
                      <td x:num="x:num">400</td>
                      <td x:str="x:str">砖混</td>
                      <td x:num="x:num">1</td>
                      <td x:num="x:num">1998</td>
                      <td x:str="x:str">——</td>
                      <td x:str="x:str">——</td>
                      <td x:str="x:str">——</td>
                      <td x:str="x:str">——</td>
                      <td></td>
                      <td></td>
                    </tr>
                    <tr height="31.27">
                      <td height="31.27" align="right" x:num="x:num">14</td>
                      <td x:str="x:str">操场</td>
                      <td x:num="x:num">10800</td>
                      <td x:str="x:str">塑胶</td>
                      <td></td>
                      <td x:num="x:num">2009</td>
                      <td x:str="x:str">——</td>
                      <td x:str="x:str">——</td>
                      <td x:str="x:str">——</td>
                      <td x:str="x:str">——</td>
                      <td></td>
                      <td></td>
                    </tr>
                    <tr height="31.27">
                      <td height="31.27" align="right" x:num="x:num">15</td>
                      <td x:str="x:str">厕所</td>
                      <td x:num="x:num">236</td>
                      <td x:str="x:str">砖混</td>
                      <td x:num="x:num">1</td>
                      <td x:num="x:num">2017</td>
                      <td x:str="x:str">——</td>
                      <td x:str="x:str">——</td>
                      <td x:str="x:str">——</td>
                      <td x:str="x:str">——</td>
                      <td></td>
                      <td></td>
                    </tr>
                    <tr height="31.27">
                      <td height="31.27" align="right" x:num="x:num">16</td>
                      <td x:str="x:str">锅炉</td>
                      <td x:str="x:str">1吨</td>
                      <td x:str="x:str">兰炭常压热水取暖</td>
                      <td></td>
                      <td x:num="x:num">2016</td>
                      <td></td>
                      <td></td>
                      <td></td>
                      <td></td>
                      <td></td>
                      <td></td>
                    </tr>
                    <tr height="31.27">
                      <td height="31.27" align="right" x:num="x:num">17</td>
                      <td rowspan="2" x:str="x:str">棋盘子小学</td>
                      <td x:str="x:str">教学楼</td>
                      <td x:num="x:num">3518</td>
                      <td x:str="x:str">砖混</td>
                      <td x:num="x:num">4</td>
                      <td x:num="x:num">1989</td>
                      <td x:str="x:str">不满足</td>
                      <td x:str="x:str">加固</td>
                      <td x:str="x:str">Csu</td>
                      <td x:str="x:str">加固</td>
                      <td x:str="x:str">停用封存</td>
                      <td></td>
                
                    </tr>
                    <tr height="31.27">
                      <td height="31.27" align="right" x:num="x:num">18</td>
                      <td x:str="x:str">操场</td>
                      <td x:num="x:num">2728</td>
                      <td x:str="x:str">土质</td>
                      <td></td>
                      <td x:num="x:num">2005</td>
                      <td x:str="x:str">——</td>
                      <td x:str="x:str">——</td>
                      <td x:str="x:str">——</td>
                      <td x:str="x:str">——</td>
                      <td></td>
                      <td></td>
              
                    </tr>
                    <tr height="31.27">
                      <td height="31.27" align="right" x:num="x:num">19</td>
                      <td rowspan="4" x:str="x:str">夏家河子小学</td>
                      <td x:str="x:str">教学楼</td>
                      <td x:num="x:num">1970</td>
                      <td x:str="x:str">砖混</td>
                      <td x:num="x:num">4</td>
                      <td x:num="x:num">1990</td>
                      <td x:str="x:str">不满足</td>
                      <td x:str="x:str">加固</td>
                      <td x:str="x:str">Bsu</td>
                      <td></td>
                      <td x:str="x:str">正常使用</td>
                      <td></td>
           
                    </tr>
                    <tr height="31.27">
                      <td height="31.27" align="right" x:num="x:num">20</td>
                      <td x:str="x:str">操场</td>
                      <td x:num="x:num">6000</td>
                      <td x:str="x:str">硬覆盖</td>
                      <td></td>
                      <td x:num="x:num">2006</td>
                      <td x:str="x:str">——</td>
                      <td x:str="x:str">——</td>
                      <td x:str="x:str">——</td>
                      <td x:str="x:str">——</td>
                      <td x:str="x:str">正常使用</td>
                      <td></td>
            
                    </tr>
                    <tr height="31.27">
                      <td height="31.27" align="right" x:num="x:num">21</td>
                      <td x:str="x:str">厕所</td>
                      <td x:num="x:num">171</td>
                      <td x:str="x:str">砖混</td>
                      <td></td>
                      <td x:num="x:num">1990</td>
                      <td x:str="x:str">——</td>
                      <td x:str="x:str">——</td>
                      <td x:str="x:str">——</td>
                      <td x:str="x:str">——</td>
                      <td x:str="x:str">正常使用</td>
                      <td></td>
              
                    </tr>
                    <tr height="31.27">
                      <td height="31.27" align="right" x:num="x:num">22</td>
                      <td x:str="x:str">锅炉</td>
                      <td x:str="x:str">0.75吨</td>
                      <td x:str="x:str">生物质、兰炭多功能</td>
                      <td></td>
                      <td></td>
                      <td x:str="x:str">——</td>
                      <td x:str="x:str">——</td>
                      <td x:str="x:str">——</td>
                      <td x:str="x:str">——</td>
                      <td></td>
                      <td></td>
                    </tr>
                    <tr height="31.27">
                      <td height="31.27" align="right" x:num="x:num">23</td>
                      <td rowspan="2" x:str="x:str">案子山小学</td>
                      <td x:str="x:str">教学楼</td>
                      <td align="right" x:num="x:num">2523</td>
                      <td x:str="x:str">砖混</td>
                      <td></td>
                      <td></td>
                      <td></td>
                      <td></td>
                      <td></td>
                      <td></td>
                      <td x:str="x:str">停用封存</td>
                      <td></td>
            
                    </tr>
                    <tr height="31.27">
                      <td height="31.27" align="right" x:num="x:num">24</td>
                      <td x:str="x:str">操场</td>
                      <td align="right" x:num="x:num">1500</td>
                      <td></td>
                      <td></td>
                      <td></td>
                      <td x:str="x:str">——</td>
                      <td x:str="x:str">——</td>
                      <td x:str="x:str">——</td>
                      <td x:str="x:str">——</td>
                      <td x:str="x:str">停用封存</td>
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