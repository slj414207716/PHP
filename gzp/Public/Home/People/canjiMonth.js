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
	            data: ['11','13','4','5','13','3']
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
	            data: ['40','30','13','12','45','14']
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
	            data: ['65','42','33','51','65','26']
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
	                {value:'97', name:'中革'},
	                {value:'67', name:'后革'},
	                {value:'45', name:'鞍子山'},
	                {value:'57', name:'夏家河子'},
	                {value:'95',name:'棋盘'},
	                {value:'36',name:'羊圈子'},
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
