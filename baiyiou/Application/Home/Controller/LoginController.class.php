<?php
namespace Home\Controller;
use Think\Controller;
class LoginController extends Controller {
    public function index(){



        $this->display();
    }




    public function addlogin(){

 		  $data["tel"]=I("post.user");

    	$data["password"]=I("post.password");

    	$login = M('user');

    	$flag=$login->add($data);
      $count = count($flag);
    	if ($count>0) {
   			
   			$this->success('添加成功','index');

       	}else{
       		$this->error('添加失败');
       	}

    }

    public function loginok(){

    	 $name = I('post.user');

       $pass = I('post.password');

       $model = M('user');

       $sql = $model->where("tel=$name and password=$pass")->find();
       $count = count($sql);

       if ($count>0) {
          
          $this->success('登录成功','/Home/Index/index');
       }else{

          $this->error('登录失败');
       }
       
       session('id',$sql['id']);
       session('img',$sql['img']);
       session('name',$sql['name']);
       session('sex',$sql['sex']);
       session('tel',$sql['tel']);
       $this->redirect('/Home/Index/index');
    }

    
}