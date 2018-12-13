$(document).ready(function(){
    jsonData = eval('('+ jsonData +')');
    jsonName = eval('('+ jsonName +')');    
    console.log(jsonData); 
    console.log(jsonName);
    var year = new Array();
    var name1 = new Array();
    var name2 = new Array(); 
    var name3 = new Array();
    for(var i=0;i<jsonData.length;i++) {
        year[i] = jsonData[i]['year'];
        if(jsonName[0]=='大专以下') {
            name1[i] = jsonData[i]['大专以下'];
            name2[i] = jsonData[i]['大专及以上'];
        }else if(jsonName[0]=='男') {
            name1[i] = jsonData[i]['男'];
            name2[i] = jsonData[i]['女'];
        }else if(jsonName[0]=='60岁以下') {
            name1[i] = jsonData[i]['60岁以下'];
            name2[i] = jsonData[i]['60岁及以上'];
        }else if(jsonName[0]=='机关事业单位') {
            name1[i] = jsonData[i]['机关事业单位'];
            name2[i] = jsonData[i]['农村'];
            name3[i] = jsonData[i]['非公企'];
        }
    }
    console.log(year);
    console.log(name1);
    console.log(name2);
    var partyCha1 = echarts.init(document.getElementById('party1'),'shine');

    var partyOpt1 = {
        tooltip : {
            trigger: 'axis',
            axisPointer: {
                type: 'cross',
                crossStyle: {
                    color: '#999'
                }
            }
        },
        legend: {
            data: jsonName,
            textStyle: {
                color: '#fff',
            },
        },
        toolbox: {
            feature: {
                saveAsImage: {}
            }
        },
        grid: {
            containLabel: false
        },
        xAxis : [
            {
                type : 'category',
                name: '单位：年',
                boundaryGap : true,
                data : year,
                axisLabel: {
                    color: '#fff' 
                },
                axisLine :{
                    lineStyle :{
                        color: '#fff'
                    }
                }
            }
        ],
        yAxis : [
            {
                type: 'value',  // 数值轴，适用于连续数据
                name: '单位：人',
                nameTextStyle: {
                    color: '#fff'
                },
                axisLine: {
                    lineStyle: {
                        color: '#fff'
                    }
                },
                axisLabel: {
                    formatter: '{value}',
                    color: '#fff'  
                },
                splitLine :{
                    lineStyle:{
                        type:'dashed',
                        color: '#fff'
                    }
                }
            }
        ],
        series : [
            {
                name:'大专以下',
                type:'bar',
                barWidth: 50,
                stack: '总量',
                areaStyle: {},
                data: name1,
                label: {
                    normal: {
                        show: true,                 // 柱形图显示数据
                        position: 'insideTop'    // 显示位置
                    }
                },
            },
            {
                name:'大专及以上',
                type:'bar',
                barWidth: 50,
                stack: '总量',
                areaStyle: {},
                data: name2,
                label: {
                    normal: {
                        show: true,                 // 柱形图显示数据
                        position: 'insideTop'    // 显示位置
                    }
                },
            },
        ] 
    };

    var partyOpt2 = {
        tooltip : {
            trigger: 'axis',
            axisPointer: {
                type: 'cross',
                crossStyle: {
                    color: '#999'
                }
            }
        },
        legend: {
            data: jsonName,
            textStyle: {
                color: '#fff',
            },
        },
        toolbox: {
            feature: {
                saveAsImage: {}
            }
        },
        grid: {
            containLabel: false
        },
        xAxis : [
            {
                type : 'category',
                name: '单位：年',
                boundaryGap : true,
                data : year,
                axisLabel: {
                    color: '#fff' 
                },
                axisLine :{
                    lineStyle :{
                        color: '#fff'
                    }
                }
            }
        ],
        yAxis : [
            {
                type: 'value',  // 数值轴，适用于连续数据
                name: '单位：人',
                nameTextStyle: {
                    color: '#fff'
                },
                axisLine: {
                    lineStyle: {
                        color: '#fff'
                    }
                },
                axisLabel: {
                    formatter: '{value}',
                    color: '#fff'  
                },
                splitLine :{
                    lineStyle:{
                        type:'dashed',
                        color: '#fff'
                    }
                }
            }
        ],
        series : [
            {
                name:'男',
                type:'bar',
                barWidth: 50,
                stack: '总量',
                areaStyle: {},
                data: name1,
                label: {
                    normal: {
                        show: true,                 // 柱形图显示数据
                        position: 'insideTop'    // 显示位置
                    }
                },
            },
            {
                name:'女',
                type:'bar',
                barWidth: 50,
                stack: '总量',
                areaStyle: {},
                data: name2,
                label: {
                    normal: {
                        show: true,                 // 柱形图显示数据
                        position: 'insideTop'    // 显示位置
                    }
                },
            },
        ] 
    };

    var partyOpt3 = {
        tooltip : {
            trigger: 'axis',
            axisPointer: {
                type: 'cross',
                crossStyle: {
                    color: '#999'
                }
            }
        },
        legend: {
            data: jsonName,
            textStyle: {
                color: '#fff',
            },
        },
        toolbox: {
            feature: {
                saveAsImage: {}
            }
        },
        grid: {
            containLabel: false
        },
        xAxis : [
            {
                type : 'category',
                name: '单位：年',
                boundaryGap : true,
                data : year,
                axisLabel: {
                    color: '#fff' 
                },
                axisLine :{
                    lineStyle :{
                        color: '#fff'
                    }
                }
            }
        ],
        yAxis : [
            {
                type: 'value',  // 数值轴，适用于连续数据
                name: '单位：人',
                nameTextStyle: {
                    color: '#fff'
                },
                axisLine: {
                    lineStyle: {
                        color: '#fff'
                    }
                },
                axisLabel: {
                    formatter: '{value}',
                    color: '#fff'  
                },
                splitLine :{
                    lineStyle:{
                        type:'dashed',
                        color: '#fff'
                    }
                }
            }
        ],
        series : [
            {
                name:'60岁以下',
                type:'bar',
                barWidth: 50,
                stack: '总量',
                areaStyle: {},
                data: name1,
                label: {
                    normal: {
                        show: true,                 // 柱形图显示数据
                        position: 'insideTop'    // 显示位置
                    }
                },
            },
            {
                name:'60岁及以上',
                type:'bar',
                barWidth: 50,
                stack: '总量',
                areaStyle: {},
                data: name2,
                label: {
                    normal: {
                        show: true,                 // 柱形图显示数据
                        position: 'insideTop'    // 显示位置
                    }
                },
            },
        ] 
    };
    
    var partyOpt4 = {
        tooltip : {
            trigger: 'axis',
            axisPointer: {
                type: 'cross',
                crossStyle: {
                    color: '#999'
                }
            }
        },
        legend: {
            data: jsonName,
            textStyle: {
                color: '#fff',
            },
        },
        toolbox: {
            feature: {
                saveAsImage: {}
            }
        },
        grid: {
            containLabel: false
        },
        xAxis : [
            {
                type : 'category',
                name: '单位：年',
                boundaryGap : true,
                data : year,
                axisLabel: {
                    color: '#fff' 
                },
                axisLine :{
                    lineStyle :{
                        color: '#fff'
                    }
                }
            }
        ],
        yAxis : [
            {
                type: 'value',  // 数值轴，适用于连续数据
                name: '单位：人',
                nameTextStyle: {
                    color: '#fff'
                },
                axisLine: {
                    lineStyle: {
                        color: '#fff'
                    }
                },
                axisLabel: {
                    formatter: '{value}',
                    color: '#fff'  
                },
                splitLine :{
                    lineStyle:{
                        type:'dashed',
                        color: '#fff'
                    }
                }
            }
        ],
        series : [
            {
                name:'机关事业单位',
                type:'bar',
                barWidth: 50,
                stack: '总量',
                areaStyle: {},
                data: name1,
                label: {
                    normal: {
                        show: true,                 // 柱形图显示数据
                        position: 'insideTop'    // 显示位置
                    }
                },
            },
            {
                name:'农村',
                type:'bar',
                barWidth: 50,
                stack: '总量',
                areaStyle: {},
                data: name2,
                label: {
                    normal: {
                        show: true,                 // 柱形图显示数据
                        position: 'insideTop'    // 显示位置
                    }
                },
            },
            {
                name:'非公企',
                type:'bar',
                barWidth: 50,
                stack: '总量',
                areaStyle: {},
                data: name3,
                label: {
                    normal: {
                        show: true,                 // 柱形图显示数据
                        position: 'insideTop'    // 显示位置
                    }
                },
            },
        ] 
    };
    if(jsonName[0]=='大专以下') {
        partyCha1.setOption(partyOpt1);	
    }else if(jsonName[0]=='男') {
        partyCha1.setOption(partyOpt2);	
    }else if(jsonName[0]=='60岁以下') {
        partyCha1.setOption(partyOpt3);	
    }else if(jsonName[0]=='机关事业单位') {
        partyCha1.setOption(partyOpt4);	
    }

    jsonData2 = eval('('+ jsonData2 +')');
    console.log(jsonData2);
    var partyCha2 = echarts.init(document.getElementById('party2'),'shine');
    var partyOpt2 = {
        tooltip: {
            trigger: 'item',
            formatter: "{a} <br/>{b}: {c} ({d}%)"
        },
        legend: {
            orient: 'horizontal',
            data: jsonName,
            textStyle: {
                color: '#fff'
            }
        },
        series: [
            {
                name:'本年数据',
                type:'pie',
                selectedMode: 'multiple',
                radius: ['20%', '40%'],
                label: {
                    normal: {
                        position: 'outside',
                        formatter: '{a|{a}}{abg|}\n{hr|}\n  {b|{b}：}{c}  {per|{d}%}  ',
                        backgroundColor: '#eee',
                        borderColor: '#aaa',
                        borderWidth: 1,
                        borderRadius: 4,
                        padding: [0, 7],
                        rich: {
                            a: {
                                color: '#999',
                                lineHeight: 22,
                                align: 'center'
                            },
                            hr: {
                                borderColor: '#aaa',
                                width: '100%',
                                borderWidth: 0.5,
                                height: 0
                            },
                            b: {
                                fontSize: 16,
                                lineHeight: 33
                            },
                            per: {
                                color: '#eee',
                                backgroundColor: '#334455',
                                padding: [2, 4],
                                borderRadius: 2
                            }
                        }
                    }
                },
                labelLine: {
                    normal: {
                        show: true,
                    }
                },
                data: jsonData2,
            },
        ]
    };
    partyCha2.setOption(partyOpt2);
});
