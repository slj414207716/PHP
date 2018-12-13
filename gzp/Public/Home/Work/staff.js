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
	        data: ['园长','专任教师','保健医','保育员','其他','研究生','本科','专科','高中','高中以下'],
	        textStyle: {
	        	color: '#fff'
	        }
	    },
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
	        data: ['中革村幼儿园','海华幼儿园','金凤凰幼儿园','夏家河幼儿园','鋆百合幼儿园','棋盘幼儿园','心蕊幼儿园','春阳幼儿园','祈福娃娃幼儿园','儿童之家幼儿园'],
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
	            name: '园长',
	            type: 'bar',
	            stack: '总量',
	            barWidth:50,
	            label: {
	                normal: {
	                    show: true,
	                    position: 'insideRight'
	                }
	            },
	            data: ['1','1','2','1','1','1','1','1','2','1']
	        },
	        {
	            name: '专任教师',
	            type: 'bar',
	            stack: '总量',
	            label: {
	                normal: {
	                    show: true,
	                    position: 'insideRight'
	                }
	            },
	            data: ['9','10','14','6','7','6','12','2','16','5']
	        },
	        {
	            name: '保健医',
	            type: 'bar',
	            stack: '总量',
	            label: {
	                normal: {
	                    show: true,
	                    position: 'insideRight'
	                }
	            },
	            data: ['1','1','1','1','1','0','1','0','1','1']
	        },
	        {
	            name: '保育员',
	            type: 'bar',
	            stack: '总量',
	            label: {
	                normal: {
	                    show: true,
	                    position: 'insideRight'
	                }
	            },
	            data: ['5','5','7','3','5','2','6','1','8','3']
	        },
	        {
	            name: '其他',
	            type: 'bar',
	            stack: '总量',
	            label: {
	                normal: {
	                    show: true,
	                    position: 'insideRight'
	                }
	            },
	            data: ['4','5','6','0','3','1','7','1','5','2']
	        },

	        {
	            name: '研究生',
	            type: 'bar',
	            stack: '学历',
	            barWidth:50,
	            label: {
	                normal: {
	                    show: true,
	                    position: 'insideRight'
	                }
	            },
	            data: ['0','0','0','0','0','0','0','0','0','0']
	        },
	        {
	            name: '本科',
	            type: 'bar',
	            stack: '学历',
	            label: {
	                normal: {
	                    show: true,
	                    position: 'insideRight'
	                }
	            },
	            data: ['1','3','0','6','0','2','13','0','3','1']
	        },
	        {
	            name: '专科',
	            type: 'bar',
	            stack: '学历',
	            label: {
	                normal: {
	                    show: true,
	                    position: 'insideRight'
	                }
	            },
	            data: ['15','9','17','2','6','7','8','0','17','3']
	        },
	        {
	            name: '高中',
	            type: 'bar',
	            stack: '学历',
	            label: {
	                normal: {
	                    show: true,
	                    position: 'insideRight'
	                }
	            },
	            data: ['4','0','5','3','8','0','4','1','5','0']
	        },
	        {
	            name: '高中以下',
	            type: 'bar',
	            stack: '学历',
	            label: {
	                normal: {
	                    show: true,
	                    position: 'insideRight'
	                }
	            },
	            data: ['0','11','8','0','3','1','2','0','7','8']
	        }
	
	    ]
	};
    myChart1.setOption(option1);

});
