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

<div id="outer">
    <!-- 左侧导航 -->
    <ul id="tab">
        <li num="1" <?php if($_GET['sid'] == 1): ?>class="current"<?php endif; ?> >地块信息</li>
        <li num="2" <?php if($_GET['sid'] == 2): ?>class="current"<?php endif; ?> >林地分布</li>
    </ul>
    <!-- 右侧内容 -->
    <div id="content">
        <ul <?php if($_GET['sid'] == 1): ?>style="display: block;" <?php else: ?> style="display: none;"<?php endif; ?> >
            <div class="aqsc">  
                <!-- 标题 -->
                <h3>地块信息</h3>
                <!-- 表格 -->
                <div class="div"> 
                    <!-- 搜索 -->
                    <p class="cx">
                        <label>所属区域</label>
                        <select id="own" name="ly">
                            <option value="0">--请选择--</option>
                            <option <?php if(urldecode($_GET['own'])=='鞍子山村'): ?>selected="selected"<?php endif; ?> value="鞍子山村">鞍子山村</option>
                            <option <?php if(urldecode($_GET['own'])=='夏家河子村'): ?>selected="selected"<?php endif; ?> value="夏家河子村">夏家河子村</option>
                            <option <?php if(urldecode($_GET['own'])=='中革村'): ?>selected="selected"<?php endif; ?> value="中革村">中革村</option>
                            <option <?php if(urldecode($_GET['own'])=='后革村'): ?>selected="selected"<?php endif; ?> value="后革村">后革村</option>
                            <option <?php if(urldecode($_GET['own'])=='羊圈子村'): ?>selected="selected"<?php endif; ?> value="羊圈子村">羊圈子村</option>
                            <option <?php if(urldecode($_GET['own'])=='棋盘村'): ?>selected="selected"<?php endif; ?> value="棋盘村">棋盘村</option>
                        </select>
                    </p>
                    <table border=0 width="100%" cellpadding="0" cellspacing="0">
                        <tr>
                            <th>所属区域</th>
                            <th>土地性质</th>
                            <th>地块名称</th>
                            <th>面积</th>
                            <th>位置</th>
                        </tr>
                        <?php  if (is_array($data)) { $__LIST__ = $data;} else { $__LIST__=array(); }if (empty($__LIST__)) { echo "" ; }if (count($__LIST__) > 0) { $i = 0; foreach ($__LIST__ as $key=>$v) { $mod = ($i % 2 );++$i;?><tr>
                                <td style="position: relative" align="center"><?php echo ($v['own']); ?></td>
                                <td align="center"><?php echo ($v['cat']); ?></td>
                                <td align="center"><?php echo ($v['name']); ?></td>
                                <td align="center"><?php echo ($v['area']); ?></td>
                                <td align="center"><?php echo ($v['address']); ?></td>
                            </tr><?php } } ?>
                    </table>
                </div>
            </div>
        </ul>
        <ul <?php if($_GET['sid'] == 2): ?>style="display: block;" <?php else: ?> style="display: none;"<?php endif; ?> >
            <div class="aqsc">  
                <!-- 标题 -->
                <h3>林地分布</h3>
                <!-- 图 -->
                <div class="div"> 
                    <!-- 搜索 -->
                    <p class="cx">
                        <label>所属区域</label>
                        <select name="ly">
                            <option value="0">--请选择--</option>
                            <option value="1">中革村</option>
                        </select>
                    </p>
                    <img style="width: 100%" src="/Public/Home/Land/lindifenbu.jpg" />
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
				window.location.href= url+"/Home/Land/plot/sid/"+num;
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