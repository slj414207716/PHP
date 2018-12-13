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
<script type="text/javascript" src="/Public/<?php echo (MODULE_NAME); ?>/<?php echo (CONTROLLER_NAME); ?>/<?php echo (ACTION_NAME); ?>.js"></script>
<script type="text/javascript" src="/Public/Home/Static/js/shiftzoom.js"></script>
<script type="text/javascript">
/*
if(document.images&&document.createElement&&document.getElementById){ 
    document.writeln('<style type="text/css">'); 
    document.writeln('img.shiftzoom { visibility: hidden; }'); 
    document.writeln('<\/style>'); 
} 
shiftzoom.defaultCurpath = 'images/cursors/';
*/
    var jsonName = '';
    jsonName = '<?php echo $jsonName; ?>';
    var jsonData = '';
    jsonData = '<?php echo $jsonData; ?>';
</script>
<div id="outer">
<!-- 左侧菜单 -->
    <ul id="tab">
        <li num="1" <?php if($_GET['sid'] == 1): ?>class="current"<?php endif; ?> >规划</li>
        <li num="2" <?php if($_GET['sid'] == 2): ?>class="current"<?php endif; ?> >数据</li>
    </ul>
    <!-- 右侧内容 -->
    <div id="content">
        <!-- 规划 -->
        <ul <?php if($_GET['sid'] == 1): ?>style="display: block;" <?php else: ?> style="display: none;"<?php endif; ?> >
            <!-- 地图框 -->
            <div class="data06">
                <h3>
                    <select id="cun" name="cun">
                        <option value="0">--请选择--</option>
                        <option value="1">后革村</option>
                        <option value="2">中革村</option>
                        <option value="3">鞍子山村</option>
                        <option value="4">羊圈子村</option>
                        <option value="5">棋盘村</option>
                        <option value="6">夏家河子村</option>
                    </select>
                </h3>
                <div class="pic_window">
                    <?php if(($_GET['cun'] == 1)||($_GET['cun'] == '')): ?><img src="/Uploads/Land/map1.jpg" class="shiftzoom" onLoad="shiftzoom.add(this,{showcoords:true,zoom:1});"/>
                    <?php elseif($_GET['cun'] == 2): ?>
                    <img src="/Uploads/Land/map2.jpg" class="shiftzoom" onLoad="shiftzoom.add(this,{showcoords:true,zoom:1});"/>
                    <?php elseif($_GET['cun'] == 3): ?>
                    <img src="/Uploads/Land/map3.jpg" class="shiftzoom" onLoad="shiftzoom.add(this,{showcoords:true,zoom:1});"/>
                    <?php elseif($_GET['cun'] == 4): ?>
                    <img src="/Uploads/Land/map4.jpg" class="shiftzoom" onLoad="shiftzoom.add(this,{showcoords:true,zoom:1});"/>
                    <?php elseif($_GET['cun'] == 5): ?>
                    <img src="/Uploads/Land/map5.jpg" class="shiftzoom" onLoad="shiftzoom.add(this,{showcoords:true,zoom:1});"/>
                    <?php elseif($_GET['cun'] == 6): ?>
                    <img src="/Uploads/Land/map6.jpg" class="shiftzoom" onLoad="shiftzoom.add(this,{showcoords:true,zoom:1});"/><?php endif; ?>
                </div>
                <p class="legend">
                    <h3>图例</h3></br>
                    <span class="country_side"></span><label>村界</label></br></br>
                    <span class="area_side"></span><label>图斑界线</label></br></br>
                    <input class="chb" type="checkbox" name="land_type[]" value="1" id="compliance" /><span class="compliance"></span><label for="compliance">符合土地利用总体规划</label></br></br>
                    <input class="chb" type="checkbox" name="land_type[]" value="2" id="requisitioned" /><span class="requisitioned"></span><label for="requisitioned">已征地</label></br></br>
                    <input class="chb" type="checkbox" name="land_type[]" value="3" id="have_cert" /><span class="have_cert"></span><label for="have_cert">已发证</label>
                </p>
            </div>
            <!-- 批文框 -->
            <div class="pw">  
                <h3>批文</h3>
                <div class="div"> 
                    <table border=0 width="100%" cellpadding="0" cellspacing="0">
                        <tr>
                            <th width="30%">批文名称</th>
                            <th width="12%">所需时间</th>
                        </tr>
                        <tr>
                            <td>督办测试3</td>
                            <td>督办测试类型3</td>
                        </tr><tr>
                            <td>督办测试2</td>
                            <td>督办测试类型2</td>
                        </tr>
                        <tr>
                            <td colspan="2" align="left">总计</td>
                        </tr>
                    </table>
                </div>
            </div>
        </ul>
        <!-- 数据 -->
        <ul <?php if($_GET['sid'] == 2): ?>style="display: block;" <?php else: ?> style="display: none;"<?php endif; ?> >
            <!-- echars -->
            <div class="data02">
                <h3>图表</h3>
                <div id="count"></div>
            </div>
            <!-- 右侧表格 -->
            <div class="tdgh">
                <h3>革镇堡地类统计</h3>
                <!-- 筛选 -->
                <div class="div">
                    <p class="cx"> <label>按年份筛选</label>
                        <select id="selYear" name="start_year">
                            <?php  if (is_array($yearData)) { $__LIST__ = $yearData;} else { $__LIST__=array(); }if (empty($__LIST__)) { echo "" ; }if (count($__LIST__) > 0) { $i = 0; foreach ($__LIST__ as $key=>$v) { $mod = ($i % 2 );++$i;?><option <?php if($_GET['year'] == $v): ?>selected="selected"<?php endif; ?>  value="<?php echo ($v); ?>"><?php echo ($v); ?>年</option><?php } } ?>
                        </select>
                        <input type="submit" value="查询" class="search_button"/>
                    </p>
                    <!-- 表格 -->
                    <table border=0  width="100%" cellpadding="0" cellspacing="0">
                        <tr>
                            <th width="60%">类型</th>
                            <th width="20%">面积（公顷）</th>
                        </tr>
                        <?php  if (is_array($count)) { $__LIST__ = $count;} else { $__LIST__=array(); }if (empty($__LIST__)) { echo "" ; }if (count($__LIST__) > 0) { $i = 0; foreach ($__LIST__ as $key=>$v) { $mod = ($i % 2 );++$i;?><tr>
                            <td><?php echo ($v['name']); ?></td>
                            <td><?php echo ($v['num']); ?></td>
                        </tr><?php } } ?>
                    </table>
                </div>
            </div>
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
				window.location.href= url+"/Home/Land/map/sid/"+num;
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