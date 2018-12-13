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
	<span>对标数据 / 新闻列表</span>
</h1>



<script type="text/javascript" src="/Public/<?php echo (MODULE_NAME); ?>/<?php echo (CONTROLLER_NAME); ?>/<?php echo (ACTION_NAME); ?>.js"></script>
<script type="text/javascript" src="/Public/Common/echars/shine.js"></script>
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

<div id="outer">
    <ul id="tab">
    	<?php  if (is_array($data5)) { $__LIST__ = $data5;} else { $__LIST__=array(); }if (empty($__LIST__)) { echo "" ; }if (count($__LIST__) > 0) { $i = 0; foreach ($__LIST__ as $key=>$vi) { $mod = ($i % 2 );++$i;?><li title="<?php echo ($vi['name']); ?>" num="<?php echo ($vi['sort']); ?>" <?php if($_GET['sid'] == $vi['sort']): ?>class="current"<?php endif; ?> ><?php echo (msubstr($vi['name'],0,8,'utf-8')); ?></li><?php } } ?>
    </ul>
    <div id="content">
<!--社会化管理人员情况-->
	<?php  if (is_array($data5)) { $__LIST__ = $data5;} else { $__LIST__=array(); }if (empty($__LIST__)) { echo "" ; }if (count($__LIST__) > 0) { $i = 0; foreach ($__LIST__ as $key=>$ve) { $mod = ($i % 2 );++$i;?><ul <?php if($_GET['sid'] == $ve['sort']): ?>style="display: block;" <?php else: ?> style="display: none;"<?php endif; ?> >
		
        	
        	<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<th scope="col">序列</th>
					<th scope="col">文章列表</th>
					<th scope="col">时间</th>
				</tr>
				<?php  if (is_array($data)) { $__LIST__ = $data;} else { $__LIST__=array(); }if (empty($__LIST__)) { echo "" ; }if (count($__LIST__) > 0) { $i = 0; foreach ($__LIST__ as $key=>$vo) { $mod = ($i % 2 );++$i;?><tr>
					<td><?php echo ++$a?></td>
					<td><a href="/index.php/Home/News/cent/id/<?php echo ($vo['id']); ?>"><?php echo ($vo['title']); ?></a></td>
					<td><?php echo ($vo['addtime']); ?></td>
				</tr><?php } } ?>
			</table>
        </ul><?php } } ?>
            <div class="pages" align="center">
        	<?php echo ($page); ?>
        </div>

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
				window.location.href= url+"/Home/news/jour/sid/"+num;
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