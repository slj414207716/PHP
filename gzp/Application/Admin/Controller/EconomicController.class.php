<?php
namespace Admin\Controller;

class EconomicController extends BaseController
{
    // 基本指标
    public function jbzb() {
        $shxfModel = M('Shxf'); 
        $where = array();
        // 搜索相关
        $_year = date("Y");
        for($i=0;$i<5;$i++) {
            $year[] = $_year-$i;
        } 
        if(($_GET['year']!='')&&($_GET['year']!=0)) {
            $where['year'] = array('eq',$_GET['year']);
        }
        if(($_GET['sid']!='')&&($_GET['sid']!=0)) {
            $where['sid'] = array('eq',$_GET['sid']);
        }
        // 搜索相关
        // 表格相关
        $order = array(
            'year'=>DESC,
            'sid'=>ASC,
            'month'=>DESC,
        );
        $_shxfData = $shxfModel->where($where)->order($order)->select();
        $count = count($_shxfData);
        $size = 15;
        $page = new \Think\Tools\Page($count, $size);
        $show = $page->fpage(array(0,3,4,5,6,7,8));
        $shxfData = $shxfModel
            ->where($where)
            ->order($order)
            ->limit($page->limit)
            ->select();
        // 表格相关
        $this->assign(array(
            'year'=>$year,
            'shxfData'=>$shxfData,
            'page'=>$show,
        ));
        $this->display();
    }
    public function jbzbAdd() {
        $shxfModel = M('Shxf');
        if(IS_POST) {
            $rules = array(
                array('sid',0,'请选择项目',1,'notequal'),
                array('plan', 'number', '计划任务必须填写且为纯数字', 1),
                array('real', 'number', '实际完成填写项必须为纯数字', 2),
            );
            if ($ret = $shxfModel->validate($rules)->create()) {
                $ret['month'] = explode('-',$ret['year'])[1];
                $ret['year'] = explode('-',$ret['year'])[0];
                if ($shxfModel->add($ret)) {
                    $this->_year($ret);
                    $this->redirect('/Admin/Economic/jbzb');
                }
            }
            echo "<script>alert('操作失败：".$shxfModel->getError()."');window.location.href='".HOST_NAME."/Admin/Economic/jbzbAdd';</script>";
            exit;
        }
        $this->display();
    }
    public function jbzbEdit() {
        $id = I('get.id');
        $shxfModel = M('Shxf');
        $data = $shxfModel->where('id='.$id.'')->find();
        if($data['month']<10) {
            $data['time'] = $data['year'].'-0'.$data['month'].'-01';

        }else{
            $data['time'] = $data['year'].'-'.$data['month'].'-01';
        }
        if(IS_POST) {
            $rules = array(
                array('sid',0,'请选择项目',1,'notequal'),
                array('plan', 'number', '计划任务必须填写且为纯数字', 1),
                array('real', 'number', '实际完成填写项必须为纯数字', 2),
            );
            if ($ret = $shxfModel->validate($rules)->create()) {
                $ret['month'] = explode('-',$ret['year'])[1];
                $ret['year'] = explode('-',$ret['year'])[0];
                if ($shxfModel->where('id='.$id.'')->save($ret)!==false) {
                    $this->_year($ret);
                    $this->redirect('/Admin/Economic/jbzb');
                }
            }
            echo "<script>alert('操作失败：".$shxfModel->getError()."');window.location.href='".HOST_NAME."/Admin/Economic/jbzbEdit/id/".$id."';</script>";
            exit;

        }
        $this->assign(array(
            'data'=>$data,
        ));
        $this->display();
    }
    // 自动处理年度表方法
    public function _year($ret) {
        // 添加之后操作年度表
        // 获取本次添加的年份和sid
        $shxfModel = M('Shxf');
        $endWhere = array();
        $endWhere['year'] = array('eq',$ret['year']);
        $endWhere['sid'] = array('eq',$ret['sid']);
        // 去表中查本次添加数据的年度和sid相同的是否满足12条信息
        $end = $shxfModel->where($endWhere)->select();
        // 如果满足12条数据，那么就操作年度表
        if(count($end)==12) {
            // 先制作擦作年度表的一条数据
            $tmp = array();
            foreach($end as $k=>$v) {
                $tmp['year'] = $v['year'];
                $tmp['sid'] = $v['sid'];
                $tmp['plan'] += $v['plan'];
                $tmp['real'] += $v['real'];
            }
            // 在进新增或者修改的选择性判断
            // 先去年度表中查找对应条件的数据
            $shxfYModel = M('Y_shxf');
            $shxfYWhere = array();
            $shxfYWhere['year'] = $tmp['year'];
            $shxfYWhere['sid'] = $tmp['sid'];
            $shxfYData = $shxfYModel->where($shxfYWhere)->find();
            // 如果没有当年度的且当前sid的数据，增加plan/real
            if(!$shxfYData) {
                $shxfYModel->add($tmp);
            // 如果有当年度的且当前sid的数据，修改plan/real
            }else{
                $shxfYModel->where($shxfYWhere)->save($tmp);
            }
        }
    }
    public function jbzbDel() {
        $id = I('get.id');
        $shxfModel = M('Shxf');
        $ret = $shxfModel->where('id='.$id.'')->delete();
        if($ret){
            $this->redirect('/Admin/Economic/jbzb');
        } 
    }

    // 重点项目
    public function zdxm() {
        $where = array();
        if($_GET['name']!='') {
            $where['name'] = array('eq',$_GET['name']);
        }
        $order = array(
            'category'=>ASC,
            'id'=>DESC,
        );
        $fdclproModel = M('Fdclpro');

        $_data = $fdclproModel->where($where)->select();
        $count = count($_data);
        $size = 15;
        $page = new \Think\Tools\Page($count, $size);
        $show = $page->fpage(array(0,3,4,5,6,7,8)); 
        $data = $fdclproModel->where($where)->order($order)->limit($page->limit)->select();
        $this->assign(array(
            'data'=>$data,
            'page'=>$show,
        ));
        $this->display();
    }
    public function zdxmAdd() {
        if(IS_POST) {
            $fdclproModel = M('Fdclpro');
            $rules = array(
                array('category',0,'请选择类型',1,'notequal'),
                array('name','require','项目名称必须填写'),
                array('content','require','个案必须填写'),
            );
            if($fdclproModel->validate($rules)->create()) {
                if($fdclproModel->add()) {
                    $this->redirect('Admin/Economic/zdxm');     
                }
            }
            echo "<script>alert('操作失败：".$fdclproModel->getError()."');window.location.href='".HOST_NAME."/Admin/Economic/zdxmAdd';</script>";
            exit;
        }
        $this->display();
    }   
    public function zdxmEdit() {
        $id = I('get.id');
        $fdclproModel = M('Fdclpro');
        $data = $fdclproModel->where('id='.$id.'')->find();
        $this->assign(array(
            'data'=>$data,
        ));
        $this->display();
    }
    public function zdxmDel() {
        $id = I('get.id');
        $fdclproModel = M('Fdclpro');
        if($fdclproModel->where('id='.$id.'')->delete()) {
            $this->redirect('Admin/Economic/zdxm');
        }
    }
    public function zdxmPros() {
        $pid = I('get.pid');
        $fdclprosModel = M('Fdclpros');
        $_data = $fdclprosModel->where('pid='.$pid.'')->order('addtime DESC')->select();
        $count = count($_data);
        $size = 15;
        $page = new \Think\Tools\Page($count, $size);
        $show = $page->fpage(array(0,3,4,5,6,7,8));
        $data = $fdclprosModel
            ->alias('a')
            ->field('a.*,b.name')
            ->join('LEFT JOIN __FDCLPRO__ b on a.pid=b.id')
            ->where('pid='.$pid.'')
            ->order('addtime DESC')
            ->limit($page->limit)
            ->select();
        $this->assign(array(
            'data'=>$data,    
            'page'=>$show,
        ));
        $this->display();
    }
    public function zdxmProsAdd() {
        
        $this->display();
    }
    public function zdxmProsEdit() {
        
        $this->display();
    }
    public function zdxmProsDel() {

    }
    // 招商引资
    public function zsyz() {

        $this->display();
    }

    // 重点企业
    public function zdqy() {

        $this->display();
    }
}
