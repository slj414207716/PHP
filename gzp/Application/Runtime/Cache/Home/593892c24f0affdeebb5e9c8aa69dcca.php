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
	<span>综治维稳 / 综治办铁路护路队伍数据</span>
</h1>


<link rel="stylesheet" href="/Public/Home/Static/css/style2.css"/>

<div id="outer">
	<ul id="tab">
	<li><a href="/index.php/Home/Treat/basicrf">综治办社会治安防控体系建设工作基础数据（人防体系）</a></li>
	<li><a href="/index.php/Home/Treat/basicjf">综治办社会治安防控体系建设工作基础数据（技防体系）</a></li>
	<li><a href="/index.php/Home/Treat/basicwf">综治办社会治安防控体系建设工作基础数据（物防体系）</a></li>
	<li><a href="/index.php/Home/Treat/special">综治办特殊人群管理工作数据</a></li>
	<li><a href="/index.php/Home/Treat/student">综治办校园安全管理工作数据</a></li>
	<li><a href="/index.php/Home/Treat/road">综治办铁路护路队伍数据</a></li>
	<li><a href="/index.php/Home/Treat/cases">综治办各类治安案件数据</a></li>
	<!--{* <li><a href="/index.php/Home/Treat/feedback">部门建议</a></li> *}-->
</ul>
	<div id="content">
		<ul style="display:block;">
			<div class="data05">
				<h3><?php echo ($data['name']); ?></h3>
				<div id="main"></div>
			</div>

			<div class="aqsc">
				<h3>综治办铁路护路队伍数据</h3>

				<div class="search_2">
					<form action="" method="get" class="sys_form">
						<label>按年份筛选</label>
						<select name="start_year">
							<?php $__FOR_START_9317__=$current_year-5;$__FOR_END_9317__=$current_year+1;for($i=$__FOR_START_9317__;$i < $__FOR_END_9317__;$i+=1){ ?><option value="<?php echo ($i); ?>"><?php echo ($i); ?>年</option><?php } ?>
						</select>
						<select name="start_month">
							<?php $__FOR_START_30010__=1;$__FOR_END_30010__=13;for($i=$__FOR_START_30010__;$i < $__FOR_END_30010__;$i+=1){ ?><option value="<?php echo ($i); ?>"><?php echo ($i); ?>月</option><?php } ?>
						</select>
						&nbsp;&nbsp; — &nbsp;&nbsp;
						<select name="end_year">
							<?php $__FOR_START_17899__=$current_year-5;$__FOR_END_17899__=$current_year+1;for($i=$__FOR_START_17899__;$i < $__FOR_END_17899__;$i+=1){ ?><option value="<?php echo ($i); ?>"><?php echo ($i); ?>年</option><?php } ?>
						</select>
						<select name="end_month">
							<?php $__FOR_START_3912__=1;$__FOR_END_3912__=13;for($i=$__FOR_START_3912__;$i < $__FOR_END_3912__;$i+=1){ ?><option value="<?php echo ($i); ?>"><?php echo ($i); ?>月</option><?php } ?>
						</select>
						<input clsss="sub" type="submit" value="查询"/>
					</form>
				</div>

				<table border=1 class="sys_table">
					<tr>
						<th width="20%">年份</th>
						<th width="60%">类型</th>
						<th width="20%">数量</th>
					</tr>
					<?php  if (is_array($data['details'])) { $__LIST__ = $data['details'];} else { $__LIST__=array(); }if (empty($__LIST__)) { echo "" ; }if (count($__LIST__) > 0) { $i = 0; foreach ($__LIST__ as $key=>$vo) { $mod = ($i % 2 );++$i;?><tr>
							<td><?php echo ($vo['year']); ?></td>
							<td><?php echo ($vo['name']); ?></td>
							<td><?php echo ($vo['value']); echo ($vo['unit']); ?></td>
						</tr><?php } } ?>
				</table>
				<div class="pagelist_area">
					<?php if($PAGE['total_page'] > 1): ?><link type="text/css" rel="stylesheet" href="<?php echo (__APP_PUBLIC__); ?>/css/Base/pagelist.css" />
<div class="pagelist">
	<table>
		<tr>
			<td>
				<ul class="fl">
					<li><?php echo ($PAGE['count']); ?>条数据，<?php echo ($PAGE['now_page']); ?>/<?php echo ($PAGE['total_page']); ?> 页</li>
				</ul>
			</td>
			<td>
				<ul class="page_button_group">
					<li>
						<a href="/index.php/Home/Treat/road?<?php echo ($PAGE['page_button_prm']); ?>now_page=<?php echo ($PAGE['first_page']); ?>">首页</a>
					</li>
					<li>
						<?php if( $PAGE['prev_page'] == 'disable' ): ?><a href="javascript:void(0);" class="disable">上一页</a>
						<?php else: ?>
							<a href="/index.php/Home/Treat/road?<?php echo ($PAGE['page_button_prm']); ?>now_page=<?php echo ($PAGE['prev_page']); ?>">上一页</a><?php endif; ?>
					</li>
					<?php  if (is_array($PAGE['page_button'])) { $__LIST__ = $PAGE['page_button'];} else { $__LIST__=array(); }if (empty($__LIST__)) { echo "" ; }if (count($__LIST__) > 0) { $i = 0; foreach ($__LIST__ as $key=>$vo) { $mod = ($i % 2 );++$i;?><li>
						<a href="/index.php/Home/Treat/road?<?php echo ($PAGE['page_button_prm']); ?>now_page=<?php echo ($vo); ?>" id="page_<?php echo ($vo); ?>"><?php echo ($vo); ?></a>
					</li><?php } } ?>
					<li>
						<?php if( $PAGE['next_page'] == 'disable' ): ?><a href="javascript:void(0);" class="disable">下一页</a>
						<?php else: ?>
							<a href="/index.php/Home/Treat/road?<?php echo ($PAGE['page_button_prm']); ?>now_page=<?php echo ($PAGE['next_page']); ?>">下一页</a><?php endif; ?>
					</li>
					<li>
						<a href="/index.php/Home/Treat/road?<?php echo ($PAGE['page_button_prm']); ?>now_page=<?php echo ($PAGE['end_page']); ?>">尾页</a>
					</li>
				</ul>
			</td>
			<td>
				<ul class="page_jump fr">
				<form action="/index.php/Home/Treat/<?php echo (ACTION_NAME); ?>" method="get">
					<li>跳转至</li>
					<li><input type="text" name="now_page" id="now_page_input" /></li>
					<li>页</li>
					<?php  if (is_array($PAGE['page_button_hidden_parm'])) { $__LIST__ = $PAGE['page_button_hidden_parm'];} else { $__LIST__=array(); }if (empty($__LIST__)) { echo "" ; }if (count($__LIST__) > 0) { $i = 0; foreach ($__LIST__ as $key=>$vo) { $mod = ($i % 2 );++$i;?><input type="hidden" name="<?php echo ($vo['field_name']); ?>" value="<?php echo ($vo['field_value']); ?>" /><?php } } ?>
					<li class="end"><input type="submit" id="page_submit" value="确定" /></li>
				</form>
				</ul>
			</td>
		</tr>
	</table>
</div>
<script language="javascript" type="text/javascript">
	// 将ThinkPHP变量定义为js变量（模板外的JS无法解析ThinkPHP变量）
	var now_page = <?php echo ($PAGE['now_page']); ?>;
</script>
<script language="javascript" type="text/javascript" src="<?php echo (__APP_PUBLIC__); ?>/js/Base/pagelist.js"></script><?php endif; ?>
				</div>

			</div>
		</ul>
	</div>
</div>

<?php echo ($app->self_js()); ?>
<script type="text/javascript">
	var current_start_year  = "<?php echo ($current_start_year); ?>";
	var current_start_month = "<?php echo ($current_start_month); ?>";
	var current_end_year    = "<?php echo ($current_end_year); ?>";
	var current_end_month   = "<?php echo ($current_end_month); ?>";
	var data_json           = <?php echo ($data_json); ?>;

	function drawChart() {
		var data = [];
		for (var i=0; i<data_json.data_class.length; i++) {
			data.push({
				name : data_json.data_class[i],
				value : data_json.data_value[i]
			});
		}
		// 加载数据
		echarts.init(document.getElementById('main'), 'shine').setOption({
			title : {
                show: false,
                text: data_json.name,
				subtext: '',
				x:'center'
			},
			tooltip : {
				trigger: 'item',
				formatter: "{a} <br/>{b} : {c} ({d}%)"
			},
			legend: {
				orient: 'vertical',
				left: 'left',
				data: data_json.data_class
			},
			series : [
				{
					name: data_json.name,
					type: 'pie',
					radius : '55%',
					center: ['50%', '60%'],
					data: data,
					itemStyle: {
						emphasis: {
							shadowBlur: 10,
							shadowOffsetX: 0,
							shadowColor: 'rgba(0, 0, 0, 0.5)'
						}
					}
				}
			]
		});
	}
	$(function () {
		drawChart();
	});
</script>


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