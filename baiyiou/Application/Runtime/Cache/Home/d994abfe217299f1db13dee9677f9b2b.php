<?php if (!defined('THINK_PATH')) exit();?>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0,user-scalable=no" name="viewport" id="viewport" />
<title>微信商城</title>
<link href="/Public/css/web.css" type="text/css" rel="stylesheet">
</head>

<body style="max-width:640px; background-color:#5a93cf">
<div class="top"><a href="/Home/Index/index" title="返回首页"><img src="/Public/images/home.png"></a></div>

 ﻿

<div class="personal_1">
<img src="<?php echo $_SESSION['img']?> ">
<p><?php echo $_SESSION['name']?>   <?php echo $_SESSION['sex']?><br>
运营董事<br>
<?php echo $_SESSION['tel'] ?></p>

</div>

<div class="personal">
<ul>
<li><img src="/Public/images/personal1.png">个人信息</li>
</ul>
</div>
<div class="information">
<form method="post" action="save/id/<?php echo $_SESSION['id']?>" enctype="multipart/form-data">
    <ul>
        <li><b>姓名</b>
            <input type="text" name="username" id="username" class="input1">
        </li>

        <li><b>性别</b>
            <input type="radio" name="pass" id="a" value="男" class="radio"><label for="a" class="radio">男</label>
            <input type="radio" name="pass" id="b" value="女" class="radio"><label for="b" class="radio">女</label>
            <input type="radio" name="pass" id="c" value="保密" class="radio"><label for="c" class="radio">保密</label>
        </li>

        <li><b>区域</b>
            <select name="province" id="province" onchange="loadRegion('province',2,'city','<?php echo U('personal/getRegion');?>');">
               <option value="0" selected>省份/直辖市</option>
           <?php if(is_array($province)): $i = 0; $__LIST__ = $province;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><option value="<?php echo ($vo["id"]); ?>" ><?php echo ($vo["name"]); ?></option><?php endforeach; endif; else: echo "" ;endif; ?>
            </select>          
            <select name="city" id="city"  onchange="loadRegion('city',3,'town','<?php echo U('personal/getRegion');?>');">
              <option value="0">市/县</option>
            </select>
            <select name="town" id="town">
              <option value="0">镇/区</option>
            </select>
        </li>

        <li><b>设置头像</b>
            <input id="img" type="file" name="img" onchange="change()" />
            <img id="preview" alt="" name="pic" style="width:100px;left:100px; z-index:9;" />
        </li>

        <li><b>邮箱</b>
            <input type="text" name="mail" id="mail" class="input1">
        </li>

        <li><button class="button2">确定</button></li>
    </ul>
</form>
</div>
<script src="/Public/js/jquery-3.2.1.min.js"></script>
<script>

    function loadRegion(sel,type_id,selName,url){

        $("#"+selName+" option").each(function(){

            $(this).remove();
        });

            $("<option value=0>请选择</option>").appendTo($("#"+selName));

        if($("#"+sel).val()==0){

            return;

        }

        $.getJSON(url,{pid:$("#"+sel).val(),type:type_id},

            function(data){

                if(data){

                    $.each(data,function(idx,item){

                        $("<option value="+item.id+">"+item.name+"</option>").appendTo($("#"+selName));

                    });

                }else{

                    $("<option value='0'>请选择</option>").appendTo($("#"+selName));
                }
        });
    } 


function change() {
    var pic = document.getElementById("preview"),
        file = document.getElementById("img");
 
    var ext=file.value.substring(file.value.lastIndexOf(".")+1).toLowerCase();
 
     // gif在IE浏览器暂时无法显示
     if(ext!='png'&&ext!='jpg'&&ext!='gif'){
         alert("图片的格式必须为png或者jpg或者gif格式！"); 
         return;
     }
     var isIE = navigator.userAgent.match(/MSIE/)!= null,
         isIE6 = navigator.userAgent.match(/MSIE 6.0/)!= null;
 
     if(isIE) {
        file.select();
        var reallocalpath = document.selection.createRange().text;
 
        // IE6浏览器设置img的src为本地路径可以直接显示图片
         if (isIE6) {
            pic.src = reallocalpath;
         }else {
            // 非IE6版本的IE由于安全问题直接设置img的src无法显示本地图片，但是可以通过滤镜来实现
             pic.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod='image',src=\"" + reallocalpath + "\")";
             // 设置img的src为base64编码的透明图片 取消显示浏览器默认图片
             pic.src = 'data:image/gif;base64==';
         }
     }else {
        html5Reader(file);
     }
}
 
 function html5Reader(file){
     var file = file.files[0];
     var reader = new FileReader();
     reader.readAsDataURL(file);
     reader.onload = function(e){
         var pic = document.getElementById("preview");
         pic.src=this.result;
     }
 }
</script>



<div class="bottom">
		<ul>
			<li><a href="/Home/Personal/index"><img src="/Public/images/personal.png"></a></li>
			<li><a href="/Home/Order/index"><img src="/Public/images/order.png"></a></li>
			<li><a href="/Home/Cart/index"><img src="/Public/images/shopping.png"></a></li>
			<li><a href="/Home/Classify/index"><img src="/Public/images/classify.png"></a></li>
		</ul>
	</div>
</body>
</html>