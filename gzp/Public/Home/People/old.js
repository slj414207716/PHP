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
	        data: ['男','女'],
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
	        name: '\n\n单位',
	        data: ['60岁以上','65岁以上','70岁以上','80岁以上','90岁以上','100岁以上'],
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
	            name: '男',
	            type: 'bar',
	            stack: '总量',
	            barWidth:50,
	            label: {
	                normal: {
	                    show: true,
	                    position: 'insideRight'
	                }
	            },
	            data: ['2446','1617','1074','298','18','0']
	        },
	        {
	            name: '女',
	            type: 'bar',
	            stack: '总量',
	            label: {
	                normal: {
	                    show: true,
	                    position: 'insideRight'
	                }
	            },
	            data: ['2784','1860','1240','372','51','2']
	        }
	
	    ]
	};
    myChart1.setOption(option1);

    var myChart1 = echarts.init(document.getElementById('main2'),'shine');
    var option1 = {
	    title : {
	        text: '革镇堡街道60岁及以上老年人总人数',
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
	        data: ['60岁以上','65岁以上','70岁以上','80岁以上','90岁以上','100岁以上'],
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
	                {value:'5230', name:'60岁以上'},
	                {value:'3477', name:'65岁以上'},
	                {value:'2314', name:'70岁以上'},
	                {value:'670', name:'80岁以上'},
	                {value:'69',name:'90岁以上'},
	                {value:'2',name:'100岁以上'},
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
