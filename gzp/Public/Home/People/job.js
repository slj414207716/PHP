$(document).ready(function(){

// 地区生产总值
    var myChart1 = echarts.init(document.getElementById('main1'),'shine');
    var option1 = {
    	//提示框组件
	    tooltip: {
	        //触发类型:坐标轴触发
	        trigger: 'axis',

	        //坐标轴指示器配置项
	        axisPointer: {
	        	//十字架
	            type: 'cross',
	            crossStyle: {
	                color: '#999'
	            }
	        }
	    },
	    //工具栏
	    toolbox: {
	    	//各工具配置项
	        feature: {
	        	//数据视图工具，可以展现当前图表所用的数据，编辑后可以动态更新。
	        	//是否显示该工具。
	        	//是否不可编辑（只读）。
	            dataView: {show: true, readOnly: false},

	            //动态类型切换
	            //是否显示该工具。
	            //启用的动态类型
	            magicType: {show: true, type: ['line', 'bar']},

	            //配置项还原。是否显示该工具。
	            restore: {show: true},

	            //保存为图片。
	            saveAsImage: {show: true}
	        }
	    },
	    //图例组件
	    legend: {
	    	//图例的数据数组
	        data:['总人数'],
	        //图例的公用文本样式
	        textStyle: {
	        	color: '#fff'
	        }
	    },
	    //直角坐标系 grid 中的 x 轴
	    xAxis: [
	        {
	        	//坐标轴类型
	            type: 'category',
	            name: '\n\n单位',
	            data: ['失业资源','本期就业','其他原因减少','期末失业资源'],
	            //坐标轴刻度标签的相关设置
	            axisLabel: {
	                    color: '#fff', 
	            },
	            //轴上设置 
	            axisPointer: {
	                type: 'shadow'
	            },
	            //坐标轴轴线相关设置。
	            axisLine :{
	            	lineStyle :{
	            		color: '#fff'
	            	}
	            }
	        }
	    ],
	    //直角坐标系 grid 中的 y 轴
	    yAxis: [
	        {
	            type: 'value',
	            name: '人数(人)',
	            // interval: 500,
	            //坐标轴名称的文字样式。
	            nameTextStyle: {
	                color: '#fff'
	            },
	            axisLabel: {
	                formatter: '{value}',
	                color: '#fff'
	            },
	            axisLine :{
	            	lineStyle :{
	            		color: '#fff'
	            	}
	            },
	            //坐标轴在 grid 区域中的分隔线
	            splitLine :{
					lineStyle:{
						type:'dashed',
						color: '#3c3c3c'
					}
				}
	        }

	    ],
	    series: [
	        
	        {
	            name:'总人数',
	            type:'bar',
	            data:['1856','1285','298','362'],
	            barWidth:50,
	            label: {
	                normal: {
	                   	show: true,
	                    position: 'inside'
	                }
	            }
	        }

	    ]
	};
    myChart1.setOption(option1);

    var myChart1 = echarts.init(document.getElementById('main2'),'shine');
    var option1 = {
    title : {
        text: '革镇堡就业和失业详细情况',
        x:'center',
        textStyle:{
             color:'#fff'
        }     
    },
    tooltip : {
        trigger: 'item',
        formatter: "{a} <br/>{b} : {c} ({d}%)"
    },
    legend: {
        orient: 'vertical',
        left: 'left',
        data: ['失业资源','本期就业','其他原因减少','期末失业资源'],
        textStyle:{
            color:'#fff'
        }
    },
    series : [
        {
            name:'人数',
            type: 'pie',
            radius : '55%',
            center: ['50%', '60%'],
            data:[
                {value:'1856', name:'失业资源'},
                {value:'1285', name:'本期就业'},
                {value:'298', name:'其他原因减少'},
                {value:'362', name:'期末失业资源'},
            ],
            itemStyle: {
                emphasis: {
                    shadowBlur: 10,
                    shadowOffsetX: 0,
                    shadowColor: 'rgba(0, 0, 0, 0.5)'
                }
            }
        }
    ]
    };
    myChart1.setOption(option1);    

});
