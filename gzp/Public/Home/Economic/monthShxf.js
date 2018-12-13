$(document).ready(function(){
    jsonData = eval('('+jsonData+')');
    jsonTb = eval('('+jsonTb+')');
    jsonHb = eval('('+jsonHb+')');
    var t;
    for(var i=0; i<jsonData.length; i++){
        for(var j=0; j<jsonData.length-1; j++) {
            if(parseInt(jsonData[j]['month'])>parseInt(jsonData[j+1]['month'])) {
                t = jsonData[j];
                jsonData[j] = jsonData[j+1];
                jsonData[j+1] = t;
            }
        }
    }
    var month = new Array();
    var real = new Array();
    var tb = new Array();
    var hb = new Array();
    for(var i=0; i<jsonData.length; i++) {
        month[i] = jsonData[i]['month'];
        real[i] = jsonData[i]['real'];
        tb[i] = jsonTb[i+1].substring(0,jsonTb[i+1].length-1);
        hb[i] = jsonHb[i+1].substring(0,jsonHb[i+1].length-1);
    }

    var myChart1 = echarts.init(document.getElementById('main1'),'shine');
    var option1 = {
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
	            data: month,
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
	            name: '实际完成(千万)',
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
	            barWidth : 30,//柱图宽度
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
    myChart1.setOption(option1);
    var myChart2 = echarts.init(document.getElementById('main2'),'shine');
    var option2 = {
	    tooltip: {
	        trigger: 'axis'
	    },
	    legend: {
	        data:['同比','环比'],
	        textStyle: {
	        	color: '#fff'
	        }
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
	    xAxis: {
	        type: 'category', 
	        boundaryGap: false,  
	        data: month,
	    	axisPointer: {
                type: 'shadow',
            },
            axisLabel: {
                color: '#fff'
            },
            axisLine :{
            	lineStyle :{
            		color: '#fff'
            	}
            },
	    },
	    yAxis: {
	        type: 'value',
	        name: '百分比(%)',
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
            splitLine :{
				lineStyle:{
					type:'dashed',
					color: '#3c3c3c'
				}
			}
	    },
	    series: [
	        {
	            name:'同比',
	            type:'line',
	            data: tb,
	            label: {
	                normal: {
	                    show: true,
	                    position: 'inside'
	                }
	            },
	        },
	        {
	            name:'环比',
	            type:'line',
	            data: hb,
	            label: {
	                normal: {
	                    show: true,
	                    position: 'inside'
	                }
	            },
	        },
	    ]
    };
    myChart2.setOption(option2);	
});
