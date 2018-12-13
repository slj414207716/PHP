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
	<a href="#" onclick="javascript:history.back(-1);">
	<i class="fa fa-arrow-circle-left"></i></a>
	<img src="/Public/Home/Static/images/logo.png"  class="logo">
	<span>安全生产 / 领导批示</span>
</h1>


<link rel="stylesheet" href="/Public/Home/Static/css/style2.css" />

<div id="outer">
	<ul id="tab">
	<li><a href="/index.php/Home/Safety/renwugongshi">任务公示</a></li>
	<li><a href="/index.php/Home/Safety/anquanmubiao">区内重大安全目标工作</a></li>
	<li><a href="/index.php/Home/Safety/wxhxp">危险化学品</a></li>
	<li><a href="/index.php/Home/Safety/zdwxy">重大危险源</a></li>
	<li><a href="/index.php/Home/Safety/jxcs">九小场所</a></li>
	<li><a href="/index.php/Home/Safety/comlist">安全生产</a></li>
	<li><a href="/index.php/Home/Safety/wangluo">安全员网络</a></li>
	<li><a href="/index.php/Home/Safety/gainian">安全基本</a></li>
	<!--{* <li><a href="/index.php/Home/Safety/feedback">部门建议</a></li> *}-->
	<li><a href="/index.php/Home/Safety/advicelist">领导批示</a></li>
</ul>
	<div id="content">
		<ul style="display:block;">
			<div class="aqsc">
				<h3>领导批示</h3>

		<table border=1 class="sys_table">
		<tr>
			<th>序列</th>
			<th>部门</th>
			<th>标题</th>
			<th>建议人</th>
            <th>建议内容</th>
            <th>上报时间</th>
            <th>批示状态</th>
		</tr>
		<?php foreach($data as $k=>$v): ?>
        <tr>
			<td align="center"><?php echo ++$a ?></td>
			<td align="center"><?php echo ($v['list_id']); ?></td>
			<td align="center"><?php echo ($v['name']); ?></td>
			<td align="center"><?php echo ($v['people']); ?></td>
			<td align="center"><a href="/index.php/Home/Safety/advicelistxq/id/<?php echo ($v['id']); ?>">详情</a></td>
			<td align="center"><?php echo date("Y-m-d",$v['time']) ?></td>
			<td align="center">
				<?php if($v['status']==1)echo '<a style="color: green" href="/index.php/Home/Safety/advicelisthf/id/'.$v["id"].'">详情</a>';else echo '<span style="color: red">未批示</span>' ?>
			</td>
		</tr>
		<?php endforeach; ?>
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
						<a href="/index.php/Home/Safety/advicelist?<?php echo ($PAGE['page_button_prm']); ?>now_page=<?php echo ($PAGE['first_page']); ?>">首页</a>
					</li>
					<li>
						<?php if( $PAGE['prev_page'] == 'disable' ): ?><a href="javascript:void(0);" class="disable">上一页</a>
						<?php else: ?>
							<a href="/index.php/Home/Safety/advicelist?<?php echo ($PAGE['page_button_prm']); ?>now_page=<?php echo ($PAGE['prev_page']); ?>">上一页</a><?php endif; ?>
					</li>
					<?php  if (is_array($PAGE['page_button'])) { $__LIST__ = $PAGE['page_button'];} else { $__LIST__=array(); }if (empty($__LIST__)) { echo "" ; }if (count($__LIST__) > 0) { $i = 0; foreach ($__LIST__ as $key=>$vo) { $mod = ($i % 2 );++$i;?><li>
						<a href="/index.php/Home/Safety/advicelist?<?php echo ($PAGE['page_button_prm']); ?>now_page=<?php echo ($vo); ?>" id="page_<?php echo ($vo); ?>"><?php echo ($vo); ?></a>
					</li><?php } } ?>
					<li>
						<?php if( $PAGE['next_page'] == 'disable' ): ?><a href="javascript:void(0);" class="disable">下一页</a>
						<?php else: ?>
							<a href="/index.php/Home/Safety/advicelist?<?php echo ($PAGE['page_button_prm']); ?>now_page=<?php echo ($PAGE['next_page']); ?>">下一页</a><?php endif; ?>
					</li>
					<li>
						<a href="/index.php/Home/Safety/advicelist?<?php echo ($PAGE['page_button_prm']); ?>now_page=<?php echo ($PAGE['end_page']); ?>">尾页</a>
					</li>
				</ul>
			</td>
			<td>
				<ul class="page_jump fr">
				<form action="/index.php/Home/Safety/<?php echo (ACTION_NAME); ?>" method="get">
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