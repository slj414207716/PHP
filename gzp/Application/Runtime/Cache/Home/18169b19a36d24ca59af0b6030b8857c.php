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
	<img src="/Public/Home/Static/images/logo.png">
</h1>


<link rel="stylesheet" href="/Public/<?php echo (MODULE_NAME); ?>/<?php echo (CONTROLLER_NAME); ?>/<?php echo (ACTION_NAME); ?>.css" />
<style>
.data h3{margin: 0px};
</style>
<script type="text/javascript" src="/Public/<?php echo (MODULE_NAME); ?>/<?php echo (CONTROLLER_NAME); ?>/<?php echo (ACTION_NAME); ?>.js"></script>
<script type="text/javascript">
    var jsonShxf = '';
    jsonShxf = '<?php echo $jsonShxf; ?>';
</script>
<div id="outer">
    <ul id="tab">
        <li num="1" <?php if($_GET['sid'] == 1): ?>class="current"<?php endif; ?> >地区生产总值</li>
        <li num="2" <?php if($_GET['sid'] == 2): ?>class="current"<?php endif; ?> >财政收入</li>
        <li num="3" <?php if($_GET['sid'] == 3): ?>class="current"<?php endif; ?> >规上工业总产值</li>
        <li num="4" <?php if($_GET['sid'] == 4): ?>class="current"<?php endif; ?> >固定资产投资</li>
        <li num="5" <?php if($_GET['sid'] == 5): ?>class="current"<?php endif; ?> >社会消费品零售额</li>
        <li num="6" <?php if($_GET['sid'] == 6): ?>class="current"<?php endif; ?> >使用内资</li>
        <li num="7" <?php if($_GET['sid'] == 7): ?>class="current"<?php endif; ?> >引进外资</li>
    	<!-- <p> 数据查询<br><input type="text"><input type="text"><br> <button type="submit" class="search">查询</button></p> -->
    </ul>
    <div id="content">
        <?php echo $_GET['sid'] ?>
        <?php echo $csid ?>
        <ul <?php if($_GET['sid'] == $csid): ?>style="display: block;" <?php else: ?> style="display: none;"<?php endif; ?> >
        	<div class="data">
        		<H3>完成情况</H3>
        		<div id="shxf1"></div>
        	</div>
       		<div class="data">
       			<H3>同比/环比</H3>
       			<div id="shxf2"></div>
       		</div>
        	<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<th scope="col">月份</th>
					<th scope="col">计划完成(亿)</th>
					<th scope="col">实际完成(亿)</th>
					<th scope="col">任务完成情况</th>
					<th scope="col">同比</th>
					<th scope="col">环比</th>
					<th scope="col">完成年度百分比</th>
				</tr>
				<?php  if (is_array($shxf['data'])) { $__LIST__ = $shxf['data'];} else { $__LIST__=array(); }if (empty($__LIST__)) { echo "" ; }if (count($__LIST__) > 0) { $i = 0; foreach ($__LIST__ as $key=>$v) { $mod = ($i % 2 );++$i;?><tr>
					<td><?php echo ($v['month']); ?>月</td>
					<td><?php echo ($v['plan']); ?></td>
					<td><?php echo ($v['real']); ?></td>
					<td>
						<?php if($v['over'] < 0): ?><img src="/Public/Home/Static/images/timg.gif">	
						<?php else: ?>
							完成<?php endif; ?>
					</td>
					<!-- 同比 -->
					<td>
						<?php echo ($shxf['tb'][$v['month']]); ?>
						<?php if($shxf['tb'][$v['month']] > 0): ?><span class="trendUp">↑</span>
						<?php elseif($shxf['tb'][$v['month']] < 0): ?>
							<span class="trendDown">↓</span><?php endif; ?>				
					</td>
					<!-- 环比 -->
					<td>
						<?php echo ($shxf['hb'][$v['month']]); ?>
						<?php if($shxf['hb'][$v['month']] > 0): ?><span class="trendUp">↑</span>
						<?php elseif($shxf['hb'][$v['month']] < 0): ?>
							<span class="trendDown">↓</span><?php endif; ?>		
					</td>
					<td>
						<?php echo ($shxf['zb'][$v['month']]); ?>
					</td>									
				</tr><?php } } ?>
				<tr>
					<th scope="col">合计</th>
					<th colspan="5" scope="col">
						全年计划任务：<strong><span class="hj"><?php echo ($shxf['real']); ?></span></strong>&nbsp亿；
						实际完成：<strong><span class="hj"><?php echo ($shxf['yearData']); ?></span></strong>&nbsp亿；
						完成全年计划任务占比：<strong><span class="hj"><?php echo ($shxf['nowZb']); ?></span></strong>
					</th>
                    <th><a class="search1" href="<?php echo (HOST_NAME); ?>/Home/Economic/yearShxf/sid/<?php echo ($_GET['sid']); ?>">年度数据查询</a></th>
				</tr>
			</table>
        </ul>
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
				window.location.href= url+"/Home/Economic/shxf/sid/"+num;
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