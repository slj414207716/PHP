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
	<span>安全生产 / 安全生产</span>
</h1>


    <link rel="stylesheet" href="/Public/Home/Static/css/style2.css"/>
    <style>
        .tjbox { border:1px solid #00deff; padding:15px;margin-bottom:15px; background:rgba(0, 10, 52, 0.7); }
        .tjbox li { text-align:left;border-bottom:1px dashed #00deff;padding:5px 0; line-height:30px;width:100%; }
        .ret { border:1px solid #00deff; }
        .ret table tr { height:35px; }
        .sfsshy, .sfwxys { height:24px; overflow:hidden; }
    </style>

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
                    <h3>安全生产</h3>
                    <form method="post" action="/index.php/Home/Safety/comlist">

                        <div class="search_2">
                            <input name="keyword" value="<?php echo I('keyword');?>" class="sea" type="text"
                                   placeholder="请您输入要查询关键字">
                            <input class="sub" type="submit" value="搜索">
                        </div>

                        <div class="div">

                            <!--{*
                            <div class="infoimg">
                                <img src="{$Think.const.__APP_PUBLIC__}/images/index/info.png">
                            </div>
                            *}-->

                            <!--多条件筛选-->
                            <div class="tiaojian">
                                <ul class="tjbox">
                                    <li class="sf1 sfsshy" id="linktype01">
                                        <span>所属行业：</span>
                                        <x style="cursor: pointer" class="fhsshy">[+]</x> &nbsp;
                                        <span <?php if(I('get.catid')==999||I('get.catid')=='')echo 'style="color: red"'; ?>
                                        class='templinkactive' tag="999">不限</span> &nbsp;
                                        <?php foreach($catinfo as $k=>$v): ?>
                                        <span <?php if(I('get.catid')==$v['id'])echo 'style="color: red"'; ?>
                                        class='templink' tag="<?php echo ($v['id']); ?>"><?php echo ($v['name']); ?></span> &nbsp;
                                        <?php endforeach; ?>
                                    </li>
                                    <li id="linktype02">
                                        <span>危险等级：</span>
                                        <span <?php if(I('get.wxjbid')==999||I('get.wxjbid')=='')echo 'style="color: red"'; ?>
                                        class='templinkactive' tag="999">不限</span> &nbsp;
                                        <?php foreach($wxjbinfo as $k=>$v): ?>
                                        <span <?php if(I('get.wxjbid')==$v['id'])echo 'style="color: red"'; ?>
                                        class='templink' tag="<?php echo ($v['id']); ?>"><?php echo ($v['name']); ?></span> &nbsp;
                                        <?php endforeach; ?>
                                    </li>
                                    <li class="sf2 sfwxys" id="linktype03">
                                        <span>危险因素：</span>
                                        <y style="cursor: pointer" class="fhwxys">[+]</y> &nbsp;
                                        <span <?php if(I('get.wxysid')==999||I('get.wxysid')=='')echo 'style="color: red"'; ?>
                                        class='templinkactive' tag="999">不限</span> &nbsp;
                                        <?php foreach($wxysinfo as $k=>$v): ?>
                                        <span <?php if(I('get.wxysid')==$v['id'])echo 'style="color: red"'; ?>
                                        class='templink' tag="<?php echo ($v['id']); ?>"><?php echo ($v['name']); ?></span> &nbsp;
                                        <?php endforeach; ?>
                                    </li>
                                    <li id="linktype04">
                                        <span>人员规模：</span>
                                        <span <?php if(I('get.yygmid')==999||I('get.yygmid')=='')echo 'style="color: red"'; ?>
                                        class='templinkactive' tag="999">不限</span> &nbsp;
                                        <?php foreach($yygminfo as $k=>$v): ?>
                                        <span <?php if(I('get.yygmid')==$v['id'])echo 'style="color: red"'; ?>
                                        class='templink' tag="<?php echo ($v['id']); ?>"><?php echo ($v['name']); ?></span> &nbsp;
                                        <?php endforeach; ?>
                                    </li>
                                    <li id="linktype05">
                                        <span>所属区域：</span>
                                        <span <?php if(I('get.ssqyid')==999||I('get.ssqyid')=='')echo 'style="color: red"'; ?>
                                        class='templinkactive' tag="999">不限</span> &nbsp;
                                        <?php foreach($ssqyinfo as $k=>$v): ?>
                                        <span <?php if(I('get.ssqyid')==$v['id'])echo 'style="color: red"'; ?>
                                        class='templink' tag="<?php echo ($v['id']); ?>"><?php echo ($v['name']); ?></span> &nbsp;
                                        <?php endforeach; ?>
                                    </li>
                                    <input type="hidden" id="sshy" value="0"/>
                                    <input type="hidden" id="wxdj" value="0"/>
                                    <input type="hidden" id="wxys" value="0"/>
                                    <input type="hidden" id="rygm" value="0"/>
                                    <input type="hidden" id="ssqy" value="0"/>
                                </ul>
                            </div>
                            <!--查询结果-->
                            <div style="clear: both"></div>
                            <div class="ret">
                                <table width="100%">
                                    <tr style="background: #00AAFF;color: white;height: 40px">
                                        <th>编号</th>
                                        <th>企业名称</th>
                                        <th>所属行业</th>
                                        <th>危险等级</th>
                                        <th>危险因素</th>
                                        <th>人员规模</th>
                                        <th>所属区域</th>
                                    </tr>
                                    <!--<?php dump($data) ?>-->
                                    <?php foreach($data as $k=>$v): ?>
                                    <tr class="all">
                                        <td align="center"><?php echo ($v['bh']); ?></td>
                                        <td align="center">
                                            <a target="_parent"
                                               href="/jiankong/index.html?company_id=<?php echo ($v['id']); ?>&ip=<?php echo ($v['ip']); ?>&port=<?php echo ($v['port']); ?>&jkusername=<?php echo $v['jkusername']?>&jkpassword=<?php echo $v['jkpassword']?>&channelnum=<?php echo ($v['channelnum']); ?>"><?php echo ($v['qymc']); ?></a>
                                        </td>
                                        <td align="center"><?php echo ($v['catname']); ?></td>
                                        <td align="center"><?php echo ($v['wxdjname']); ?></td>
                                        <td align="center"><?php echo ($v['wxys_id']); ?></td>
                                        <td align="center"><?php echo ($v['ryname']); ?></td>
                                        <td align="center"><?php echo ($v['ssqyname']); ?></td>
                                    </tr>
                                    <?php endforeach; ?>
                                    <tr class="pagall">
                                        <td align="right" nowrap="true" colspan="99"
                                            height="30"><?php echo $pag; ?></td>
                                    </tr>
                                </table>
                            </div>
                    </form>

                </div>
        </div>
        </ul>
    </div>
    </div>

    <script>
        var alink01 = $("#linktype01").find("span");
        alink01.click(function () {
            // alink01.each(function () {
            //     $(this).removeClass("templinkactive").addClass("templink");
            // });
            // $(this).removeClass("templink").addClass("templinkactive");
            $("#sshy").val($(this).attr("tag")); // 点击span获取tag值，并传值给隐藏input的val
            SetPara();                             // 获取隐藏input的val值，组装参数并跳转
        });
        var alink02 = $("#linktype02").find("span");
        alink02.click(function () {
            // alink02.each(function () {
            //     $(this).removeClass("templinkactive").addClass("templink");
            // });
            // $(this).removeClass("templink").addClass("templinkactive");
            $("#wxdj").val($(this).attr("tag"));
            SetPara();
        });
        var alink03 = $("#linktype03").find("span");
        alink03.click(function () {
            // alink03.each(function () {
            //     $(this).removeClass("templinkactive").addClass("templink");
            // });
            // $(this).removeClass("templink").addClass("templinkactive");
            $("#wxys").val($(this).attr("tag"));
            SetPara();
        });
        var alink04 = $("#linktype04").find("span");
        alink04.click(function () {
            // alink04.each(function () {
            //     $(this).removeClass("templinkactive").addClass("templink");
            // });
            // $(this).removeClass("templink").addClass("templinkactive");
            $("#rygm").val($(this).attr("tag"));
            SetPara();
        });
        var alink05 = $("#linktype05").find("span");
        alink05.click(function () {
            // alink05.each(function () {
            //     $(this).removeClass("templinkactive").addClass("templink");
            // });
            // $(this).removeClass("templink").addClass("templinkactive");
            $("#ssqy").val($(this).attr("tag"));
            SetPara();
        });

        function SetPara() {
            /*
            var a = $("#sshy").val();
            var b = $("#wxdj").val();
            var c = $("#wxys").val();
            var d = $("#rygm").val();
            var e = $("#ssqy").val();
            var par = "&catid=" + a + "&wxjbid=" + b+ "&wxysid=" + c+ "&yygmid=" + d+ "&ssqyid=" + e ;
            $.ajax({
                type:"get",
                url:"<?php echo U('Index/ajaxGetCom') ?>/"+par,
                dateType:"json",
                success:function(data){
                    data = eval('(' + data + ')');
                    var html = "";
                    $(data.data).each(function (k,v) {
                        var url = "<?php echo U('Index/comjk') ?>";
                        html += "<tr class='sc'>"
                        html += "<td align='center'>"+v.bh+"</td>";  // 编码
                        html += "<td align='center'><a href='"+url+"/id/"+v.id+"'>"+v.qymc+"</a></td>";  // 企业名称
                        html += "<td align='center'>"+v.catname+"</td>";  // 所属行业
                        html += "<td align='center'>"+v.wxdjname+"</td>";  // 危险等级
                        html += "<td align='center'>"+v.wxys_id+"</td>";                 // 危险因素
                        html += "<td align='center'>"+v.ryname+"</td>";  // 人员规模
                        html += "<td align='center'>"+v.ssqyname+"</td>";  // 所属区域
                        html += "</tr>";
                    });
                    html += "<tr class='pagall'><td align='right' nowrap='true' colspan='99' height='30'>"+data.pag+"</td></tr>"
                    $(".all").remove();
                    $(".pagall").remove();
                    $(".sc").remove();
                    $("table").append(html);
                }
            })
            */
            var a = $("#sshy").val();
            if (a == 0) {
                a = "<?php echo I('get.catid');?>";
            }
            var b = $("#wxdj").val();
            if (b == 0) {
                b = "<?php echo I('get.wxjbid');?>";
            }
            var c = $("#wxys").val();
            if (c == 0) {
                c = "<?php echo I('get.wxysid');?>";
            }
            var d = $("#rygm").val();
            if (d == 0) {
                d = "<?php echo I('get.yygmid');?>";
            }
            var e = $("#ssqy").val();
            if (e == 0) {
                e = "<?php echo I('get.ssqyid');?>";
            }
            window.location = "/index.php/Home/Safety/comlist?catid=" + a + "&wxjbid=" + b + "&wxysid=" + c + "&yygmid=" + d + "&ssqyid=" + e;
        }

        var getcat = "<?php echo I('get.catid');?>";
        if (!getcat) {
            $(".fhsshy").click(function () {
                if ($("x").text() == "[+]") {
                    $("li.sf1").removeClass("sfsshy");
                    $("x").text("[-]");
                    return;
                }
                if ($("x").text() == "[-]") {
                    $("li.sf1").addClass("sfsshy");
                    $("x").text("[+]");
                    return;
                }
            });
            $(".fhwxys").click(function () {
                if ($("y").text() == "[+]") {
                    $("li.sf2").removeClass("sfwxys");
                    $("y").text("[-]");
                    return;
                }
                if ($("y").text() == "[-]") {
                    $("li.sf2").addClass("sfwxys");
                    $("y").text("[+]");
                    return;
                }
            });
        } else {
            $("li.sf1").removeClass("sfsshy");
            $("x").text("[-]");
            $("li.sf2").removeClass("sfwxys");
            $("y").text("[-]");
            $(".fhsshy").click(function () {
                if ($("x").text() == "[+]") {
                    $("li.sf1").removeClass("sfsshy");
                    $("x").text("[-]");
                    return;
                }
                if ($("x").text() == "[-]") {
                    $("li.sf1").addClass("sfsshy");
                    $("x").text("[+]");
                    return;
                }
            });
            $(".fhwxys").click(function () {
                if ($("y").text() == "[+]") {
                    $("li.sf2").removeClass("sfwxys");
                    $("y").text("[-]");
                    return;
                }
                if ($("y").text() == "[-]") {
                    $("li.sf2").addClass("sfwxys");
                    $("y").text("[+]");
                    return;
                }
            });
        }
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