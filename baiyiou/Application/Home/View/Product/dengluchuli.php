<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title></title>
  <link rel="stylesheet" href="">
</head>
<body>
  <?php 
    session_start();
    $uid=$_POST["uid"]; 
    $pwd=$_POST["pwd"];
    //连接数据库
    $db=new MySQLi("localhost","root","root","baiyiou");
    !mysqli_connect_error() or die("连接错误");
    $db->query("set names utf8");
    //查询密码
    $sql="select password from login where username='{$uid}'";
    $result=$db->Query($sql);
    $arr=$result->fetch_all();
    if(@$arr[0][0]==$pwd && !empty($pwd)) //判断所填写的密码和取到的密码是一样的，而且密码不能为空
    {
       //定义用户uid为超全局变量
       $_SESSION["uid"]=$uid;
       //跳转页面
       header("location:index1.php");
   }
   else
   {
       echo"登录失败";
   }
 ?>
</body>
</html>
