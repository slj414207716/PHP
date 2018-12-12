<?php
namespace Admin\Controller;
use Think\Controller;
class LoginController extends Controller
{
    /*
     * 用户登录
     */
    public function index(){
        if (IS_POST) {
            $login = M('admin');
            $uname = $_POST['username'];
            $pwd = $_POST['password'];
            $res = $login->where("tel='" . $uname . "' AND password='" . $pwd . "'")->find();
            if (count($res)) {

                session('user',$res['tel']);
                $this->success('登录成功！', U('Index/index'));
            } else {
                $this->error('用户名或密码错误！');
            }
        } else {
            $this->display();
        }
    }

    /*
     *
     */
    public function loginok(){
        $model=M('admin');
        $data['tel']=I('post.username');
        $data['password']=I('post.password');
        $sql = $model->add($data);
        if ($sql) {
            $this->success('成功',U('Login/index'));
        }else{
            $this->error('失败');
        }
    }
    /*
     * 退出登录
     */
    public function logout()
    {
        session(NULL);
        $this->success('退出成功！', U('Login/index'));
    }
}