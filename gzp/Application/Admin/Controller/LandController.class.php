<?php
namespace Admin\Controller;

class LandController extends BaseController
{
    // 规划
    public function map1() {
        $landGuihuaModel = M('Land_guihua');
        $where = array();
        if($_GET['name']!='') {
            $where['name'] = array('eq',$_GET['name']);
        }
        $_data = $landGuihuaModel->where($where)->order('id DESC')->select();
        $count = count($_data);
        $size = 15;
        $page = new \Think\Tools\Page($count, $size);
        $show = $page->fpage(array(0,3,4,5,6,7,8));
        $data = $landGuihuaModel->where($where)->order('id DESC')->limit($page->limit)->select();
        $this->assign(array(
            'data'=>$data,
            'page'=>$show,
        ));
        $this->display();
    }
    public function map1Add() {
        if(IS_POST) {
            $landGuihuaModel = M('Land_guihua');
            $rules = array(
                array('qid',0,'请选择所属区域',1,'notequal'),
                array('cid',0,'请选择类型',1,'notequal'),
                array('name','require','批文名称必须填写'),
                array('cycle','require','所需时间必须填写'),
                array('cycle','number','所需时间必须为存数字'),
            );
            if($ret = $landGuihuaModel->validate($rules)->create()) {
                $ret['addtime'] = time();
                if($landGuihuaModel->add($ret)) {
                    $this->redirect('/Admin/Land/map1');
                }
            }
            echo "<script>alert('操作失败：".$landGuihuaModel->getError()."');window.location.href='".HOST_NAME."/Admin/Land/map1Add';</script>";
        }
        $this->display();
    }
    public function map1Edit() {
        $id = I('get.id');
        $landGuihuaModel = M('Land_guihua');
        $data = $landGuihuaModel->where('id='.$id.'')->find();
        if(IS_POST) {
            $rules = array(
                array('qid',0,'请选择所属区域',1,'notequal'),
                array('cid',0,'请选择类型',1,'notequal'),
                array('name','require','批文名称必须填写'),
                array('cycle','require','所需时间必须填写'),
                array('cycle','number','所需时间必须为存数字'),
            );
            if($ret = $landGuihuaModel->validate($rules)->create()) {
                if($landGuihuaModel->where('id='.$id.'')->save($ret)!==false) {
                    $this->redirect('/Admin/Land/map1');
                }
            }
            echo "<script>alert('操作失败：".$landGuihuaModel->getError()."');window.location.href='".HOST_NAME."/Admin/Land/map1Edit/id/".$id."';</script>";
        }
        $this->assign(array(
            'data'=>$data,
        ));
        $this->display();
    }
    public function map1Del() {
        $id = I('get.id');
        $landGuihuaModel = M('Land_guihua');
        if($landGuihuaModel->where('id='.$id.'')->delete()) {
            $this->redirect('Admin/Land/map1');
        } 
    }
}
