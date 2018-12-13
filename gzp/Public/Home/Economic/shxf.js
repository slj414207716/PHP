$(document).ready(function(){
    // 社会生产
    func.jb(jsonShxf);
    func.tbhb(jsonShxf);
});
var func = function(){};
func.jb = function(json) {
    json = eval('(' + json + ')'); 
    var data = json['data'];
    var t;
    for(var i=0; i<data.length; i++){
        for(var j=0; j<data.length-1; j++){
            if(parseInt(data[j]['id'])>parseInt(data[j+1]['id'])){
                t=data[j];
                data[j]=data[j+1];
                data[j+1]=t;
            }
        }
    }
    var month = new Array();
    var real = new Array();
    var plan = new Array();
    var zb = new Array();
    var tb = new Array();
    var hb = new Array();
    for(var k=0; k<data.length; k++) {
        month[k] = data[k]['month'];
        real[k] = data[k]['real'];
        plan[k] = data[k]['plan'];
        zb[k] = (json['zb'][k+1]).substring(0,(json['zb'][k+1]).length-1);
        tb[k] = (json['tb'][k+1]).substring(0,(json['tb'][k+1]).length-1);
        hb[k] = (json['hb'][k+1]).substring(0,(json['hb'][k+1]).length-1);
    }
    // 完成情况
    var shxfCha1 = echarts.init(document.getElementById('shxf1'),'shine');
    var shxfOpt1 = {
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
        legend: {
            data:['计划完成','实际完成','完成年度百分比'],
            textStyle: {
                color: '#fff'
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
            }
        ],
        yAxis: [
            {
                type: 'value',
                name: '数据(亿)',
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
            {
                type: 'value',
                name: '完成年度百分比',
                nameTextStyle: {
                    color: '#fff'
                },
                min: 0,
                max: 100,
                interval: 10,
                axisLabel: {
                    formatter: '{value}%',
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
            }
        ],
        series: [
            {
                name:'计划完成',
                type:'bar',
                data: plan,
                label: {
                    normal: {
                        show: true,
                        position: 'insideBottom'
                    }
                },
            },
            {
                name:'实际完成',
                type:'bar',
                data: real,
                label: {
                    normal: {
                        show: true,
                        position: 'insideTop'
                    }
                },
            },
            {
                name:'完成年度百分比',
                type:'line',
                yAxisIndex: 1,
                data: zb,
            }
        ]
    };
    return shxfCha1.setOption(shxfOpt1);	
}

func.tbhb = function(json) {
    json = eval('(' + json + ')'); 
    var data = json['data'];
    var t;
    for(var i=0; i<data.length; i++){
        for(var j=0; j<data.length-1; j++){
            if(parseInt(data[j]['id'])>parseInt(data[j+1]['id'])){
                t=data[j];
                data[j]=data[j+1];
                data[j+1]=t;
            }
        }
    }
    var month = new Array();
    var real = new Array();
    var plan = new Array();
    var zb = new Array();
    var tb = new Array();
    var hb = new Array();
    for(var k=0; k<data.length; k++) {
        month[k] = data[k]['month'];
        real[k] = data[k]['real'];
        plan[k] = data[k]['plan'];
        zb[k] = (json['zb'][k+1]).substring(0,(json['zb'][k+1]).length-1);
        tb[k] = (json['tb'][k+1]).substring(0,(json['tb'][k+1]).length-1);
        hb[k] = (json['hb'][k+1]).substring(0,(json['hb'][k+1]).length-1);
    }
    // 同比/环比
    var shxfCha2 = echarts.init(document.getElementById('shxf2'),'shine');
    var shxfOpt2 = {
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
            name: '百分比',
            axisLabel: {
                formatter: '{value}%',
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
    return shxfCha2.setOption(shxfOpt2);	
}
