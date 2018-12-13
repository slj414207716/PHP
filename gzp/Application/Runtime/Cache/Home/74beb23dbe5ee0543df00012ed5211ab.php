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
		<i class="fa fa-arrow-circle-left"></i>
	</a>
    <img src="/Public/Home/Static/images/logo.png" width="30%">
</h1>


<link rel="stylesheet" href="/Public/<?php echo (MODULE_NAME); ?>/<?php echo (CONTROLLER_NAME); ?>/<?php echo (ACTION_NAME); ?>.css" />
<script type="text/javascript" src="/Public/<?php echo (MODULE_NAME); ?>/<?php echo (CONTROLLER_NAME); ?>/<?php echo (ACTION_NAME); ?>.js"></script>
<script type="text/javascript" src="/Public/Home/Static/js/shiftzoom.js"></script>
<div id="outer">
    <!-- 左侧导航 -->
    <ul id="tab">
        <li num="1" <?php if($_GET['sid'] == 1): ?>class="current"<?php endif; ?> >空间战略规划</li>
        <li num="2" <?php if($_GET['sid'] == 2): ?>class="current"<?php endif; ?> >拟出让地块详情</li>
        <li num="3" <?php if($_GET['sid'] == 3): ?>class="current"<?php endif; ?> >项目个案</li>
    </ul>
    <!-- 右侧内容 -->
    <div id="content">
        <ul <?php if($_GET['sid'] == 1): ?>style="display: block;" <?php else: ?> style="display: none;"<?php endif; ?> >
            <div class="zl">
                <h3>
                    <select id="zl" name="zl" style="margin-bottom:10px">
                        <option value="0">--请选择--</option>
                        <option <?php if($_GET['zl'] == 1): ?>selected="selected"<?php endif; ?> value="1" >图1</option>
                        <option <?php if($_GET['zl'] == 2): ?>selected="selected"<?php endif; ?> value="2">图2</option>
                    </select>
                </h3>
                <div class="pic_window" style="width:780px">
                    <?php if(($_GET['sid'] == 1)&&(($_GET['zl'] == 1)||($_GET['zl'] == ''))): ?><img src="/Uploads/Land/kjzl1.jpg" class="shiftzoom" onLoad="shiftzoom.add(this,{showcoords:true,zoom:40});"/>
                    <?php elseif(($_GET['sid'] == 1)&&($_GET['zl'] == 2)): ?>
                        <img src="/Uploads/Land/kjzl2.jpg" class="shiftzoom" onLoad="shiftzoom.add(this,{showcoords:true,zoom:40});"/><?php endif; ?>
                </div>
            </div>
        </ul>
        <ul <?php if($_GET['sid'] == 2): ?>style="display: block;" <?php else: ?> style="display: none;"<?php endif; ?> >
            <!-- 地图框 -->
            <div class="data06">
                <h3>
                    <select id="cun" name="cun">
                        <option value="0">--请选择--</option>
                        <option value="1">图1</option>
                    </select>
                </h3>
                <div class="pic_window" style="width:780px">
                    <?php if(($_GET['sid'] == 2)&&(($_GET['cun'] == 1)||($_GET['cun'] == ''))): ?><img src="/Uploads/Land/plan1.jpg" class="shiftzoom" onLoad="shiftzoom.add(this,{showcoords:true,zoom:10});"/><?php endif; ?>
                </div>
            </div>
            <!-- 批文框 -->
            <div class="pw">  
                <h3>批文</h3>
                <div class="div"> 
                    <table border=0 width="100%" cellpadding="0" cellspacing="0">
                        <tr>
                            <th>序号</th>
                            <th>编号</th>
                            <th>类型</th>
                            <th>面积(公顷)</th>
                        </tr>
                        <?php  if (is_array($data)) { $__LIST__ = $data;} else { $__LIST__=array(); }if (empty($__LIST__)) { echo "" ; }if (count($__LIST__) > 0) { $i = 0; foreach ($__LIST__ as $key=>$v) { $mod = ($i % 2 );++$i;?><tr>
                                <td><?php echo ($i); ?></td>
                                <td><?php echo ($v['cat1']); ?></td>
                                <td><?php echo ($v['cat2']); ?></td>
                                <td><?php echo ($v['area']); ?></td>
                            </tr><?php } } ?>
                        <tr>
                            <td colspan="3">合计</td>
                            <td><?php echo ($sum); ?></td>
                        </tr>
                    </table>
                </div>
            </div>
        </ul>
        <ul <?php if($_GET['sid'] == 3): ?>style="display: block;" <?php else: ?> style="display: none;"<?php endif; ?> >
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
				window.location.href= url+"/Home/Land/plan/sid/"+num;
			})
		}
	});
</script>
<script type="text/javascript">
    var parm = "<?php echo $_GET['sid'] ?>";
    if(parm == 1) {
        $('.pic_window').css("width","1240px");
    }else if(parm == 2) {
        $('.pic_window').css("width","780px");
    }
</script>
<script type="text/javascript">
    $('#zl').change(function(){
        var url = "<?php echo U('/Home/Land/plan','',false);?>/sid/1";
        var zlid = $(this).val();
        window.location.href=""+url+"/zl/"+$('#zl').val()+"";
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