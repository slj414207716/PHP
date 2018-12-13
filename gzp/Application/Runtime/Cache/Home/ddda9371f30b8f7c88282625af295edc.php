<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
	<style type="text/css">
		body,
		html {
			width: 100%;
			height: 100%;
			margin: 0;
			font-family: "微软雅黑";
		}

		#allmap {
			width: 100%;
			height: 100%;
		}

		#r-result {
			width: 100%;
			margin-top: 5px;
		}

		p {
			margin: 5px;
			font-size: 14px;
		}
	</style>
	<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=ZMeRv4P7zfn7c23xQRGK7fDo"></script>
	<title>散坟</title>
</head>

<body>
	<div id="allmap"></div>
</body>

</html>
<script type="text/javascript">
	// 百度地图API功能
	//新建三个地图上点
	// var points = [
	// 	{ "lng": 121.578376, "lat": 39.044125, "url": "#", "id": "榆山","name": ""},
	// 	{ "lng": 121.595354, "lat": 39.049393, "url": "#", "id": "东山","name": ""},
	// ];
    var data = '<?php echo $data ?>';
    data = eval('('+data+')');
    console.log(data);
    var points = [];
    for(var i=0;i<data.length;i++){
        points[i] = { "lng": data[i].lng, "lat": data[i].lat, "url": "#", "id": ""+data[i].name+"","name": ""+data[i].target+""};
    }
	//创建标注点并添加到地图中
	function addMarker(points) {
		var myIcon = new BMap.Icon("<?php echo (__APP_PUBLIC__); ?>/images/index/tip_ico.png", new BMap.Size(27,27),{
                anchor:new BMap.Size(13,15),
                imageOffset:new BMap.Size(0,0)
            });
		//循环建立标注点
		for (var i = 0, pointsLen = points.length; i < pointsLen; i++) {
			var point = new BMap.Point(points[i].lng, points[i].lat); //将标注点转化成地图上的点
			var label = new BMap.Label(points[i].id, { offset: new BMap.Size(30, 0) });
			var marker = new BMap.Marker(point,{icon:myIcon},label); //将点转化成标注点

			map.addOverlay(marker);  //将标注点添加到地图上
			label.setStyle({
				color: "#000",                   //颜色
				fontSize: "14px",               //字号
				border:"1",
				height: "23px",                //高度
				textAlign: "center",            //文字水平居中显示
				lineHeight: "22px",            //行高，文字垂直居中显示
				background: "url(<?php echo (__APP_PUBLIC__); ?>/images/index/tip.jpg)",    //背景图片，这是房产标注的关键！
				cursor: "pointer"
			});
			marker.setLabel(label);//显示地理名称
			//添加监听事件
			(function () {
				var thePoint = points[i];
				marker.addEventListener("click",
					function () {
						showInfo(this, thePoint);
					});
			})();
		}
	}
	function showInfo(thisMarker, point) {
		//获取点的信息
		var sContent =
			'<ul style="margin:0 0 5px 0;padding:0.2em 0">'
			+ '<li style="line-height: 26px;font-size: 14px;">'
			+ '<span></span>' + point.id + '</li>'
			+ '<li style="line-height: 26px;font-size: 14px;">'
			+ '<span></span>' + point.name + '</li>'
			+ '<li style="line-height: 26px;font-size: 14px;"></li>'
			+ '</ul>';
		var infoWindow = new BMap.InfoWindow(sContent); //创建信息窗口对象
		thisMarker.openInfoWindow(infoWindow); //图片加载完后重绘infoWindow
	}
	var map = new BMap.Map("allmap", { mapType: BMAP_HYBRID_MAP });
	map.centerAndZoom(new BMap.Point(121.516318,39.022448), 14);
	map.enableScrollWheelZoom(true);
	var mapType1 = new BMap.MapTypeControl({ mapTypes: [BMAP_NORMAL_MAP, BMAP_HYBRID_MAP] });

	var overView = new BMap.OverviewMapControl();
	var overViewOpen = new BMap.OverviewMapControl({ isOpen: true, anchor: BMAP_ANCHOR_BOTTOM_RIGHT });
	map.addControl(mapType1);          //2D图，卫星图
	map.addControl(overView);          //添加默认缩略地图控件
	map.addControl(overViewOpen);      //右下角，打开


	addMarker(points);



</script>