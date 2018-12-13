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
.data h3{margin: 0px 0px 20px 0px};
</style>
<script type="text/javascript" src="/Public/<?php echo (MODULE_NAME); ?>/<?php echo (CONTROLLER_NAME); ?>/<?php echo (ACTION_NAME); ?>.js"></script>
<script type="text/javascript">
    var jsonData = '';
    jsonData = '<?php echo $jsonData; ?>';
    var jsonName = '';
    jsonName = '<?php echo $jsonName; ?>';
    var jsonData2 = '';
    jsonData2 = '<?php echo $jsonData2; ?>';
</script>
<div id="outer">
    <ul id="tab">
        <!-- 党员 -->
        <?php if(in_array($_GET['sid'],array(1,2,3))): ?><li num="1" <?php if($_GET['sid'] == 1): ?>class="current"<?php endif; ?> >学历</li>
            <li num="2" <?php if($_GET['sid'] == 2): ?>class="current"<?php endif; ?> >性别</li>
            <li num="3" <?php if($_GET['sid'] == 3): ?>class="current"<?php endif; ?> >年龄</li>
        <!-- 妇联 -->
        <?php elseif(in_array($_GET['sid'],array(4,5,6))): ?>
            <li num="4" <?php if($_GET['sid'] == 4): ?>class="current"<?php endif; ?> >数量</li>
            <li num="5" <?php if($_GET['sid'] == 5): ?>class="current"<?php endif; ?> >人数</li>
            <li num="6" <?php if($_GET['sid'] == 6): ?>class="current"<?php endif; ?> >妇女部</li>
        <!-- 共青团 -->
        <?php elseif(in_array($_GET['sid'],array(7,8,9))): ?>
            <li num="7" <?php if($_GET['sid'] == 7): ?>class="current"<?php endif; ?> >团支部数</li>
            <li num="8" <?php if($_GET['sid'] == 8): ?>class="current"<?php endif; ?> >团员数</li>
            <li num="9" <?php if($_GET['sid'] == 9): ?>class="current"<?php endif; ?> >干部数</li>
        <!-- 科协 -->
        <?php elseif(in_array($_GET['sid'],array(10,11,12))): ?>
            <li num="10" <?php if($_GET['sid'] == 10): ?>class="current"<?php endif; ?> >科协数</li>
            <li num="11" <?php if($_GET['sid'] == 11): ?>class="current"<?php endif; ?> >人数</li>
            <li num="12" <?php if($_GET['sid'] == 12): ?>class="current"<?php endif; ?> >干部数</li><?php endif; ?>
    	<!-- <p> 数据查询<br><input type="text"><input type="text"><br> <button type="submit" class="search">查询</button></p> -->
    </ul>
    <div id="content">
        <?php echo $_GET['sid'] ?>
        <?php echo $csid ?>
        <ul <?php if($_GET['sid'] == $csid): ?>style="display: block;" <?php else: ?> style="display: none;"<?php endif; ?> >
        	<div class="data">
        		<H3>近五年数据</H3>
        		<div id="party1"></div>
        	</div>
       		<div class="data">
       			<H3>本年数据</H3>
       			<div id="party2"></div>
       		</div>
        	<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<th scope="col">年份</th>
                    <?php if($_GET['sid'] == 1): ?><th scope="col">大专以下</th>
                        <th scope="col">大专及以上</th>
                    <?php elseif($_GET['sid'] == 2): ?>
                        <th scope="col">男</th>
                        <th scope="col">女</th>
                    <?php elseif($_GET['sid'] == 3): ?>
                        <th scope="col">60岁以下</th>
                        <th scope="col">60岁及以上</th>
                    <?php elseif(in_array($_GET['sid'],array(4,5,6,7,8,9,10,11,12))): ?>
                        <th scope="col">机关事业单位</th>
                        <th scope="col">农村</th>
                        <th scope="col">非公企</th><?php endif; ?>
				</tr>
				<?php  if (is_array($data)) { $__LIST__ = $data;} else { $__LIST__=array(); }if (empty($__LIST__)) { echo "" ; }if (count($__LIST__) > 0) { $i = 0; foreach ($__LIST__ as $key=>$v) { $mod = ($i % 2 );++$i;?><tr>
					<td><?php echo ($key); ?>年</td>
                    <?php if($_GET['sid'] == 1): ?><td><?php echo ($v['大专以下']); ?>人</td>
                        <td><?php echo ($v['大专及以上']); ?>人</td>
                    <?php elseif($_GET['sid'] == 2): ?>
                        <td><?php echo ($v['男']); ?>人</td>
                        <td><?php echo ($v['女']); ?>人</td>
                    <?php elseif($_GET['sid'] == 3): ?>
                        <td><?php echo ($v['60岁以下']); ?>人</td>
                        <td><?php echo ($v['60岁及以上']); ?>人</td>
                    <?php elseif(in_array($_GET['sid'],array(4,5,6,7,8,9,10,11,12))): ?>
                        <td><?php echo ($v['机关事业单位']); ?>人</td>
                        <td><?php echo ($v['农村']); ?>人</td>
                        <td><?php echo ($v['非公企']); ?>人</td><?php endif; ?>
				</tr><?php } } ?>
                <tr>
                    <th colspan="4" style="text-align:right">
                        <a class="search1" href="<?php echo (HOST_NAME); ?>/Home/Party/yearParty/sid/<?php echo ($_GET['sid']); ?>">年度数据查询</a>
                    </th>
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
				window.location.href= url+"/Home/Party/party/sid/"+num;
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