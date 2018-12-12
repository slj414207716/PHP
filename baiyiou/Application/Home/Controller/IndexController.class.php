<?php
namespace Home\Controller;
use Think\Controller;
class IndexController extends Controller {
    public function index(){

    	

    	$model =M('ify');

    	$data = $model->select();
    	
    	$this->assign('data',$data);

        $this->display();
    }

}