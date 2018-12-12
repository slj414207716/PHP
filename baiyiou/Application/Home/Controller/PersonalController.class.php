<?php
namespace Home\Controller;
use Think\Controller;
class PersonalController extends Controller {
    public function index(){

        $this->display();
    }

    public function loginout(){

    	unset($_SESSION['tel']);
      	session_destroy();
      	echo "<script>alert('ok');location.href='/Home/Login/index';</script>";
    	
    }
    public function information(){


        $province = M('tree')->where ( array('pid'=>1) )->select ();

        $this->assign('province',$province);

        $this->display();
    }

       public function getRegion(){

           $Region=M("Tree");

           $map['pid']=$_REQUEST["pid"];

           $map['type']=$_REQUEST["type"];

           $list=$Region->where($map)->select();
           
           echo json_encode($list);
   }

    public function save(){

    	$upload = new \Think\Upload();// 实例化上传类
        $upload->maxSize   =     3145728 ;// 设置附件上传大小
        $upload->exts      =     array('jpg', 'gif', 'png', 'jpeg');// 设置附件上传类型
        $upload->rootPath  =     './Uploads/'; // 设置附件上传根目录
        $upload->savePath  =     'touxiang/'; // 设置附件上传（子）目录
        // 上传文件 
        $info   =   $upload->upload();
        if(!$info) {
            // 上传错误提示错误信息
            $this->error($upload->getError());
        }else{
            // 上传成功
            $id=I('get.id');
          	$data['img'] = '/Uploads/'.$info['img']['savepath'].$info['img']['savename'];
 			$data['name'] = I('post.username');
    		$data['sex'] = I('post.pass');
    		$data['email'] = I('post.mail');
            $data['address'] = I('post.city');
			$model = M('user');
 			$flag = $model->where("id='$id'")->save($data);
 			if ($flag) {
 			
 				$this->success('个人信息更新成功，请重新登录','/Home/Login/index');
 			}else{
 				$this->error('失败');
 			}
        }

       
    }


    public function ercode(){

        $id=I('get.tel');

        Vendor('phpqrcode.phpqrcode');

        $text = 'http://192.168.31.187:8080/Home/Login/login/tel/'.$id;// 可以是文字,可以是链接

        \QRcode::png($text,false,'M',5,1,false);
    }


    public function address(){

        $model = M('address');

        $data = $model->select();

        $this->assign('data',$data);
        $this->display();

    }

    public function address_addok(){

        $data['name'] = I('post.name');

        $data['tel'] = I('post.tel');

        $data['address'] = I('post.address');

        $model = M('address');
        $flag=$model->add($data);
        if ($flag) {
            
            $this->success('成功','address_add');
        }else{
            $this->error('失败','address_add');
        }

    }

    public function del(){

        
        $id = I('get.id');

        $model = M('address');

        $flag = $model->where("id='$id'")->delete();

        $this->redirect('/Home/Personal/address');
        if ($flag) {
            $this->success('成功','address_add');

        }else{
            $this->error('失败','address_add');
        }

    }


}