<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>革镇堡街道挂图作战系统</title>

	<link href="/Public/Admin/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link href="/Public/Admin/vendor/metisMenu/metisMenu.min.css" rel="stylesheet">
	<link href="/Public/Admin/css/sb-admin-2.min.css" rel="stylesheet">
	<link href="/Public/Admin/css/admin.css" rel="stylesheet">
	<link href="/Public/Home/Static/css/font-awesome.min.css" rel="stylesheet" type="text/css">

	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
	<![endif]-->

	<script src="/Public/Common/Js/jquery-3.3.1.min.js"></script>
</head>
<body>

<?php  $subModel = M('colum'); $data1 = $subModel->where('classid=10')->select(); $data2 = $subModel->where('classid=20')->select(); $data3 = $subModel->where('classid=30')->select(); $data4 = $subModel->where('classid=40')->select(); $data5 = $subModel->where('classid=50')->select(); ?>

<div id="wrapper">

	<!-- Navigation -->
	<nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="/index.php/Admin/">革镇堡街道挂图作战系统</a>
		</div>
		<!-- /.navbar-header -->

		<ul class="nav navbar-top-links navbar-right">
			<li class="dropdown">
				<a class="dropdown-toggle" data-toggle="dropdown" href="#">
					<i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
				</a>
				<ul class="dropdown-menu dropdown-user">
					<li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
					</li>
					<li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
					</li>
					<li class="divider"></li>
					<li><a href="login.html"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
					</li>
				</ul>
				<!-- /.dropdown-user -->
			</li>
			<!-- /.dropdown -->
		</ul>
		<!-- /.navbar-top-links -->

		<div class="navbar-default sidebar" role="navigation">
			<div class="sidebar-nav navbar-collapse">
				<ul class="nav" id="side-menu">
					<!---->
					<li>
						<a href="/index.php/Admin/"><i class="fa fa-dashboard fa-fw"></i> 首页</a>
					</li>
					<!--<?php  ?>-->
					<li>
						<a href="#"><i class="glyphicon glyphicon-user"></i> 权限管理<span class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a href="/index.php/Admin/User/lst"><i class=""></i> 用户列表</a></li>
							<li><a href="/index.php/Admin/User/add"><i class=""></i> 用户添加</a></li>
							<li><a href="/index.php/Admin/Privilege/lst"><i class=""></i> 权限列表</a></li>
							<li><a href="/index.php/Admin/Privilege/add"><i class=""></i> 权限添加</a></li>
							<li><a href="/index.php/Admin/Role/lst"><i class=""></i> 角色列表</a></li>
							<li><a href="/index.php/Admin/Role/add"><i class=""></i> 角色添加</a></li>
						</ul>
					</li>
					<li>
						<a href="#"><i class="glyphicon glyphicon-yen"></i> 经济发展<span class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a href="/index.php/Admin/Economic/jbzb"><i class=""></i> 基本指标</a></li>
							<li><a href="/index.php/Admin/Economic/zdxm"><i class=""></i> 重点项目</a></li>
							<li><a href="/index.php/Admin/Economic/zsyz"><i class=""></i> 招商引资</a></li>
							<li><a href="/index.php/Admin/Economic/zdqy"><i class=""></i> 重点企业</a></li>
						</ul>
					</li>
					<li>
						<a href="#"><i class="glyphicon glyphicon-yen"></i> 党的建设<span class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a href="/index.php/Admin/Economic/jbzb"><i class=""></i> 基本指标</a></li>
						</ul>
					</li>
					<li>
						<a href="#"><i class="glyphicon glyphicon-yen"></i> 土地规划<span class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a href="/index.php/Admin/Land/map1"><i class=""></i> 规划</a></li>
							<li><a href="/index.php/Admin/Land/map2"><i class=""></i> 数据</a></li>
							<li><a href="/index.php/Admin/Land/plot1"><i class=""></i> 地块信息</a></li>
							<li><a href="/index.php/Admin/Land/plot2"><i class=""></i> 林地分布</a></li>
							<li><a href="/index.php/Admin/Land/plan1"><i class=""></i> 空间战略规划</a></li>
							<li><a href="/index.php/Admin/Land/plan2"><i class=""></i> 拟出让地块详情</a></li>
							<li><a href="/index.php/Admin/Land/plan3"><i class=""></i> 项目个案</a></li>
						</ul>
					</li>
					<li>
						<a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> 安全生产<span class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a href="/index.php/Admin/Safety/hyfl"><i class=""></i> 行业分类管理</a></li>
							<li><a href="/index.php/Admin/Safety/wxjb"><i class=""></i> 危险级别管理</a></li>
							<li><a href="/index.php/Admin/Safety/wxys"><i class=""></i> 危险因素管理</a></li>
							<li><a href="/index.php/Admin/Safety/yygm"><i class=""></i> 人员规模管理</a></li>
							<li><a href="/index.php/Admin/Safety/ssqy"><i class=""></i> 所属区域管理</a></li>
							<li><a href="/index.php/Admin/Safety/gssx"><i class=""></i> 公司属性管理</a></li>
							<li><a href="/index.php/Admin/Safety/yhpc"><i class=""></i> 隐患排查治理</a></li>
							<li><a href="/index.php/Admin/Safety/net"><i class=""></i> 安全员网络</a></li>
						</ul>
					</li>
					<li>
						<a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> 城市管理<span class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a href="/index.php/Admin/Safety/hyfl"><i class=""></i> 行业分类管理</a></li>
						</ul>
					</li>
					<li>
						<a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> 教育工作<span class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<?php  if (is_array($data2)) { $__LIST__ = $data2;} else { $__LIST__=array(); }if (empty($__LIST__)) { echo "" ; }if (count($__LIST__) > 0) { $i = 0; foreach ($__LIST__ as $key=>$vo2) { $mod = ($i % 2 );++$i;?><li>
								<a href="/index.php/Admin/<?php echo ($vo2['controller']); ?>/<?php echo ($vo2['action']); ?>/sid/<?php echo ($vo2['sort']); ?>"><?php echo ($vo2['name']); ?></a>
							</li><?php } } ?>

						</ul>
					</li>
					<li>
						<a href="javascript:void(0)"><i class="fa fa-bar-chart-o fa-fw"></i> 民生保障<span class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<?php  if (is_array($data1)) { $__LIST__ = $data1;} else { $__LIST__=array(); }if (empty($__LIST__)) { echo "" ; }if (count($__LIST__) > 0) { $i = 0; foreach ($__LIST__ as $key=>$vo1) { $mod = ($i % 2 );++$i;?><li>
								<a href="/index.php/Admin/<?php echo ($vo1['controller']); ?>/<?php echo ($vo1['action']); ?>/sid/<?php echo ($vo1['sort']); ?>"><?php echo ($vo1['name']); ?></a>
							</li><?php } } ?>
						</ul>
					</li>
					<li>
						<a href="javascript:void(0)"><i class="fa fa-bar-chart-o fa-fw"></i> 文化体育<span class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<?php  if (is_array($data3)) { $__LIST__ = $data3;} else { $__LIST__=array(); }if (empty($__LIST__)) { echo "" ; }if (count($__LIST__) > 0) { $i = 0; foreach ($__LIST__ as $key=>$vo3) { $mod = ($i % 2 );++$i;?><li>
								<a href="/index.php/Admin/<?php echo ($vo3['controller']); ?>/<?php echo ($vo3['action']); ?>/sid/<?php echo ($vo3['sort']); ?>"><?php echo ($vo3['name']); ?></a>
							</li><?php } } ?>
						</ul>
					</li>
					<li>
						<a href="javascript:void(0)"><i class="fa fa-bar-chart-o fa-fw"></i> 医疗卫生<span class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<?php  if (is_array($data4)) { $__LIST__ = $data4;} else { $__LIST__=array(); }if (empty($__LIST__)) { echo "" ; }if (count($__LIST__) > 0) { $i = 0; foreach ($__LIST__ as $key=>$vo4) { $mod = ($i % 2 );++$i;?><li>
								<a href="/index.php/Admin/<?php echo ($vo4['controller']); ?>/<?php echo ($vo4['action']); ?>/sid/<?php echo ($vo4['sort']); ?>"><?php echo ($vo4['name']); ?></a>
							</li><?php } } ?>
						</ul>
					</li>
					<li>
						<a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> 重点督办<span class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a href="/index.php/Admin/Focus/project"><i class=""></i> 项目管理</a></li>
							<li><a href="/index.php/Admin/Focus/indicators"><i class=""></i> 重点指标</a></li>
							<li><a href="/index.php/Admin/Focus/progress"><i class=""></i> 项目进度</a></li>
							<li><a href="/index.php/Admin/Focus/log"><i class=""></i> 详细日志</a></li>
							<li><a href="/index.php/Admin/Focus/moredep"><i class=""></i> 跨部门合作</a></li>
							<li><a href="/index.php/Admin/Focus/delay"><i class=""></i> 延期申请</a></li>
						</ul>
					</li>
					<li>
						<a href="javascript:void(0)"><i class="fa fa-bar-chart-o fa-fw"></i> 对标数据<span class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<?php  if (is_array($data5)) { $__LIST__ = $data5;} else { $__LIST__=array(); }if (empty($__LIST__)) { echo "" ; }if (count($__LIST__) > 0) { $i = 0; foreach ($__LIST__ as $key=>$vo5) { $mod = ($i % 2 );++$i;?><li>
								<a href="/index.php/Admin/<?php echo ($vo5['controller']); ?>/<?php echo ($vo5['action']); ?>/sid/<?php echo ($vo5['sort']); ?>"><?php echo ($vo5['name']); ?></a>
							</li><?php } } ?>
							<!-- <li>
								<a href="/Admin/News/lst/sid/2">对标世界</a>
							</li> -->
						</ul>
					</li>
				</ul>
			</div>
			<!-- /.sidebar-collapse -->
		</div>
		<!-- /.navbar-static-side -->
	</nav>

	<div id="page-wrapper">
		

<script type="text/javascript">
    $(function(){
        //自适应屏幕宽度
        window.onresize=function(){ location=location };

        var main_h = $(window).height();
        $('.hy_list').css('height',main_h-45+'px');

        var search_w = $(window).width()-40;
        $('.search').css('width',search_w+'px');
        $('.list_hy').css('width',search_w+'px');

        $('.xial_m span').click(function(){
            $(this).parent('.xial_m').siblings('.xl_ctn').toggle();
        });
    });
</script>

<div class="row">
    <div class="col-lg-12">
        <?php  if (is_array($data3)) { $__LIST__ = $data3;} else { $__LIST__=array(); }if (empty($__LIST__)) { echo "" ; }if (count($__LIST__) > 0) { $i = 0; foreach ($__LIST__ as $key=>$vi) { $mod = ($i % 2 );++$i; if($_GET['sid'] == $vi['sort']): ?><h1 class="page-header"><?php echo ($vi['name']); ?></h1><?php endif; } } ?>
    </div>
</div>
<div align="right">
    <a href="/Admin/Sports/add/sid/<?php echo ($sid); ?>"><h3>添加信息</h3> </a>
</div>
            <!--列表-->
            <table cellpadding="0" cellspacing="0" class="table table-striped table-bordered table-hover no-footer">
                <tr>
                    <th style="text-align: center" width="10%" scope="col">序列</th>
                    <th style="text-align: center" width="20%" scope="col">年份</th>
                    <th style="text-align: center" width="20%" scope="col">类型</th>
                    <th style="text-align: center" width="20%" scope="col">数量</th>
                    <th style="text-align: center" width="10%" scope="col">编辑</th>
                </tr>
                <?php  if (is_array($data)) { $__LIST__ = $data;} else { $__LIST__=array(); }if (empty($__LIST__)) { echo "" ; }if (count($__LIST__) > 0) { $i = 0; foreach ($__LIST__ as $key=>$vo) { $mod = ($i % 2 );++$i;?><tr>
                        <td align="center"><?php echo ++$a ?></td>
                        <td align="left"><?php echo ($vo['year']); ?></td>
                        <td align="center"><?php echo ($vo['name']); ?></td>
                        <td align="center"><?php echo ($vo['number']); ?></td>
                        <td align="center">
                            <a href="/Admin/Sports/edit/id/<?php echo ($vo['id']); ?>">修改</a>
                            <a onclick="return confirm('确定要删除吗？');" href="/Admin/Sports/quit/id/<?php echo ($vo['id']); ?>">删除</a>
                        </td>
                    </tr><?php } } ?>
            </table>
            <div class="pages" align="center">
                <?php echo ($page); ?>
            </div>


	</div>
	<!-- /#page-wrapper -->

</div>
<!-- /#wrapper -->

<script src="/Public/Admin/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="/Public/Admin/vendor/metisMenu/metisMenu.min.js"></script>
<script src="/Public/Admin/js/sb-admin-2.js"></script>
<script src="/Public/Admin/js/admin.js"></script>

</body>

</html>