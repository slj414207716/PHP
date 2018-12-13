<?php
namespace Home\Controller;
class PartyController extends BaseController
{
	public function lst()
    {
        $partyColumnModel = M('Party_column');
        $_data = $partyColumnModel->select();
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
    public function party() {
        // lst页面传递值
        $sid = I('get.sid');
        $where = array();
        switch ($sid) {
            case $sid:
                $where['sid'] = array('eq',$sid);    
                $where['year'] = array('between',array((int)date("Y")-4,(int)date("Y")));
                $csid = $sid;
                break;
                /*
            case 2:
                $where['sid'] = array('eq',2);
                $where['year'] = array('between',array((int)date("Y")-4,(int)date("Y")));
                $csid = $sid;
                break;
            case 3:
                $where['sid'] = array('eq',3);
                $where['year'] = array('between',array((int)date("Y")-4,(int)date("Y")));
                $csid = $sid;
                break;
            case 4:
                $where['sid'] = array('eq',4);
                $where['year'] = array('between',array((int)date("Y")-4,(int)date("Y")));
                $csid = $sid;
                break;
                 */
        }        
        $partyModel = M('Party');
        // 基础数据
        $_data = $partyModel->where($where)->select();
        
        // 控制器用：基础数据
        foreach($_data as $k=>$v) {
            $tmp[$v['year']][] = $v;
        }
        foreach($tmp as $k1=>$v1) {
            foreach($v1 as $k2=>$v2) {
                $data1[$k1]['year'] = $v2['year'];
                $data1[$k1][$v2['name']] = $v2['num'];
            }
        }
        // json用party1：基础数据将年份的键值变成数字索引
        foreach($data1 as $k=>$v) {
            $jsonData[] = $v;
        }
        // json用party1：name
        foreach($_data as $k=>$v) {
            if($v['year']==date('Y')) {
                $jsonName[] = $v['name'];
            }
        }
        // json用party2：基础数据不含年份
        foreach($tmp as $k=>$v) {
            if($k==date("Y")) {
                $tmp2 = $v;
            }
        }
        for($i=0;$i<count($tmp2);$i++) {
            $jsonData2[$i]['value'] = $tmp2[$i]['num'];
            $jsonData2[$i]['name'] = $tmp2[$i]['name'];
        }
        $this->assign(array(
            'data'=>$data1,
            'csid'=>$csid,
            'jsonData'=>json_encode($jsonData),
            'jsonName'=>json_encode($jsonName),
            'jsonData2'=>json_encode($jsonData2),
        ));
        $this->display();
    }
    public function yearParty() {
        // lst页面传递值
        $sid = I('get.sid');
        $where = array();
        switch ($sid) {
            case $sid:
                $where['sid'] = array('eq',$sid);    
                $csid = $sid;
                break;
                /*
            case 2:
                $where['sid'] = array('eq',2);
                $csid = $sid;
                break;
            case 3:
                $where['sid'] = array('eq',3);
                $csid = $sid;
                break;
                 */
        }        
        $partyModel = M('Party');
        // 基础数据
        $_data = $partyModel->where($where)->select();
        // 控制器用：基础数据
        foreach($_data as $k=>$v) {
            $tmp[$v['year']][] = $v;
        }
        foreach($tmp as $k1=>$v1) {
            foreach($v1 as $k2=>$v2) {
                $data1[$k1]['year'] = $v2['year'];
                $data1[$k1][$v2['name']] = $v2['num'];
            }
        }
        $this->assign(array(
            'data'=>$data1,
            'csid'=>$csid,
        ));
        $this->display();
    }
}
