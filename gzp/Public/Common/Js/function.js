// 预览图片
function previewImg(file, imgId, nameId, createId, sizeId, typeId) {
    if (file.value == "") {
        return;
    }
    var img = document.getElementById(imgId);  // 获取输出预览图片元素
    if (file.files && file.files[0]) {
        var reader = new FileReader();
        reader.readAsDataURL(file.files[0]);
        reader.onload = function (evt) {
            var reg = /^data:base64,/;
            var res = evt.target.result;
            if (reg.test(res)) {
                res = res.replace(reg, "data:" + file.files[0].type + ";base64,");
            }
            img.src = res;
            s = res;
        };
    } else {
        img.src = file.value;
    }
    var imgName = nameId;
    var imgCreate = createId;
    var imgSize = sizeId;
    var imgType = typeId;
    checkImgSize(file, imgName, imgCreate, imgSize, imgType);
}
// 检测上传图片名称、创建时间、大小、类型
function checkImgSize(file, imgName, imgCreate, imgSize, imgType) {
    var size = 0;
    if (file.files && file.files[0]) {
        name = file.files[0].name;
        lastModified = file.files[0].lastModified;
        size = file.files[0].size;
        type = file.files[0].type;
    }
    document.getElementById(imgName).innerHTML = name;
    document.getElementById(imgCreate).innerHTML = timestampToTime(lastModified);
    document.getElementById(imgSize).innerHTML = bytesToSize(size);
    document.getElementById(imgType).innerHTML = type;
}
// 时间戳转换日期格式
function timestampToTime(timestamp) {
    var date = new Date(timestamp); //时间戳为10位需*1000，时间戳为13位的话不需乘1000
    Y = date.getFullYear() + '-';
    M = (date.getMonth() + 1 < 10 ? '0' + (date.getMonth() + 1) : date.getMonth() + 1) + '-';
    D = date.getDate() + ' ';
    h = date.getHours() + ':';
    m = date.getMinutes() + ':';
    s = date.getSeconds();
    return Y + M + D + h + m + s;
}
// 数据容量单位转换(kb,mb,gb,tb)
function bytesToSize(bytes) {
    if (bytes === 0) return '0 B';
    var k = 1024, // or 1024
        sizes = ['B', 'KB', 'MB', 'GB', 'TB', 'PB', 'EB', 'ZB', 'YB'],
        i = Math.floor(Math.log(bytes) / Math.log(k));
    return (bytes / Math.pow(k, i)).toPrecision(3) + ' ' + sizes[i];
}
// 检测上传文件大小
function checkFileSize(file) {
    var size = 0;
    if (file.files && file.files[0]) {
        size = file.files[0].size;
        //file.files[0].type	// 文件类型
        //file.files[0].name	// 文件名
    } else {
        file.select();
        var url = document.selection.createRange().text;
        try {
            var fso = new ActiveXObject("Scripting.FileSystemObject");
            size = fso.GetFile(url).size;
        } catch (e) {
            alert('如果你用的是ie8 请将安全级别调低！设置-》安全');
        }
    }
    alert("文件大小：" + size);
}
// 漂浮广告
/**
 * 调用（第一个判断为仅在首页显示飘窗）：
 * <if condition="(('www.police.com'.__SELF__) eq ('www.police.com/fazhi/index.php/Index/')) OR (('www.police.com'.__SELF__) eq ('www.police.com/fazhi/'))">
 * <volist name="data" id="v" key="k">
 *     <div id="roll{$p}" style="position: relative">
 *         <a href="" target="_blank"><img src="" width="150" /></a>
 *         <span style="CURSOR:pointer;position:absolute;z-indent:2;left:0px;top:-18px;" onclick="closed('roll{$p}')">关闭</span>
 *     </div>
 *     <SCRIPT type=text/javascript>
 *         var roll{$p}=new AdMove("roll"+{$p});
 *         roll{$p}.Run();
 *     </SCRIPT>
 * </volist>
 * </if>
 */
function addEvent(obj, evtType, func, cap) {
    cap = cap || false;
    if (obj.addEventListener) {
        obj.addEventListener(evtType, func, cap);
        return true;
    } else if (obj.attachEvent) {
        if (cap) {
            obj.setCapture();
            return true;
        } else {
            return obj.attachEvent("on" + evtType, func);
        }
    } else {
        return false;
    }
}
function getPageScroll() {
    var xScroll, yScroll;
    if (self.pageXOffset) {
        xScroll = self.pageXOffset;
    } else if (document.documentElement && document.documentElement.scrollLeft) {
        xScroll = document.documentElement.scrollLeft;
    } else if (document.body) {
        xScroll = document.body.scrollLeft;
    }
    if (self.pageYOffset) {
        yScroll = self.pageYOffset;
    } else if (document.documentElement && document.documentElement.scrollTop) {
        yScroll = document.documentElement.scrollTop;
    } else if (document.body) {
        yScroll = document.body.scrollTop;
    }
    arrayPageScroll = new Array(xScroll, yScroll);
    return arrayPageScroll;
}
function GetPageSize() {
    var xScroll, yScroll;
    if (window.innerHeight && window.scrollMaxY) {
        xScroll = document.body.scrollWidth;
        yScroll = window.innerHeight + window.scrollMaxY;
    } else if (document.body.scrollHeight > document.body.offsetHeight) {
        xScroll = document.body.scrollWidth;
        yScroll = document.body.scrollHeight;
    } else {
        xScroll = document.body.offsetWidth;
        yScroll = document.body.offsetHeight;
    }
    var windowWidth, windowHeight;
    if (self.innerHeight) {
        windowWidth = self.innerWidth;
        windowHeight = self.innerHeight;
    } else if (document.documentElement && document.documentElement.clientHeight) {
        windowWidth = document.documentElement.clientWidth;
        windowHeight = document.documentElement.clientHeight;
    } else if (document.body) {
        windowWidth = document.body.clientWidth;
        windowHeight = document.body.clientHeight;
    }
    if (yScroll < windowHeight) {
        pageHeight = windowHeight;
    } else {
        pageHeight = yScroll;
    }
    if (xScroll < windowWidth) {
        pageWidth = windowWidth;
    } else {
        pageWidth = xScroll;
    }
    arrayPageSize = new Array(pageWidth, pageHeight, windowWidth, windowHeight)
    return arrayPageSize;
}
var AdMoveConfig = new Object();
AdMoveConfig.IsInitialized = false;
AdMoveConfig.ScrollX = 0;
AdMoveConfig.ScrollY = 0;
AdMoveConfig.MoveWidth = 0;
AdMoveConfig.MoveHeight = 0;
AdMoveConfig.Resize = function () {
    var winsize = GetPageSize();
    AdMoveConfig.MoveWidth = winsize[2];
    AdMoveConfig.MoveHeight = winsize[3];
    AdMoveConfig.Scroll();
}
AdMoveConfig.Scroll = function () {
    var winscroll = getPageScroll();
    AdMoveConfig.ScrollX = winscroll[0];
    AdMoveConfig.ScrollY = winscroll[1];
}
addEvent(window, "resize", AdMoveConfig.Resize);
addEvent(window, "scroll", AdMoveConfig.Scroll);
function AdMove(id) {
    if (!AdMoveConfig.IsInitialized) {
        AdMoveConfig.Resize();
        AdMoveConfig.IsInitialized = true;
    }
    var obj = document.getElementById(id);
    obj.style.position = "absolute";
    var W = AdMoveConfig.MoveWidth - obj.offsetWidth;
    var H = AdMoveConfig.MoveHeight - obj.offsetHeight;
    var x = W * Math.random(), y = H * Math.random();
    var rad = (Math.random() + 1) * Math.PI / 6;
    var kx = Math.sin(rad), ky = Math.cos(rad);
    var dirx = (Math.random() < 0.5 ? 1 : -1), diry = (Math.random() < 0.5 ? 1 : -1);
    var step = 1;
    var interval;
    this.SetLocation = function (vx, vy) {
        x = vx;
        y = vy;
    }
    this.SetDirection = function (vx, vy) {
        dirx = vx;
        diry = vy;
    }
    obj.CustomMethod = function () {
        obj.style.left = (x + AdMoveConfig.ScrollX) + "px";
        obj.style.top = (y + AdMoveConfig.ScrollY) + "px";
        rad = (Math.random() + 1) * Math.PI / 6;
        W = AdMoveConfig.MoveWidth - obj.offsetWidth;
        H = AdMoveConfig.MoveHeight - obj.offsetHeight;
        x = x + step * kx * dirx;
        if (x < 0) {
            dirx = 1;
            x = 0;
            kx = Math.sin(rad);
            ky = Math.cos(rad);
        }
        if (x > W) {
            dirx = -1;
            x = W;
            kx = Math.sin(rad);
            ky = Math.cos(rad);
        }
        y = y + step * ky * diry;
        if (y < 0) {
            diry = 1;
            y = 0;
            kx = Math.sin(rad);
            ky = Math.cos(rad);
        }
        if (y > H) {
            diry = -1;
            y = H;
            kx = Math.sin(rad);
            ky = Math.cos(rad);
        }
    }
    this.Run = function () {
        var delay = 10;
        interval = setInterval(obj.CustomMethod, delay);
        obj.onmouseover = function () {
            clearInterval(interval);
        }
        obj.onmouseout = function () {
            interval = setInterval(obj.CustomMethod, delay);
        }
    }
}
function closed(obj) {
    document.getElementById(obj).style.visibility = 'hidden';
}
// 获取URL
window.location.href;                 //获取完整URL：            http://www.police.com/fazhi/index.php/News/news/c_id/746
window.location.host;                 //获取域名（不含http://）：www.police.com
function GetUrlRelativePath() {
    var url = document.location.toString();
    var arrUrl = url.split("//");
    var start = arrUrl[1].indexOf("/");
    //stop省略，截取从start开始到结尾的所有字符
    var relUrl = arrUrl[1].substring(start);
    if (relUrl.indexOf("?") != -1) {
        relUrl = relUrl.split("?")[0];
    }
    return relUrl;
}   //相对路径：               /fazhi/index.php/News/news/c_id/746
function GetUrlPara() {
    var url = document.location.toString();
    var arrUrl = url.split("?");
    var para = arrUrl[1];
    return para;
}           //获取当前Url参数：        假如http//www.liangshunet.com/pub/item.aspx?t=osw7，则t=osw7
function GetUrlParam(paraName) {
    var url = document.location.toString();
    var arrObj = url.split("?");
    if (arrObj.length > 1) {
        var arrPara = arrObj[1].split("&");
        var arr;
        for (var i = 0; i < arrPara.length; i++) {
            arr = arrPara[i].split("=");
            if (arr != null && arr[0] == paraName) {
                return arr[1];
            }
        }
        return "";
    }
    else {
        return "";
    }
}  //获取指定Url参数：        假如test.htm?id=896&s=q&p=5，则GetUrlParam("p")，返回5
function textarea(html) {
    var text = $(html).val();
    var des = text.replace(/\r\n/g, '<br/>').replace(/\n/g, '<br/>').replace(/\s/g, '&nbsp');
    $(html).val(des);
}         // ①textarea带空格回车存到数据库，自动转换回车及空格
function reTextarea(reHtml) {
    var text = $(reHtml).text();
    var des = text.replace(/<br\/>/g,'\n');
    $(reHtml).text(des);
}     // ②被上处理过存入数据库再在textarea显示的处理，视情况而定是否加解析函数：htmlspecialchars_decode
// ③被上处理过存入数据库再在HTML的<div>标签中显示的处理，解析函数：htmlspecialchars_decode
// 打印<input type="button" value="打 印" onclick="javascript:window.print();" />
// window.print();
