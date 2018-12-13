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
	        data: ['精神智力','言语听力','肢体','多重'],
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
	        data: ['中革','后革','鞍子山','夏家河子','棋盘','羊圈子'],
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
	            name: '精神智力',
	            type: 'bar',
	            stack: '总量',
	            barWidth:50,
	            label: {
	                normal: {
	                    show: true,
	                    position: 'insideRight'
	                }
	            },
	            data: ['35','22','8','12','42','8']
	        },
	        {
	            name: '言语听力',
	            type: 'bar',
	            stack: '总量',
	            label: {
	                normal: {
	                    show: true,
	                    position: 'insideRight'
	                }
	            },
	            data: ['18','14','11','16','22','8']
	        },
	        {
	            name: '肢体',
	            type: 'bar',
	            stack: '总量',
	            label: {
	                normal: {
	                    show: true,
	                    position: 'insideRight'
	                }
	            },
	            data: ['47','32','22','34','47','19']
	        },
	        {
	            name: '多重',
	            type: 'bar',
	            stack: '总量',
	            label: {
	                normal: {
	                    show: true,
	                    position: 'insideRight'
	                }
	            },
	            data: ['5','4','5','1','9','5']
	        }
	
	    ]
	};
    myChart1.setOption(option1);

    var myChart1 = echarts.init(document.getElementById('main2'),'shine');
    var option1 = {
	    title : {
	        text: '革镇堡街道残疾人总人数',
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
	        data: ['中革','后革','鞍子山','夏家河子','棋盘','羊圈子'],
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
	                {value:'105', name:'中革'},
	                {value:'72', name:'后革'},
	                {value:'46', name:'鞍子山'},
	                {value:'63', name:'夏家河子'},
	                {value:'110',name:'棋盘'},
	                {value:'40',name:'羊圈子'},
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
