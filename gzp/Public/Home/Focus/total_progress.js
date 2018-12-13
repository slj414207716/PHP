$(document).ready(
    function () {
        // ++++++++++++++++++++++++处理折现图
        // console.log(amount_data);
        // var amount_month_length = amount_data["finished"].length;
        // for (i = 0; i < amount_month_length; i++) {
        //     amount_month[i] = amount_data["total"][i].month;
        //     amount_finished[i] = Number(amount_data["finished"][i].amount);
        //     amount_total[i] = amount_data["total"][i].amount.toString();
        // }
        //
        // for (i = 0; i < amount_month_length; i++) {
        //     amount_month[i] = "" + amount_month[i] + '月';
        // }
        // console.log(amount_month);
        // console.log(amount_finished);
        // console.log(amount_total);
        // echarts_plugin.line(id = 'main1', data_xclass = amount_month, data_name = ["完成","总共"], data_value = [amount_finished, amount_total], data_title = "按事项新增趋势");
        /** 第一个图 **/
        var amount_month = [];
        var amount_finished = [];
        var amount_total = [];
        var len = amount_data['finished'].length;
        for (var i = 0; i < len; i++) {
            amount_month[i] = amount_data['finished'][i].month + '月';
            amount_finished[i] = amount_data['finished'][i].amount.toString();
            amount_total[i] = amount_data['total'][i].amount.toString();
        }
        var myChart = echarts.init(document.getElementById('main1'), 'shine');
        var option = {
            title: {
                text: '按事项新增趋势',
                left: 'left'
            },
            tooltip: {
                trigger: 'axis',
                axisPointer: {
                    type: 'cross',
                    label: {
                        backgroundColor: '#6a7985'
                    }
                }
            },
            legend: {
                data: ['邮件营销', '联盟广告']
            },
            toolbox: {
                feature: {
                    saveAsImage: {}
                }
            },
            grid: {
                left: '3%',
                right: '4%',
                bottom: '3%',
                containLabel: true
            },
            xAxis: [
                {
                    type: 'category',
                    boundaryGap: false,
                    data: amount_month,
                    axisLine: {
                        lineStyle: {
                            color: '#fff'
                        }
                    }
                }
            ],
            yAxis: [
                {
                    type: 'value',
                    axisLine: {
                        lineStyle: {
                            color: '#fff'
                        }
                    }
                }
            ],
            series: [
                {
                    name: '完成',
                    type: 'line',
                    stack: '完成',
                    areaStyle: {normal: {}},
                    data: amount_finished
                },
                {
                    name: '总共',
                    type: 'line',
                    stack: '总共',
                    areaStyle: {normal: {}},
                    data: amount_total
                }
            ],
            color: ['rgb(254,67,101)', 'rgb(252,157,154)', 'rgb(249,205,173)', 'rgb(200,200,169)', 'rgb(131,175,155)', 'rgb(152,245,255)']
        };

        myChart.setOption(option);


        // ++++++++++++++++++++++++处理折现图
        var type_name = [];
        var type_amount = [];
        //var e_data = [];
        var e_data = '';
        for (i = 0; i < type_data.length; i++) {
            type_name[i] = type_data[i].type_name; //['','']
            type_amount[i] = type_data[i].amount;
            e_data += "{value:" + type_amount[i] + ", name:'" + type_name[i] + "'}";
            if ((i + 1) != type_data.length) {
                e_data += ',';
            }
        }
        e_data = '[' + e_data + ']';

        var obj = eval("(" + e_data + ")");

        var status_name = [];
        var progress_amount = [];
        var e_data2 = '';
        for (i = 0; i < progress_data.length; i++) {
            status_name[i] = progress_data[i].status_name;
            progress_amount[i] = progress_data[i].amount;
            e_data2 += "{value:" + progress_amount[i] + ", name:'" + status_name[i] + "'},";
        }
        e_data2 = '[' + e_data2 + ']';

        var obj2 = eval("(" + e_data2 + ")");

        // console.log(amount_data);

        // 折线图
        // option1 = {
        //     title: {
        //         text: '按事项新增趋势',
        //         x: 'center'
        //     },
        //     tooltip: {
        //         trigger: 'axis',
        //         axisPointer: {
        //             type: 'cross',
        //             label: {
        //                 backgroundColor: '#6a7985'
        //             }
        //         }
        //     },
        //     grid: {
        //         left: '3%',
        //         right: '4%',
        //         bottom: '3%',
        //         containLabel: true
        //     },
        //     xAxis: [{
        //         type: 'category',
        //         boundaryGap: true,
        //         data: amount_month
        //     }],
        //     yAxis: [{
        //         type: 'value'
        //     }],
        //     series: [{
        //         name: '完成',
        //         type: 'line',
        //         data: amount_finished
        //     }, {
        //         name: '总共',
        //         type: 'line',
        //         data: amount_total
        //     }]
        // }

        var obj2_value = [];
        for (var i = 0; i < progress_data.length; i++) {
            obj2_value[i] = obj2[i].value;
        }

        var obj_value = [];
        var obj_name = [];
        for (var i = 0; i < obj.length; i++) {
            obj_name[i] = obj[i].name;
            obj_value[i] = obj[i].value;
        }

        echarts_plugin.pie(id = "main2", data_class = obj_name, data_value = obj_value, data_title = "按事项类型统计");
        echarts_plugin.pie(id = "main3", data_class = status_name, data_value = obj2_value, data_title = "按进度状态", group_index = true);
    }
);
