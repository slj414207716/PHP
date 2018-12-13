$(document).ready(
    function () {
        // // 获取内容区域尺寸
        // var contents_width = $('.contents').width();
        // var contents_height = $('.contents').height();
        // // 获取二级菜单高度
        // var nav_son_height = $('.nav_son').outerHeight(true);
        // // 计算直播窗口高度
        // var video_window_height = contents_height - nav_son_height;
        //
        // // 设置直播窗口的高度
        // // $('.video_window').css('height', video_window_height + 'px');
        // // 设置直播窗口默认文字的行高
        // // $('.video_window span').css('line-height', video_window_height + 'px');
        // // 设置右边区域的高度
        // $('.right_window').css('height', video_window_height + 'px');


        // 解析预案列表数据
        plan_list_json = eval('(' + plan_list_json + ')');
        // 监听点击图例
        $('.plan_list').click
        (
            function () {
                // 获取被选中的选项
                var selected_item = $(':checkbox[name="event_type[]"]:checked');
                // 清理显示区域
                $('.plan_list tbody').empty();
                for (i = 0; i < selected_item.length; i++) {
                    // 获取分类ID
                    var category_id = $(selected_item[i]).attr('value');
                    // 渲染数据
                    for (j = 0; j < plan_list_json[category_id].length; j++) {
                        var plan = plan_list_json[category_id][j];
                        var data = '<tr><td>' + plan['name'] + '</td></tr>';
                        $('.plan_list tbody').append(data);
                    }
                }
            }
        );

        /* 初始化百度地图 */
        var city_name = '大连';
        var lng = 121.534893;
        var lat = 39.0171;
        var map = new BMap.Map("map_inside");			// 创建Map实例
        var point = new BMap.Point(lng, lat);			// 设置中心点
        map.centerAndZoom(point, 16);					// 初始化地图,设置坐标和地图级别
        map.addControl(new BMap.MapTypeControl());		// 添加地图类型控件
        map.setCurrentCity('大连');						// 设置地图显示的城市（此项是必须设置的）
        map.enableScrollWheelZoom(true);				// 开启鼠标滚轮缩放
        var marker = new BMap.Marker(point); 			// 创建标记
        map.addOverlay(marker);            				// 增加标记
        marker.enableDragging();						// 将标记设置为可拖动
        // 实例化右上角控件，仅包含平移和缩放按钮
        var top_right_navigation = new BMap.NavigationControl
        (
            {
                anchor: BMAP_ANCHOR_TOP_RIGHT,
                type: BMAP_NAVIGATION_CONTROL_SMALL
            }
        );
        // 设置控件位置
        top_right_navigation.setOffset(new BMap.Size(20, 40));
        // 加载控件
        map.addControl(top_right_navigation);

        /* 点击地图时，重新设置标记 */
        map.addEventListener
        (
            "click",
            function (e) {
                map.clearOverlays();	// 清除所有标记
                // 获取当前城市
                var pt = e.point;
                var geoc = new BMap.Geocoder();
                geoc.getLocation
                (
                    pt,
                    function (rs) {
                        var new_city = rs.addressComponents.city;
                        // 设置地图显示的城市（此项是必须设置的）
                        map.setCurrentCity(new_city);
                    }
                );
                // 设置新的中心点
                var point = new BMap.Point(e.point.lng, e.point.lat);
                // 初始化地图,设置坐标和地图级别
                map.centerAndZoom(point, 16);
                // 创建标记
                var marker = new BMap.Marker(point);
                // 增加标记
                map.addOverlay(marker);
                // 将标记设置为可拖动
                marker.enableDragging();
            }
        );

        /* 点击“定位”按钮 */
        $('#fix_position').click
        (
            function () {
                if (!$('#address').val()) {
                    alert('请将地址填写完整');
                    return false;
                }
                // 拼装中文地址
                var true_address = $('#address').val();
                // 创建地址解析器实例
                var myGeo = new BMap.Geocoder();
                // 将地址解析结果显示在地图上,并调整地图视野
                myGeo.getPoint
                (
                    true_address,
                    function (point) {
                        if (point) {
                            var map = new BMap.Map("map_inside");		// 创建Map实例
                            map.centerAndZoom(point, 16);				// 初始化地图,设置坐标和地图级别
                            map.addControl(new BMap.MapTypeControl());	// 添加地图类型控件
                            map.setCurrentCity(city_name);				// 设置地图显示的城市（此项是必须设置的）
                            map.enableScrollWheelZoom(true);			// 开启鼠标滚轮缩放
                            map.clearOverlays();						// 删除全部标记
                            var marker = new BMap.Marker(point);		// 创建新的标记
                            map.addOverlay(marker);						// 将新标记添加至地图
                            marker.enableDragging();					// 将标记设置为可拖拽
                            // 实例化右上角控件，仅包含平移和缩放按钮
                            var top_right_navigation = new BMap.NavigationControl
                            (
                                {
                                    anchor: BMAP_ANCHOR_TOP_RIGHT,
                                    type: BMAP_NAVIGATION_CONTROL_SMALL
                                }
                            );
                            // 设置控件位置
                            top_right_navigation.setOffset(new BMap.Size(20, 40));
                            // 加载控件
                            map.addControl(top_right_navigation);

                            // 点击地图时，重新设置标记
                            map.addEventListener
                            (
                                "click",
                                function (e) {
                                    map.clearOverlays();	// 清除所有标记
                                    // 获取当前城市
                                    var pt = e.point;
                                    var geoc = new BMap.Geocoder();
                                    geoc.getLocation
                                    (
                                        pt,
                                        function (rs) {
                                            var new_city = rs.addressComponents.city;
                                            // 设置地图显示的城市（此项是必须设置的）
                                            map.setCurrentCity(new_city);
                                        }
                                    );
                                    // 设置新的中心点
                                    var point = new BMap.Point(e.point.lng, e.point.lat);
                                    // 初始化地图,设置坐标和地图级别
                                    map.centerAndZoom(point, 16);
                                    // 创建标记
                                    var marker = new BMap.Marker(point);
                                    // 增加标记
                                    map.addOverlay(marker);
                                    // 将标记设置为可拖动
                                    marker.enableDragging();
                                }
                            );

                        } else {
                            alert("定位失败，请手动定位");
                        }
                    },
                    city_name
                );
            }
        );


    }
);
