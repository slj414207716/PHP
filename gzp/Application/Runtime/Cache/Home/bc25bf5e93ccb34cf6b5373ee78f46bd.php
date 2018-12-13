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
<script type="text/javascript" src="/Public/Common/echars/shine2.js"></script>
</head>
<body>

<h1 class="masked">
	<a href="#" onclick="javascript:history.back(-1);"><i class="fa fa-arrow-circle-left"></i></a>
	<img src="/Public/Home/Static/images/logo.png"  class="logo">
	<span>民生保障 / 医疗卫生</span>
</h1>


<script type="text/javascript" src="/Public/<?php echo (MODULE_NAME); ?>/<?php echo (CONTROLLER_NAME); ?>/<?php echo (ACTION_NAME); ?>.js"></script>
<style>
			.pages a,
			.pages span {
				display: inline-block;
				padding: 2px 5px;
				margin: 0 1px;
				border: 1px solid #f0f0f0;
				-webkit-border-radius: 3px;
				-moz-border-radius: 3px;
				border-radius: 3px;
			}
			
			.pages a,
			.pages li {
				display: inline-block;
				list-style: none;
				text-decoration: none;
				color: #58A0D3;
			}
			
			.pages a.first,
			.pages a.prev,
			.pages a.next,
			.pages a.end {
				margin: 0;
			}
			
			.pages a:hover {
				border-color: #50A8E6;
			}
			
			.pages span.current {
				background: #50A8E6;
				color: #FFF;
				font-weight: 700;
				border-color: #50A8E6;
			}
		</style>
<script type="text/javascript">
	var year = '';
	year = <?php echo $year?>;

	var sum = '';
	sum = <?php echo $sum?>;
</script>
<div class="data01">
	<div class="data05">
		<h3>历年数据</h3>
		<div id="main1" style="width: 100%;height: 100%"></div>
	</div>
	<div class="data04">
		<div class="aqsc" style="height: 100%">  
    		<h3>进度总览</h3>
    		<form action="/Home/Sports/yearWthy/sid/<?php echo ($sid); ?>" method="get">
    			<p class="cx"><label>按年份筛选</label>	
					<select name="year">
			            <option value="0">--请选择--</option>
			            <?php  if (is_array($data)) { $__LIST__ = $data;} else { $__LIST__=array(); }if (empty($__LIST__)) { echo "" ; }if (count($__LIST__) > 0) { $i = 0; foreach ($__LIST__ as $key=>$vi) { $mod = ($i % 2 );++$i;?><option  value="<?php echo ($vi['year']); ?>"><?php echo ($vi['year']); ?>年</option><?php } } ?>
			        </select>
					<input type="submit" value="查询" class="search_button"/>	
				</p>
			</form>
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<th scope="col">年度</th>
				<th scope="col">总人数</th>
				<th scope="col">详细</th>
			</tr>
			<?php  if (is_array($yShxfData)) { $__LIST__ = $yShxfData;} else { $__LIST__=array(); }if (empty($__LIST__)) { echo "" ; }if (count($__LIST__) > 0) { $i = 0; foreach ($__LIST__ as $key=>$v) { $mod = ($i % 2 );++$i;?><tr>
					<td>
						<?php echo ($v['year']); ?>年
					</td>
					<td>
						<?php echo ($v['sum_number']); ?>
					</td>
					<td>
						<a href="<?php echo (HOST_NAME); ?>/Home/health/monthYlws/year/<?php echo ($v['year']); ?>/sid/<?php echo ($v['sid']); ?>">
							查看
						</a>
					</td>
				</tr><?php } } ?>
		</table>
		<div class="pages" align="center">
        	<?php echo ($page); ?>
        </div>
	   </div>
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