$(document).ready(function(){
    jsonData = eval('('+ jsonData +')');
    var t;
    for(var i=0; i<jsonData.length; i++){
        for(var j=0; j<jsonData.length-1; j++) {
            if(parseInt(jsonData[j]['id'])<parseInt(jsonData[j+1]['id'])) {
                t = jsonData[j];
                jsonData[j] = jsonData[j+1];
                jsonData[j+1] = t;
            }
        }
    }
    var year = new Array();
    var plan = new Array();
    var real = new Array();
    for(var k=0; k<jsonData.length; k++) {
        year[k] = jsonData[k]['year'];
        plan[k] = jsonData[k]['plan'];
        real[k] = jsonData[k]['real'];
    }
    var myChart = echarts.init(document.getElementById('year'),'shine');
    var option = {
        tooltip: {
        	trigger: 'axis',  
	        axisPointer: {
	            type: 'cross', 
	            crossStyle: {
	                color: '#777'
	            }
	        }
	    },
	    toolbox: {
	        feature: {
	            saveAsImage: {show: true}
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
	            data: year,
	            axisPointer: {
	                type: 'shadow' 
	            },
	            axisLabel: {
	                color: '#fff'
	            },
	            axisLine :{
	            	lineStyle :{
	            		color: '#fff'
	            	}
	            },
	        }
	    ],
	    yAxis: [
	        {
	            type: 'value',
	            name: '实际完成(亿)',
	            axisLabel: {
	                formatter: '{value}'
	            },
	            axisLine :{
	            	lineStyle :{
	            		color: '#fff'
	            	}
	            },
	            splitLine :{
					lineStyle:{
						type:'dashed',
						color: '#3c3c3c'
					}
				}
	        },
	    ],
	    series: [
	        {
	            name:'实际完成',
	            type:'bar',
	            barWidth : 80,//柱图宽度
	            data: real,
	            label: {
		            normal: {
		                show: true,
		                position: 'insideTop'
		            }
		        },
	        },
	    ]
    };
    myChart.setOption(option);	
});
