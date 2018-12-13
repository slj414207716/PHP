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
	<span>民生保障 / 民生保障</span>
</h1>



<script type="text/javascript" src="/Public/<?php echo (MODULE_NAME); ?>/<?php echo (CONTROLLER_NAME); ?>/<?php echo (ACTION_NAME); ?>.js"></script>
<script type="text/javascript" src="/Public/Common/echars/shine.js"></script>
<script type="text/javascript">
	var per='';
	per=<?php echo $per?>;
	var jbdm='';
 	jbdm=<?php echo $jbdm?>;
	var month='';
	month=<?php echo $month?>;
</script>
<div id="outer">
    <ul id="tab">
    	<?php  if (is_array($data1)) { $__LIST__ = $data1;} else { $__LIST__=array(); }if (empty($__LIST__)) { echo "" ; }if (count($__LIST__) > 0) { $i = 0; foreach ($__LIST__ as $key=>$vi) { $mod = ($i % 2 );++$i;?><li title="<?php echo ($vi['name']); ?>" num="<?php echo ($vi['sort']); ?>" <?php if($_GET['sid'] == $vi['sort']): ?>class="current"<?php endif; ?> ><?php echo (msubstr($vi['name'],0,8,'utf-8')); ?></li><?php } } ?>
    </ul>
    <div id="content">
<!--社会化管理人员情况-->
		<div class="data05">
			<h3 style="color: #fff">当年统计数据</h3>
        	<div id="main1" style="width: 100%;height: 100%"></div>
        </div>
	<?php  if (is_array($data1)) { $__LIST__ = $data1;} else { $__LIST__=array(); }if (empty($__LIST__)) { echo "" ; }if (count($__LIST__) > 0) { $i = 0; foreach ($__LIST__ as $key=>$ve) { $mod = ($i % 2 );++$i;?><ul <?php if($_GET['sid'] == $ve['sort']): ?>style="display: block;" <?php else: ?> style="display: none;"<?php endif; ?> >
		
        	
        	<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<th scope="col">年份</th>
					<th scope="col">类型</th>
					<th scope="col">数量</th>
					<th scope="col">年度百分比</th>
				</tr>
				<?php  if (is_array($shxfData)) { $__LIST__ = $shxfData;} else { $__LIST__=array(); }if (empty($__LIST__)) { echo "" ; }if (count($__LIST__) > 0) { $i = 0; foreach ($__LIST__ as $key=>$vo) { $mod = ($i % 2 );++$i;?><tr>
					<td><?php echo ($vo['year']); ?></td>
					<td><?php echo ($vo['month']); ?></td>
					<td><?php echo ($vo['number']); ?></td>
					<td><?php echo sprintf('%.2f%%',$vo['number']/$shxfSum*100);?></td>
				</tr><?php } } ?>
				<tr>
					<th scope="col">合计</th>
					<th scope="col" colspan="2">
						全年总人数：<strong><span class="hj"><?php echo ($shxfSum); ?></span></strong>&nbsp人
					</th>
					<th><a class="search1" href="<?php echo (HOST_NAME); ?>/Home/people/yearMsbz/sid/<?php echo ($ve['sort']); ?>">年度数据查询</a></th>
				</tr>
			</table>
        </ul><?php } } ?>

    </div>
</div>

<script src="/Public/Home/Static/js/jquery.min.js"></script>
<script>
	$(function(){
		window.onload = function()
		{
			var $li = $('#tab li');
			var $ul = $('#content ul');
			$li.click(function(){
				var num = $(this).attr("num");
				//console.log(num);
				var url = "<?php echo C('HOST_NAME'); ?>";
				console.log(url);
				window.location.href= url+"/Home/people/msbz/sid/"+num;
				/*
				var $this = $(this);
				var $t = $this.index();
				$li.removeClass();
				$this.addClass('current');
				$ul.css('display','none');
				$ul.eq($t).css('display','block');
				*/
			})
		}
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