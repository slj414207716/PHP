<?php
namespace Home\Controller;
use Think\Controller;
class ClassifyController extends Controller {
    public function index(){

    	$model = M('classify');
    	$data = $model->select();
    	$this->assign('data',$data);

    	$id=I('get.id');
    	$amodel = M('ify');
    	$adata = $amodel->where("classid='$id'")->select();
    	$this->assign('adata',$adata);

        $this->display();
    }

}