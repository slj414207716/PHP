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
	<span>安全生产 / 任务公示</span>
</h1>


    <link rel="stylesheet" href="/Public/Home/Static/css/style2.css"/>

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
                    <h3>任务公示</h3>
                    <div class="div">
                        <form action="/index.php/Home/Safety/renwugongshiedit/id/19" method="post">
                            <ul class="form">
                                <li>
                                    <div class="label">标　　题：</div>
                                    <div class="value"><input name="title" type="text" value="<?php echo ($data['title']); ?>"/></div>
                                </li>
                                <li>
                                    <div class="label">责任部门：</div>
                                    <div class="value"><input name="maindep" type="text" value="<?php echo ($data['maindep']); ?>"/></div>
                                </li>
                                <li>
                                    <div class="label">内容摘要：</div>
                                    <div class="value">
                                        <textarea name="maincontent"><?php echo ($data['maincontent']); ?></textarea>
                                    </div>
                                </li>
                                <li>
                                    <div class="label">详细内容：</div>
                                    <div class="value"><textarea name="content" id="ue_content"><?php echo ($data['content']); ?></textarea></div>
                                </li>
                                <li>
                                    <div class="label">
                                        <input type="submit" value="提交"/>
                                    </div>
                                </li>
                            </ul>
                        </form>
                    </div>
                </div>
            </ul>
        </div>
    </div>

    <!--在线编辑器 -->
<script type="text/javascript" src="/Public/Common/ueditor/ueditor.config.js"></script>
<script type="text/javascript" src="/Public/Common/ueditor/ueditor.all.js"></script>
<script type="text/javascript">
    var ue = UE.getEditor('ue_content', {
        zIndex: "0",
        //initialFrameWidth : '95%',
        initialFrameHeight: 300,
        toolbars: [
            ['bold', 'italic', 'underline', 'fontborder', 'strikethrough', 'superscript', 'subscript', 'removeformat', 'formatmatch', 'autotypeset', '|', 'justifyleft', 'justifycenter', 'justifyright', 'fontsize', 'forecolor', 'backcolor', 'insertorderedlist', 'insertunorderedlist', 'selectall', 'cleardoc', 'simpleupload', 'insertimage', 'insertvideo', 'attachment']
        ]
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