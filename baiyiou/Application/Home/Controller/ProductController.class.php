<?php
namespace Home\Controller;
use Think\Controller;
class ProductController extends Controller {
    public function index(){

    	
    	// $id=I('get.id');
    	// $model = M('ify');
    	// $flag = $model->where("id='$id'")->find();
    	// $data = $model->select();
    	// $this->assign('data',$data);
    	// $this->assign('flag',$flag);
        

        $model=M('fruit');
        $flag=$model->select();
        $this->assign('flag',$flag);

        $amodel=M('orders');
        $data=$amodel->select();
        $this->assign('data',$data);


        $this->display();
    }

    public function add(){

            $ids=$_POST["ids"];
            $uid=$_SESSION["uid"];
            // $date=date("Y-m-d");//获取时间
            $sql="select numbers from fruit where ids='$ids'";
            $res=$db->query($sql);
            $att=$res->fetch_row();
            foreach($att as $v){
                if($v>0){  //条件判断
                    $sql="insert into orders values('$uid"."$date','$uid','$date')";
                    $db->query($sql);
                    $sql="insert into orderdetails  values('','$uid"."$date','$ids',1)";
                    $db->query($sql);
                    header("location:index/ids=$ids");
                }else{
                    header("location:index1.php?kc=库存不足");
                }
            }          

    }

} 
// <?php
//         session_start();
//         //连接数据库
//         $db=new MySQLi("localhost","root","root","baiyiou");
//         !mysqli_connect_error() or die("连接失败");
//         $db->query("set names utf8");
//         //获取传值
//         $ids=$_GET["ids"];
//         $uid=$_SESSION["uid"];    //用户账号
//         //查询商品表
//         $sql="select * from fruit";
//         $res=$db->query($sql);
//         $attr=$res->fetch_all();

//         $sql="select Code from orders where UserName ='$uid'";
//         $res=$db->query($sql);
//         $dhattr=$res->fetch_all();//单号数组
//         $dhStr="";
//         //数组遍历，转为字符串
//         foreach($dhattr as $v){
//             $dhStr=$dhStr.$v[0]."','";
//         }
//         $dhStr=substr($dhStr,0,-3);//截取字符串
//         $sql="select FruitCode,count(Count) from orderDetails where OrderCode in('$dhStr') group by FruitCode" ;
//         $res=$db->query($sql);  
//         $spattr=$res->fetch_all();//购物车水果信息数组
//         $strPice=0;
//         foreach($attr as $v){
//             foreach($spattr as $v1){
//                 if($v[0]==$v1[0]){
//                     $strPice=$strPice+$v[2]*$v1[1];
//                 }
//             }
//         }
//     ?>