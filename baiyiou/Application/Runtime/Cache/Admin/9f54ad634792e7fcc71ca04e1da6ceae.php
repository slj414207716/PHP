<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="Pragma" content="no-cache" /> 
  <meta http-equiv="Cache-Control" content="no-cache" /> 
  <meta http-equiv="Expires" content="0" /> 
  <title>后台登录</title> 
  <link href="/Public/style/login.css" type="text/css" rel="stylesheet" /> 
  <script type="text/javascript" src="/Public/js/jquery-1.9.0.min.js"></script>
  <script>
      function show(){

        var name = $("#username").val();
        var pwd = $("#password").val();

        if (name=="") {

          $("#msg").html("<font color='red'>用户不能为空</font>");
          return false;
        }
        if (pwd=="") {
          $("#msg").html("<font color='red'>密码不能为空</font>");
          return false;
        }
      }

  </script>
 </head> 
 <body> 
  <div class="login"> 
   <div class="message">
    管理登录
   </div> 
   <div id="darkbannerwrap"></div> 
   <form method="post" action="index"> 
    <input name="username" placeholder="用户名" id="username" type="text" /> 
    <hr class="hr15" /> 
  
    <input name="password" placeholder="密码" id="password" type="password" /> 
    <hr class="hr15" /> 
      <span id="msg"></span>
   <!--  <input name="code" placeholder="验证码" type="text" />      
    <hr class="hr15" /> 
    <img src="../libs/code.class.php" style="width: 164px;
    height: 53px;" onClick="this.src='../libs/code.class.php?nocache='+Math.random()" title="点击刷新">
    <hr class="hr15" /> -->
    <input value="登录" style="width:100%;" type="submit" onclick="return show()" /> 
    <hr class="hr20" />
   </form> 
  </div> 
 </body>
</html>