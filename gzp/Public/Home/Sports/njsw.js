$(document).ready(function(){

// 地区生产总值
    var myChart1 = echarts.init(document.getElementById('main1'),'shine');
    var option1 = {
	    tooltip: {
	        trigger: 'axis',
	        axisPointer: {
	            type: 'shadow',
	            crossStyle: {
	                color: '#999'
	            }
	        }
	    },
	    legend: {
	        data: ['面积', '藏书量'],
	        textStyle: {
	        	color: '#fff'
	        }
	    },
	    yAxis: {
	        type: 'value',
	        name: '平方米(㎡) 数量(册)',
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
	    },
	    xAxis: {
	        type: 'category',
	        data: ['中革','后革','棋盘','夏家河子','羊圈子','鞍子山','渤海居民委'],
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
	    },
	    series: [
	        {
	            name: '面积',
	            type: 'bar',
	            data: [20,20,202,40,300,100,200],
	            barWidth:50,
	            label: {
	                normal: {
	                   	show: true,
	                    position: 'inside'
	                }
	            }
	        },
	        {
	            name: '藏书量',
	            type: 'bar',
	            data: [3358,2363,2386,3000,4482,884,2600],
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

});
