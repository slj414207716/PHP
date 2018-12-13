<?php
namespace Home\Controller;
use Think\Controller;
class LoginController extends Controller
{
	// 登录视频页面
	public function open()
	{
		$this->display();
	}
	// 登录
	public function login()
	{
		$this->display();
	}
	// 登录验证
	public function checkLogin()
	{
		$model = M('User');
        $rules = array(
            array('username','require','用户名不能为空',1),
            array('password','require','密码不能为空',1),
        );
        if($ret = $model->validate($rules)->create())
        {
            $username = $ret['username'];
            if($userInfo = $model->where("username='$username'")->find())
            {
                $salt = $userInfo['salt'];
                $password = $ret['password'];
                $checkPassword = md5($salt+$password);
 
                if($user = $model->where("password='$checkPassword'")->find())
                {
                    $id = $user['id'];
                    // ①写入session
                    session('id',$id);
                    session('username',$user['username']);
                    // ②更新最后登录时间，登录次数
                    $data['last_time'] = time();
                    $data['login_count'] = $user['login_count'] + 1;
                    $model->where("id = '$id'")->save($data);
                    $this->redirect('Home/Index/index');
                }else{
                    echo '<script>alert("密码输入错误");window.location.href="'.C('HOST_NAME').'/Home/Index/index";</script>';
                }
            }else{
                echo '<script>alert("无此用户");window.location.href="'.C('HOST_NAME').'/Home/Index/index";</script>';
            }
        }
	}
	// 退出登录
	public function logout()
	{
		session(null);
		$this->redirect('Home/Login/login');
	}
}