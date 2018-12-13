<?php
namespace Home\Controller;
class LandController extends BaseController
{
    public function lst() {
        $landColumnModel = M('Land_column');
        $_data = $landColumnModel->select();
        foreach($_data as $k=>$v)
        {
            if($v['pid']==0){
                foreach($_data as $k1=>$v1)
                {
                    if($v1['pid']==$v['id'])
                    {
                        foreach($_data as $k2=>$v2)
                        {
                            if($v2['pid']==$v1['id'])
                            {
                                $v1['child'][] = $v2;
                            }
                        }
                        $v['child'][] = $v1;
                    }
                }
                $data[] = $v;
            }
        }
        $this->assign('data',$data);
        $this->display();
    }
    public function map() {
        // 表格
        $landCountModel = M('Land_count');
        $where = array();
        $where['year'] = array('eq',date("Y"));
        if($_GET['year']!='') {
            $where['year'] = array('eq',$_GET['year']);
        }
        // 图表
        $count = $landCountModel->where($where)->select();
        foreach($count as $k=>$v) {
            $jsonName[] = $v['name'];
            $jsonData[$k]['value'] = $v['num'];
            $jsonData[$k]['name'] = $v['name'];
        }
        // 年份
        $year = date("Y");
        for($i=0;$i<5;$i++) {
            $yearData[] = $year - $i;
        }
        $this->assign(array(
            'count'=>$count,
            'yearData'=>$yearData,
            'jsonName'=>json_encode($jsonName),
            'jsonData'=>json_encode($jsonData),
        ));
        $this->display();
    }
    // 地块相关
    public function plot() {
        $dikuaiModel = M('Land_dikuai');
        $where = array();
        if($_GET['own']!='') {
            $where['own'] = array('eq',urldecode($_GET['own']));
        }
        $dikuaiData = $dikuaiModel->where($where)->select();
        $this->assign(array(
            'data'=>$dikuaiData,
        ));
        $this->display();
    }
    // 拟出让地块
    public function plan() {
        $landZhanlueModel = M('Land_zhanlue');
        $where = array();
        $order = array();
        $order = array(
            'cat1'=>ASC,
            'cat2'=>ASC,
        );
        $_data = $landZhanlueModel->order($order)->select();
        foreach($_data as $k=>$v) {
            $data[$k]['id'] = $v['id'];
            $data[$k]['cat1'] = $v['cat1'];
            $data[$k]['cat2'] = $v['cat2'];
            //$data[$k]['area'] = number_format(((float)$v['area']),7);
            $data[$k]['area'] = (float)$v['area'];
            $data[$k]['sid'] = $v['sid'];
        }
        for($i=0;$i<count($data);$i++) {
            $sum += $data[$i]['area'];
        }
        $this->assign(array(
            'data'=>$data,
            'sum'=>round($sum,2),
        ));
        $this->display();
    }
}
