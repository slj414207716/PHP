<?php
return array(
    // 数据库配置
    'DB_TYPE' =>  'mysql',      // mysql,mysqli,pdo
    'DB_USER' =>  'root',       // 用户名
    'DB_PWD' =>  'root',        // 密码
    'DB_PORT' =>  '3306',       // 端口
    'DB_PREFIX' =>  'gzp_',     // 数据库表前缀
    'DB_HOST' =>  'localhost',  // 服务器地址
    'DB_NAME' =>  'gzppro',        // 数据库名
    'DB_CHARSET' =>  'utf8', // 数据库编码默认采用utf8

    // 开启跟踪
    'SHOW_PAGE_TRACE'=> true,

    // 网站域名定义（HTML/JS）
    'HOST_NAME'=>'http://www.gzppro.com/index.php',

    // 后台设置
    'title' => '后台首页by:jking',   // 后台页面标题
    'logo' => 'by:jking',            // 后台logo

    // 首页设置
    'DEFAULT_MODULE'        =>  'Home', // 默认模块
    'DEFAULT_CONTROLLER'    =>  'Index', // 默认控制器名称
    'DEFAULT_ACTION'        =>  'index', // 默认操作名称

    // 跳转模板替换
    'TMPL_ACTION_ERROR'     =>  THINK_PATH.'Tpl/dispatch_jump.tpl', // 默认错误跳转对应的模板文件
    'TMPL_ACTION_SUCCESS'   =>  THINK_PATH.'Tpl/dispatch_jump.tpl', // 默认成功跳转对应的模板文件

    // 分页设置
    'page'=>10,

    // 上传配置
    'maxSize' => 10*1024*1024,                          // 设置附件上传大小
    'exts' => array('jpg', 'gif', 'png', 'jpeg','bmp'), // 设置附件上传类型
    'rootPath' => './Uploads/',                         // 设置附件上传根目录
    'autoSub' => true,                                  // 开启子目录保
    'subName' => array('date','Ymd'),                   // 以日期（格式为Ymd）为子目录

    // 验证码
    'useImgBg' => true,         // 开启图库背景
    'fontttf' => '4.ttf',       // 使用字体
    'useCurve'  => true,        // 使用干扰线
    'codeSet' => '0123456789',  // 指定字符集
    'length' => 4,              // 显示位数
);
function msubstr($str, $start=0, $length, $charset="utf-8", $suffix=true)
{
    if(function_exists("mb_substr")){
        if($suffix)
            return mb_substr($str, $start, $length, $charset)."...";
        else
            return mb_substr($str, $start, $length, $charset);
    }
    elseif(function_exists('iconv_substr')) {
        if($suffix)
            return iconv_substr($str,$start,$length,$charset)."...";
        else
            return iconv_substr($str,$start,$length,$charset);
    }
    $re['utf-8']   = "/[x01-x7f]|[xc2-xdf][x80-xbf]|[xe0-xef]
                  [x80-xbf]{2}|[xf0-xff][x80-xbf]{3}/";
    $re['gb2312'] = "/[x01-x7f]|[xb0-xf7][xa0-xfe]/";
    $re['gbk']    = "/[x01-x7f]|[x81-xfe][x40-xfe]/";
    $re['big5']   = "/[x01-x7f]|[x81-xfe]([x40-x7e]|xa1-xfe])/";
    preg_match_all($re[$charset], $str, $match);
    $slice = join("",array_slice($match[0], $start, $length));
    if($suffix) return $slice."…";
    return $slice;
}

function getpage($count, $pagesize = 10) {
    $p = new Think\Page($count, $pagesize);
    $p->setConfig('header', '<li class="rows">共<b>%TOTAL_ROW%</b>条记录 第<b>%NOW_PAGE%</b>页/共<b>%TOTAL_PAGE%</b>页</li>');
    $p->setConfig('prev', '上一页');
    $p->setConfig('next', '下一页');
    $p->setConfig('last', '末页');
    $p->setConfig('first', '首页');
    $p->setConfig('theme', '%FIRST%%UP_PAGE%%LINK_PAGE%%DOWN_PAGE%%END%%HEADER%');
    $p->lastSuffix = false;//最后一页不显示为总页数
    return $p;
}