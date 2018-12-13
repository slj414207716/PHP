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
	<span>民生保障 / 教育工作</span>
</h1>


<link rel="stylesheet" href="/Public/<?php echo (MODULE_NAME); ?>/<?php echo (CONTROLLER_NAME); ?>/<?php echo (ACTION_NAME); ?>.css" />
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
<script type="text/javascript">
	var headcount='';
	headcount=<?php echo $headcount?>;
	var per='';
 	per=<?php echo $per?>;

 	var outerNum='';
 	outerNum=<?php echo $outerNum?>;
 	var innerNum='';
 	innerNum=<?php echo $innerNum?>;
 	var boorNum='';
 	boorNum=<?php echo $boorNum?>;
 	var borNum='';
 	borNum=<?php echo $borNum?>;
 	var stayNum='';
 	stayNum=<?php echo $stayNum?>;
 	var selectNum='';
 	selectNum=<?php echo $selectNum?>;
 	var selecNum='';
 	selecNum=<?php echo $selecNum?>;
 	var talentsNum='';
 	talentsNum=<?php echo $talentsNum?>;
 	var foreigNum='';
 	foreigNum=<?php echo $foreigNum?>;
</script>
<div id="outer">
    <ul id="tab">
    	<?php  if (is_array($data2)) { $__LIST__ = $data2;} else { $__LIST__=array(); }if (empty($__LIST__)) { echo "" ; }if (count($__LIST__) > 0) { $i = 0; foreach ($__LIST__ as $key=>$vi) { $mod = ($i % 2 );++$i;?><li title="<?php echo ($vi['name']); ?>" num="<?php echo ($vi['sort']); ?>" <?php if($_GET['sid'] == $vi['sort']): ?>class="current"<?php endif; ?> ><?php echo (msubstr($vi['name'],0,8,'utf-8')); ?></li><?php } } ?>
    </ul>
    <div id="content">

		<div class="data">
				<h3 style="color: #fff">统计数据</h3>
        		<div id="main"></div>
        </div>
        <div class="data">
        		<h3 style="color: #fff">统计数据</h3>
        		<div id="main1"></div>
        </div>
	<?php  if (is_array($data2)) { $__LIST__ = $data2;} else { $__LIST__=array(); }if (empty($__LIST__)) { echo "" ; }if (count($__LIST__) > 0) { $i = 0; foreach ($__LIST__ as $key=>$ve) { $mod = ($i % 2 );++$i;?><ul <?php if($_GET['sid'] == $ve['sort']): ?>style="display: block;" <?php else: ?> style="display: none;"<?php endif; ?> >
		
        	
    <table width="100%" border="1" cellpadding="0" cellspacing="0" class="sys_table">
		<col width="63.47" span="22"/>
		<col width="72" span="16362"/>
		<tr height="16">
			<th width="63.47" rowspan="3" x:str="x:str">班级</th>
			<th width="63.47" rowspan="3" x:str="x:str">现有学生数</th>
			<th width="63.47" rowspan="3" x:str="x:str">女生</th>
			<th width="253.87" colspan="4" x:str="x:str">借读生</th>
			<th width="253.87" colspan="4" x:str="x:str">农民工</th>
			<th width="126.93" colspan="2" x:str="x:str">留守儿童</th>
			<th width="253.87" colspan="4" x:str="x:str">择校生</th>
			<th width="126.93" colspan="2" x:str="x:str">人才证</th>
			<th width="126.93" colspan="2" x:str="x:str">外籍学生</th>
		</tr>
		<tr height="28">
			<th rowspan="2" x:str="x:str">外省市</th>
			<th rowspan="2" x:str="x:str">大连地区</th>
			<th rowspan="2" x:str="x:str">合计</th>
			<th rowspan="2" x:str="x:str">占学生数比例</th>
			<th rowspan="2" x:str="x:str">外省市</th>
			<th rowspan="2" x:str="x:str">大连地区</th>
			<th rowspan="2" x:str="x:str">合计</th>
			<th rowspan="2" x:str="x:str">占学生数比例</th>
			<th rowspan="2" x:str="x:str">学生数</th>
			<th rowspan="2" x:str="x:str">占学生数比例</th>
			<th rowspan="2" x:str="x:str">区内<br/>
				择校</th>
			<th rowspan="2" x:str="x:str">外区择校</th>
			<th rowspan="2" x:str="x:str">合计</th>
			<th rowspan="2" x:str="x:str">占学生数比例</th>
			<th rowspan="2" x:str="x:str">学生数</th>
			<th rowspan="2" x:str="x:str">占学生数比例</th>
			<th rowspan="2" x:str="x:str">学生数</th>
			<th rowspan="2" x:str="x:str">占学生数比例</th>
		</tr>
			<?php  if (is_array($shxfData)) { $__LIST__ = $shxfData;} else { $__LIST__=array(); }if (empty($__LIST__)) { echo "" ; }if (count($__LIST__) > 0) { $i = 0; foreach ($__LIST__ as $key=>$vo) { $mod = ($i % 2 );++$i;?><tr height="0"/></tr>
				<tr height="19">
					<td x:str="x:str"><?php echo ($vo['grade']); ?></td>
					<td x:str="x:str"><?php echo ($vo['number']); ?></td>
					<td x:str="x:str"><?php echo ($vo['girl']); ?></td>
					<td x:str="x:str"><?php echo ($vo['lend_outer']); ?></td>
					<td x:str="x:str"><?php echo ($vo['lend_inner']); ?></td>
					<td x:str="x:str"><?php echo $vo['lend_outer']+$vo['lend_inner']?></td>
					<td x:str="x:str"><?php echo sprintf('%.2f%%',($vo['lend_outer']+$vo['lend_inner'])/$vo['number']*100)?></td>
					<td x:str="x:str"><?php echo ($vo['boor_outer']); ?></td>
					<td x:str="x:str"><?php echo ($vo['boor_inner']); ?></td>
					<td x:str="x:str"><?php echo $vo['boor_outer']+$vo['boor_inner']?></td>
					<td x:str="x:str"><?php echo sprintf('%.2f%%',($vo['boor_outer']+$vo['boor_inner'])/$vo['number']*100)?></td>
					<td x:str="x:str"><?php echo ($vo['stay']); ?></td>
					<td x:str="x:str"><?php echo sprintf('%.2f%%',$vo['stay']/$vo['number']*100)?></td>
					<td x:str="x:str"><?php echo ($vo['select_outer']); ?></td>
					<td x:str="x:str"><?php echo ($vo['select_inner']); ?></td>
					<td x:str="x:str"><?php echo $vo['select_outer']+$vo['select_inner']?></td>
					<td x:str="x:str"><?php echo sprintf('%.2f%%',($vo['select_outer']+$vo['select_inner'])/$vo['number']*100)?></td>
					<td x:str="x:str"><?php echo ($vo['talents']); ?></td>
					<td x:str="x:str"><?php echo sprintf('%.2f%%',$vo['talents']/$vo['number']*100)?></td>
					<td x:str="x:str"><?php echo ($vo['foreig']); ?></td>
					<td x:str="x:str"><?php echo sprintf('%.2f%%',$vo['foreig']/$vo['number']*100)?></td>
				</tr><?php } } ?>
				<tr>
					<td class="pages" colspan="24">
						<?php echo ($page); ?>
					</td>
				</tr>
			<tr height="19">
					<td height="19" x:str="x:str">全校总计</td>
					<td x:str="x:str"><?php echo ($shxfNum); ?></td>
					<td x:str="x:str"><?php echo ($girlNum); ?></td>
					<td x:str="x:str"><?php echo ($outerNum); ?></td>
					<td x:str="x:str"><?php echo ($innerNum); ?></td>
					<td x:str="x:str"><?php echo ($lendNum); ?></td>
					<td x:str="x:str"><?php echo sprintf('%.2f%%',$lendNum/$shxfNum*100)?></td>
					<td x:str="x:str"><?php echo ($boorNum); ?></td>
					<td x:str="x:str"><?php echo ($borNum); ?></td>
					<td x:str="x:str"><?php echo ($boorsNum); ?></td>
					<td x:str="x:str"><?php echo sprintf('%.2f%%',$boorsNum/$shxfNum*100)?></td>
					<td x:str="x:str"><?php echo ($stayNum); ?></td>
					<td x:str="x:str"><?php echo sprintf('%.2f%%',$stayNum/$shxfNum*100)?></td>
					<td x:str="x:str"><?php echo ($selectNum); ?></td>
					<td x:str="x:str"><?php echo ($selecNum); ?></td>
					<td x:str="x:str"><?php echo ($selectsNum); ?></td>
					<td x:str="x:str"><?php echo sprintf('%.2f%%',$selectsNum/$shxfNum*100)?></td>
					<td x:str="x:str"><?php echo ($talentsNum); ?></td>
					<td x:str="x:str"><?php echo sprintf('%.2f%%',$talentsNum/$shxfNum*100)?></td>
					<td x:str="x:str"><?php echo ($foreigNum); ?></td>
					<td x:str="x:str"><?php echo sprintf('%.2f%%',$foreigNum/$shxfNum*100)?></td>
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

				var xx='';
				xx=<?php echo $action?>;
			
		
				window.location.href= url+"/Home/Work/"+xx[num-1]+"/sid/"+num;

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