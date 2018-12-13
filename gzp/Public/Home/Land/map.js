$(document).ready(function(){
    $('#cun').change(function(){
        window.location.href="/index.php/Home/Land/map/sid/1/cun/"+$(this).val()+"";
    });    

    jsonName = eval('('+jsonName+')');
    jsonData = eval('('+jsonData+')');
    var partyCha = echarts.init(document.getElementById('count'),'shine');
    var partyOpt = {
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
                radius: [0, '50%'],
                /*
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
                */
                data: jsonData,
            },
        ]
    };
    partyCha.setOption(partyOpt);

    $('#selYear').change(function(){
        window.location.href="/index.php/Home/Land/map/sid/2/year/"+$(this).val()+"";
    }); 

});
