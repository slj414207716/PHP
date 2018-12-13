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
	<span>教育工作 / 幼儿园基本情况 / 教职工情况</span>
</h1>


<link rel="stylesheet" href="/Public/<?php echo (MODULE_NAME); ?>/<?php echo (CONTROLLER_NAME); ?>/<?php echo (ACTION_NAME); ?>.css" />

<script type="text/javascript" src="/Public/<?php echo (MODULE_NAME); ?>/<?php echo (CONTROLLER_NAME); ?>/<?php echo (ACTION_NAME); ?>.js"></script>
<script type="text/javascript">

</script>
<div id="outer">
<ul id="tab">
	<li><a href="/index.php/Home/Work/staff">教职工情况</a></li>
	<li><a href="/index.php/Home/Work/qvod">建筑、资源情况</a></li>
</ul>
    <div id="content">
        	<div class="data05">
        		<H3 style="color: #fff;">教职工数据</H3>
        		<div id="main1" style="width: 100%;height: 100%"></div>
        	</div>
            <ul style="display:block;">
            <div class="aqsc">
                <h3>教职工统计</h3>
                <div class="div"> 
                   <table width="1844" border="0" cellpadding="0" cellspacing="0">
                        <col width="44"/>
                        <col width="128"/>
                        <col width="171"/>
                        <col width="99"/>
                        <col width="121"/>
                        <col width="104"/>
                        <col width="155"/>
                        <col width="84"/>
                        <col width="129"/>
                        <col width="109"/>
                        <col width="121"/>
                        <col width="110"/>
                        <col width="93"/>
                        <col width="88"/>
                        <col width="72" span="4"/>
                        <tr height="27">
                          <td height="71" width="44" rowspan="2" x:str="x:str">序号</td>
                          <td width="128"></td>
                          <td width="734" colspan="6" x:str="x:str">教职工数</td>
                          <td width="650" colspan="6" x:str="x:str">按学历分</td>
                     
                        </tr>
                        <tr height="44">
                          <td x:str="x:str">学校名称</td>
                          <td x:str="x:str">合计</td>
                          <td x:str="x:str">园长</td>
                          <td x:str="x:str">专任教师</td>
                          <td x:str="x:str">保健医</td>
                          <td x:str="x:str">保育员</td>
                          <td x:str="x:str">其他</td>
                          <td x:str="x:str">合计</td>
                          <td x:str="x:str">研究生毕业</td>
                          <td x:str="x:str">本科毕业</td>
                          <td x:str="x:str">专科毕业</td>
                          <td x:str="x:str">高中阶段毕业</td>
                          <td x:str="x:str">高中阶段毕业以下</td>
                          
                        </tr>
                        <tr height="42.67">
                          <td height="42.67" align="right" x:num="x:num">1</td>
                          <td dir="ltr" x:str="x:str">大连市甘井子区中革村幼儿园</td>
                          <td dir="ltr" x:num="x:num">20</td>
                          <td dir="ltr" x:num="x:num">1</td>
                          <td dir="ltr" x:num="x:num">9</td>
                          <td dir="ltr" x:num="x:num">1</td>
                          <td dir="ltr" x:num="x:num">5</td>
                          <td dir="ltr" x:num="x:num">4</td>
                          <td dir="ltr" x:num="x:num">20</td>
                          <td dir="ltr"></td>
                          <td dir="ltr" x:num="x:num">1</td>
                          <td dir="ltr" x:num="x:num">15</td>
                          <td dir="ltr" x:num="x:num">4</td>
                          <td dir="ltr"></td>
                 
                        </tr>
                        <tr height="32">
                          <td height="32" align="right" x:num="x:num">2</td>
                          <td dir="ltr" x:str="x:str">大连市甘井子区海华幼儿园</td>
                          <td dir="ltr" x:num="x:num">22</td>
                          <td dir="ltr" x:num="x:num">1</td>
                          <td dir="ltr" x:num="x:num">10</td>
                          <td dir="ltr" x:num="x:num">1</td>
                          <td dir="ltr" x:num="x:num">5</td>
                          <td dir="ltr" x:num="x:num">5</td>
                          <td dir="ltr"></td>
                          <td dir="ltr"></td>
                          <td dir="ltr" x:num="x:num">3</td>
                          <td dir="ltr" x:num="x:num">9</td>
                          <td dir="ltr"></td>
                          <td dir="ltr" x:num="x:num">11</td>
                      
                        </tr>
                        <tr height="32">
                          <td height="32" align="right" x:num="x:num">3</td>
                          <td dir="ltr" x:str="x:str">大连市甘井子区金凤凰幼儿园</td>
                          <td dir="ltr" x:num="x:num">30</td>
                          <td dir="ltr" x:num="x:num">2</td>
                          <td dir="ltr" x:num="x:num">14</td>
                          <td dir="ltr" x:num="x:num">1</td>
                          <td dir="ltr" x:num="x:num">7</td>
                          <td dir="ltr" x:num="x:num">6</td>
                          <td dir="ltr" x:str="x:str">&nbsp;</td>
                          <td dir="ltr" x:num="x:num">0</td>
                          <td dir="ltr" x:num="x:num">0</td>
                          <td dir="ltr" x:num="x:num">17</td>
                          <td dir="ltr" x:num="x:num">5</td>
                          <td dir="ltr" x:num="x:num">8</td>
                       
                        </tr>
                        <tr height="32">
                          <td height="32" align="right" x:num="x:num">4</td>
                          <td dir="ltr" x:str="x:str">大连市甘井子区夏家河幼儿园</td>
                          <td dir="ltr" x:num="x:num">11</td>
                          <td dir="ltr" x:num="x:num">1</td>
                          <td dir="ltr" x:num="x:num">6</td>
                          <td dir="ltr" x:num="x:num">1</td>
                          <td dir="ltr" x:num="x:num">3</td>
                          <td dir="ltr"></td>
                          <td dir="ltr"></td>
                          <td dir="ltr"></td>
                          <td dir="ltr" x:num="x:num">6</td>
                          <td dir="ltr" x:num="x:num">2</td>
                          <td dir="ltr" x:num="x:num">3</td>
                          <td dir="ltr"></td>
                  
                        </tr>
                        <tr height="32">
                          <td height="32" align="right" x:num="x:num">5</td>
                          <td dir="ltr" x:str="x:str">大连市甘井子区鋆百合幼儿园</td>
                          <td dir="ltr" x:num="x:num">17</td>
                          <td dir="ltr" x:num="x:num">1</td>
                          <td dir="ltr" x:num="x:num">7</td>
                          <td dir="ltr" x:num="x:num">1</td>
                          <td dir="ltr" x:num="x:num">5</td>
                          <td dir="ltr" x:num="x:num">3</td>
                          <td dir="ltr" x:num="x:num">17</td>
                          <td dir="ltr"></td>
                          <td dir="ltr"></td>
                          <td dir="ltr" x:num="x:num">6</td>
                          <td dir="ltr" x:num="x:num">8</td>
                          <td dir="ltr" x:num="x:num">3</td>
                  
                        </tr>
                        <tr height="32">
                          <td height="32" align="right" x:num="x:num">6</td>
                          <td dir="ltr" x:str="x:str">大连市甘井子区棋盘幼儿园</td>
                          <td dir="ltr" x:num="x:num">10</td>
                          <td dir="ltr" x:num="x:num">1</td>
                          <td dir="ltr" x:num="x:num">6</td>
                          <td dir="ltr"></td>
                          <td dir="ltr" x:num="x:num">2</td>
                          <td dir="ltr" x:num="x:num">1</td>
                          <td dir="ltr" x:num="x:num">10</td>
                          <td dir="ltr"></td>
                          <td dir="ltr" x:num="x:num">2</td>
                          <td dir="ltr" x:num="x:num">7</td>
                          <td dir="ltr"></td>
                          <td dir="ltr" x:num="x:num">1</td>
                    
                        </tr>
                        <tr height="32">
                          <td height="32" align="right" x:num="x:num">7</td>
                          <td dir="ltr" x:str="x:str">大连市甘井子区心蕊幼儿园</td>
                          <td dir="ltr" x:num="x:num">27</td>
                          <td dir="ltr" x:num="x:num">1</td>
                          <td dir="ltr" x:num="x:num">12</td>
                          <td dir="ltr" x:num="x:num">1</td>
                          <td dir="ltr" x:num="x:num">6</td>
                          <td dir="ltr" x:num="x:num">7</td>
                          <td dir="ltr" x:num="x:num">27</td>
                          <td dir="ltr" x:num="x:num">0</td>
                          <td dir="ltr" x:num="x:num">13</td>
                          <td dir="ltr" x:num="x:num">8</td>
                          <td dir="ltr" x:num="x:num">4</td>
                          <td dir="ltr" x:num="x:num">2</td>
                  
                        </tr>
                        <tr height="32">
                          <td height="32" align="right" x:num="x:num">8</td>
                          <td dir="ltr" x:str="x:str">大连市甘井子区春阳幼儿园</td>
                          <td dir="ltr" x:num="x:num">5</td>
                          <td dir="ltr" x:num="x:num">1</td>
                          <td dir="ltr" x:num="x:num">2</td>
                          <td dir="ltr" x:num="x:num">0</td>
                          <td dir="ltr" x:num="x:num">1</td>
                          <td dir="ltr" x:num="x:num">1</td>
                          <td dir="ltr" x:num="x:num">1</td>
                          <td dir="ltr" x:num="x:num">0</td>
                          <td dir="ltr" x:num="x:num">0</td>
                          <td dir="ltr" x:num="x:num">0</td>
                          <td dir="ltr" x:num="x:num">1</td>
                          <td dir="ltr" x:num="x:num">0</td>
                   
                        </tr>
                        <tr height="32">
                          <td height="32" align="right" x:num="x:num">9</td>
                          <td dir="ltr" x:str="x:str">大连市甘井子区祈福娃娃幼儿园</td>
                          <td dir="ltr" x:num="x:num">32</td>
                          <td dir="ltr" x:num="x:num">2</td>
                          <td dir="ltr" x:num="x:num">16</td>
                          <td dir="ltr" x:num="x:num">1</td>
                          <td dir="ltr" x:num="x:num">8</td>
                          <td dir="ltr" x:num="x:num">5</td>
                          <td dir="ltr" x:num="x:num">32</td>
                          <td dir="ltr" x:num="x:num">0</td>
                          <td dir="ltr" x:num="x:num">3</td>
                          <td dir="ltr" x:num="x:num">17</td>
                          <td dir="ltr" x:num="x:num">5</td>
                          <td dir="ltr" x:num="x:num">7</td>
                  
                        </tr>
                        <tr height="32">
                          <td height="32" align="right" x:num="x:num">10</td>
                          <td dir="ltr" x:str="x:str">大连市甘井子区儿童之家幼儿园</td>
                          <td dir="ltr" x:num="x:num">12</td>
                          <td dir="ltr" x:num="x:num">1</td>
                          <td dir="ltr" x:num="x:num">5</td>
                          <td dir="ltr" x:num="x:num">1</td>
                          <td dir="ltr" x:num="x:num">3</td>
                          <td dir="ltr" x:num="x:num">2</td>
                          <td dir="ltr" x:num="x:num">12</td>
                          <td dir="ltr"></td>
                          <td dir="ltr" x:num="x:num">1</td>
                          <td dir="ltr" x:num="x:num">3</td>
                          <td dir="ltr"></td>
                          <td dir="ltr" x:num="x:num">8</td>
                   
                        </tr>
                        <tr height="19">
                          <td height="19" colspan="2" x:str="x:str">总计</td>
                          <td align="right" x:fmla="=SUM(C3:C12)" x:num="x:num">186</td>
                          <td align="right" x:fmla="=SUM(D3:D12)" x:num="x:num">12</td>
                          <td align="right" x:fmla="=SUM(E3:E12)" x:num="x:num">87</td>
                          <td align="right" x:fmla="=SUM(F3:F12)" x:num="x:num">8</td>
                          <td align="right" x:fmla="=SUM(G3:G12)" x:num="x:num">45</td>
                          <td align="right" x:fmla="=SUM(H3:H12)" x:num="x:num">34</td>
                          <td align="right" x:fmla="=SUM(I3:I12)" x:num="x:num">119</td>
                          <td align="right" x:fmla="=SUM(J3:J12)" x:num="x:num">0</td>
                          <td align="right" x:fmla="=SUM(K3:K12)" x:num="x:num">29</td>
                          <td align="right" x:fmla="=SUM(L3:L12)" x:num="x:num">84</td>
                          <td align="right" x:fmla="=SUM(M3:M12)" x:num="x:num">30</td>
                          <td align="right" x:fmla="=SUM(N3:N12)" x:num="x:num">40</td>
              
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