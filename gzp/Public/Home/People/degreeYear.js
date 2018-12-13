$(document).ready(function(){

// 地区生产总值
    var myChart1 = echarts.init(document.getElementById('main1'),'shine');
    var option1 = {
	    tooltip : {
	        trigger: 'axis',
	        axisPointer : {            // 坐标轴指示器，坐标轴触发有效
	            type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
	        }
	    },
	    legend: {
	        data: ['享受低保人数','重度残疾','非重度残疾'],
	        textStyle: {
	        	color: '#fff'
	        }
	    },
	    // grid: {
	    //     left: '3%',
	    //     right: '4%',
	    //     bottom: '3%',
	    //     containLabel: true
	    // },
	    yAxis:  {
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
	    },
	    xAxis: {
	        type: 'category',
	        name: '\n\n年份（年）',
	        data: ['2017','2016','2015','2014','2013'],
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
	            name: '享受低保人数',
	            type: 'bar',
	            stack: '总量',
	            barWidth:50,
	            label: {
	                normal: {
	                    show: true,
	                    position: 'insideRight'
	                }
	            },
	            data: ['37','33','41','47','51']
	        },
	        {
	            name: '重度残疾',
	            type: 'bar',
	            stack: '总量',
	            label: {
	                normal: {
	                    show: true,
	                    position: 'insideRight'
	                }
	            },
	            data: ['274','269','275','284','273']
	        },
	        {
	            name: '非重度残疾',
	            type: 'bar',
	            stack: '总量',
	            label: {
	                normal: {
	                    show: true,
	                    position: 'insideRight'
	                }
	            },
	            data: ['146','138','139','162','163']
	        }
	
	    ]
	};
    myChart1.setOption(option1);

    var myChart1 = echarts.init(document.getElementById('main2'),'shine');
    var option1 = {
	    title : {
	        text: '革镇堡街道残疾人总户数',
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
	        data: ['2017','2016','2015','2014','2013'],
	        textStyle:{
	            color:'#fff'
	        }
	    },
	    series : [
	        {
	            name:'户数',
	            type: 'pie',
	            radius : '55%',
	            center: ['50%', '60%'],
	            data:[
	                {value:'350', name:'2017'},
	                {value:'346', name:'2016'},
	                {value:'352', name:'2015'},
	                {value:'385', name:'2014'},
	                {value:'360',name:'2013'},
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
