# wordexport

#### 项目介绍

    将HTML页面内容导出为word

#### 使用说明

1. 关于调用：html

        <script src="__PUBLIC__/Common/js/jquery-3.3.1.min.js" type="text/javascript"></script>
        <script type="text/javascript" src="__PUBLIC__/Common/toword/FileSaver.js"></script>
        <script type="text/javascript" src="__PUBLIC__/Common/toword/jquery.wordexport.js"></script>
        <script type="text/javascript">
            jQuery(document).ready(function($) {
                $("#to").click(function(event) {  // 获取按钮id
                    $("#box").wordExport("自定义导出的文件名称");       // 获取要转成word内容的外层包含id
                });
            });
        </script>
2. 关于样式：jquery.wordexport.js（64#）

        打印表格时候，table要给100%；第一列要指定宽度百分比，如不给列宽太窄会出现文字竖着排列；单独的列可以给居中居左居右效果
        //TODO: load css from included stylesheet
        var styles = "table{border: 1px solid black;border-collapse:collapse;margin: auto;width: 100%;}th{border: 1px solid black;width: 20%}td{border: 1px solid black;text-align: center;}.content{text-align: left}";
