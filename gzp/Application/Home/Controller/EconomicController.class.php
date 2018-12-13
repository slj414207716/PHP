<?php
namespace Home\Controller;
class EconomicController extends BaseController
{
	public function lst()
	{
		$this->display();
	}

    // 基本指标
    public function shxf() {
        $sid = $_GET['sid'];
        switch($sid) {
            case 1:
                // 地区生产总值       
                $csid = $sid;
                $shxf = $this->_nowMonth('Shxf','Y_shxf', $sid); 
                $this->assign(array(
                    'shxf' => $shxf,
                    'jsonShxf' => json_encode($shxf),
                    'csid'=>$csid,
                ));
            case 2:
                // 财政收入        
                $csid = $sid;
                $shxf = $this->_nowMonth('Shxf','Y_shxf', $sid); 
                $this->assign(array(
                    'shxf' => $shxf,
                    'jsonShxf' => json_encode($shxf),
                    'csid'=>$csid,
                ));
            case 3:
                // 规上工业总产值        
                $csid = $sid;
                $shxf = $this->_nowMonth('Shxf','Y_shxf', $sid); 
                $this->assign(array(
                    'shxf' => $shxf,
                    'jsonShxf' => json_encode($shxf),
                    'csid'=>$csid,
                ));
            case 4:
                // 固定资产投资   
                $csid = $sid;     
                $shxf = $this->_nowMonth('Shxf','Y_shxf', $sid); 
                $this->assign(array(
                    'shxf' => $shxf,
                    'jsonShxf' => json_encode($shxf),
                    'csid'=>$csid,
                ));
            case 5:
                // 社会消费品零售额        
                $csid = $sid;     
                $shxf = $this->_nowMonth('Shxf','Y_shxf', $sid); 
                $this->assign(array(
                    'shxf' => $shxf,
                    'jsonShxf' => json_encode($shxf),
                    'csid'=>$csid,
                ));
            case 6:
                // 使用内资        
                $csid = $sid;     
                $shxf = $this->_nowMonth('Shxf','Y_shxf', $sid); 
                $this->assign(array(
                    'shxf' => $shxf,
                    'jsonShxf' => json_encode($shxf),
                    'csid'=>$csid,
                ));
            case 7:
                // 引进外资        
                $csid = $sid;     
                $shxf = $this->_nowMonth('Shxf','Y_shxf', $sid); 
                $this->assign(array(
                    'shxf' => $shxf,
                    'jsonShxf' => json_encode($shxf),
                    'csid'=>$csid,
                ));
        }
        $this->display();
    }

	private function _nowMonth($month, $year, $sid)
	{
        // _基本指标的月度表
		$monthModel = M($month);
		// _月度表所有数据
		$_data = $monthModel->where("sid=".$sid."")->order("month+0 DESC")->select();
		// 年度中每个月的任务完成情况
		foreach($_data as $k=>$v)
		{
			if($v['year'] == date("Y"))
			{
				$tmp['id'] = $v['id'];
				$tmp['year'] = $v['year'];
				$tmp['month'] = $v['month'];
				$tmp['real'] = $v['real'];
				$tmp['plan'] = $v['plan'];
				$tmp['over'] = $v['real']-$v['plan'];
				$data[] = $tmp;
			}
		}
		// 环比
		$hb = $this->_hb($_data, date("Y"),'year','month','real');
		// 同比
		$tb = $this->_tb($_data, date("Y"),'year','month','real');
		// 完成年度百分比
		// _获取当年计划任务
		$yearModel = M($year);
        $where = array();
        $where['year'] = date("Y");
        $where['sid'] = $sid;
		$_yearData = $yearModel->where($where)->find();
        $yearData = $_yearData['plan'];
		// _获取当年每月度数据
		foreach($_data as $k=>$v)
		{
			if($v['year'] == date("Y"))
			{
				$_zb[$v['month']] = $v['real'];
			}
		}
		// _每个月做累加
		for($i=1;$i<13;$i++)
		{
			if($i == 1)
			{
				$zbTmp[$i] = $_zb[$i];
			}
			elseif($i == 2)
			{
				$zbTmp[$i] = $_zb[$i] + $_zb[$i-1];
			}
			elseif($i == 3)
			{
				$zbTmp[$i] = $_zb[$i] + $_zb[$i-1] + $_zb[$i-2];
			}
			elseif($i == 4)
			{
				$zbTmp[$i] = $_zb[$i] + $_zb[$i-1] + $_zb[$i-2] + $_zb[$i-3];
			}
			elseif($i == 5)
			{
				$zbTmp[$i] = $_zb[$i] + $_zb[$i-1] + $_zb[$i-2] + $_zb[$i-3] + $_zb[$i-4];
			}
			elseif($i == 6)
			{
				$zbTmp[$i] = $_zb[$i] + $_zb[$i-1] + $_zb[$i-2] + $_zb[$i-3] + $_zb[$i-4] + $_zb[$i-5];
			}
			elseif($i == 7)
			{
				$zbTmp[$i] = $_zb[$i] + $_zb[$i-1] + $_zb[$i-2] + $_zb[$i-3] + $_zb[$i-4] + $_zb[$i-5] + $_zb[$i-6];
			}
			elseif($i == 8)
			{
				$zbTmp[$i] = $_zb[$i] + $_zb[$i-1] + $_zb[$i-2] + $_zb[$i-3] + $_zb[$i-4] + $_zb[$i-5] + $_zb[$i-6] + $_zb[$i-7];
			}
			elseif($i == 9)
			{
				$zbTmp[$i] = $_zb[$i] + $_zb[$i-1] + $_zb[$i-2] + $_zb[$i-3] + $_zb[$i-4] + $_zb[$i-5] + $_zb[$i-6] + $_zb[$i-7] + $_zb[$i-8];
			}
			elseif($i == 10)
			{
				$zbTmp[$i] = $_zb[$i] + $_zb[$i-1] + $_zb[$i-2] + $_zb[$i-3] + $_zb[$i-4] + $_zb[$i-5] + $_zb[$i-6] + $_zb[$i-7] + $_zb[$i-8] + $_zb[$i-9];
			}
			elseif($i == 11)
			{
				$zbTmp[$i] = $_zb[$i] + $_zb[$i-1] + $_zb[$i-2] + $_zb[$i-3] + $_zb[$i-4] + $_zb[$i-5] + $_zb[$i-6] + $_zb[$i-7] + $_zb[$i-8] + $_zb[$i-9] + $_zb[$i-10];
			}
			elseif($i == 12)
			{
				$zbTmp[$i] = $_zb[$i] + $_zb[$i-1] + $_zb[$i-2] + $_zb[$i-3] + $_zb[$i-4] + $_zb[$i-5] + $_zb[$i-6] + $_zb[$i-7] + $_zb[$i-8] + $_zb[$i-9] + $_zb[$i-10] + $_zb[$i-11];
			}
		}
		foreach($zbTmp as $k=>$v)
		{
			$zb[$k] = round($v/$yearData*100,2).'%';
		}
		// 实际完成合计
		for($i=0;$i<count($data);$i++)
		{
			$real += $data[$i]['real'];
		}
		// 现阶段完成当年计划占比
		$nowZb = round($real/$yearData*100,2).'%';
        $result = array();
        return $result = array(
			'data'=>$data,
			'hb'=>$hb,
			'tb'=>$tb,
			'zb'=>$zb,
			'real'=>$real,
			'yearData'=>$yearData,
			'nowZb'=>$nowZb,
		);
	}
    // 年度指标
	public function yearShxf()
	{
        $sid = $_GET['sid'];
        $data = $this->_year('Y_shxf',$sid);
        $this->assign(array(
            'data'=>$data,
            'jsonData'=>json_encode($data),
        ));
        $this->display();
    }

    private function _year($year, $sid){
		$yearModel = M($year);
		$where = array();
		$where['year'] = array('neq',date('Y'));
        $where['sid'] = $sid;
		return $yearData = $yearModel->where($where)->order("year DESC")->limit(5)->select();
    }
	// 社会详细
	public function monthShxf()
	{
		$year = I('get.year');
        $sid = $_GET['sid'];
        $where = array();
        $where['year'] = array('eq',$_GET['year']);
        $where['sid'] = array('eq',$_GET['sid']);
		$shxfModel = M('Shxf');
		$_shxfData = $shxfModel->where('sid='.$sid.'')->order("month+0 DESC")->select();
		//月度数据
        $shxfData = $shxfModel->field('month,real')->where($where)->order("month+0 DESC")->select();
		// 环比
		$hb = $this->_hb($_shxfData,$year,'year','month','real');
		// 同比
		$tb = $this->_tb($_shxfData,$year,'year','month','real');
		$this->assign(array(
			'shxfData'=>$shxfData,
            'jsonData'=>json_encode($shxfData),
            'hb'=>$hb,
            'jsonHb'=>json_encode($hb),
            'tb'=>$tb,
            'jsonTb'=>json_encode($tb),
		));
		$this->display();
	}

	// 房地产类
	public function fdcl()
	{
		$fdclproModel = M('Fdclpro');

		$where1 = array();
		$where1['a.category'] = array('eq',1);
		$_fdclpro1Data = $fdclproModel
			->alias('a')
			->field('a.id,a.name,b.gt,b.ss,b.addtime')
			->join('left join __FDCLPROS__ b on a.id=b.pid')
			->where($where1)
			->order(array(
				'a.id' =>DESC,
				'b.addtime' => ASC,
			))
			//->limit(6)
			->select();
		foreach($_fdclpro1Data as $k=>$v)
		{
			$fdclpro1Tmp['id'] = $v['id'];
			$fdclpro1Tmp['name'] = $v['name'];
			$fdclpro1Tmp['gt'] = $v['gt'];
			$fdclpro1Tmp['ss'] = $v['ss'];
			$fdclpro1Tmp['addtime'] = date("Y-m-d h:i:s",$v['addtime']);
			$fdclpro1Tmp2[] = $fdclpro1Tmp;
		}
		foreach($fdclpro1Tmp2 as $k=>$v)
		{
			$fdclpro1Tmp3[$v['name']][] = $v;
		}
		foreach($fdclpro1Tmp3 as $k=>$v)
		{
			foreach($v as $k1=>$v1)
			{
				$fdclpro1Tmp4[$v1['name']] = end($v);
			}
		}
		$where2 = array();
		$where2['a.category'] = array('eq',2);
		$_fdclpro2Data = $fdclproModel
			->alias('a')
			->field('a.id,a.name,b.gt,b.ss,b.addtime')
			->join('left join __FDCLPROS__ b on a.id=b.pid')
			->where($where2)
			->order(array(
				'a.id' =>DESC,
				'b.addtime' => ASC,
			))
			//->limit(6)
			->select();
		foreach($_fdclpro2Data as $k=>$v)
		{
			$fdclpro2Tmp['id'] = $v['id'];
			$fdclpro2Tmp['name'] = $v['name'];
			$fdclpro2Tmp['gt'] = $v['gt'];
			$fdclpro2Tmp['ss'] = $v['ss'];
			$fdclpro2Tmp['addtime'] = date("Y-m-d h:i:s",$v['addtime']);
			$fdclpro2Tmp2[] = $fdclpro2Tmp;
		}
		foreach($fdclpro2Tmp2 as $k=>$v)
		{
			$fdclpro2Tmp3[$v['name']][] = $v;
		}
		foreach($fdclpro2Tmp3 as $k=>$v)
		{
			foreach($v as $k1=>$v1)
			{
				$fdclpro2Tmp4[$v1['name']] = end($v);
			}
		}

		$where3 = array();
		$where3['a.category'] = array('eq',3);
		$_fdclpro3Data = $fdclproModel
			->alias('a')
			->field('a.id,a.name,b.gt,b.ss,b.addtime')
			->join('left join __FDCLPROS__ b on a.id=b.pid')
			->where($where3)
			->order(array(
				'a.id' =>DESC,
				'b.addtime' => ASC,
			))
			//->limit(6)
			->select();
		foreach($_fdclpro3Data as $k=>$v)
		{
			$fdclpro3Tmp['id'] = $v['id'];
			$fdclpro3Tmp['name'] = $v['name'];
			$fdclpro3Tmp['gt'] = $v['gt'];
			$fdclpro3Tmp['ss'] = $v['ss'];
			$fdclpro3Tmp['addtime'] = date("Y-m-d h:i:s",$v['addtime']);
			$fdclpro3Tmp2[] = $fdclpro3Tmp;
		}
		foreach($fdclpro3Tmp2 as $k=>$v)
		{
			$fdclpro3Tmp3[$v['name']][] = $v;
		}
		foreach($fdclpro3Tmp3 as $k=>$v)
		{
			foreach($v as $k1=>$v1)
			{
				$fdclpro3Tmp4[$v1['name']] = end($v);
			}
		}

		$this->assign(array(
			'fdclpro1Data'=>$fdclpro1Tmp4,
			'fdclpro2Data'=>$fdclpro2Tmp4,
			'fdclpro3Data'=>$fdclpro3Tmp4,
		));

		$this->display();		
	}
	// 房地产类--个案
	public function fdclpro()
	{
		$model = M('Fdclpro');
		$id = I('get.id');
		$data = $model->where("id = '$id'")->find();
		$this->assign('data',$data);
		$this->display();
	}
	// 房地产类--进展
	public function fdclpros()
	{
		$id = I('get.id');

		// 获取项目名称
		$fdclproModel = M('Fdclpro');
		$fdclproData = $fdclproModel->where("id = '$id'")->find();

		// 获取项目进展
		$fdclprosModel = M('Fdclpros');
		$_fdclprosData = $fdclprosModel->where("pid = '$id'")->order("addtime DESC")->select();
		foreach($_fdclprosData as $k=>$v)
		{
			$fdclprosTmp['id'] = $v['id'];
			$fdclprosTmp['completion'] = $v['completion'];
			$fdclprosTmp['plan'] = $v['plan'];
			$fdclprosTmp['problem'] = $v['problem'];
			$fdclprosTmp['addtime'] = date("Y年m月d日",$v['addtime']);
			$fdclprosTmp2[] = $fdclprosTmp;
		}
		$this->assign(array(
			'fdclproData'=>$fdclproData['name'],
			'fdclprosData'=>$fdclprosTmp2,
		));
		$this->display();
	}
	// 房地产类--进展详情
	public function fdclprosxq()
	{
		$id = I('get.id');
		$fdclprosModel = M('Fdclpros');
		$fdclprosData = $fdclprosModel->find($id);
		$this->assign('fdclprosData',$fdclprosData);
		$this->display();
	}
	// 招商引资--计划
	public function zsyzJh()
	{
		$model = M('Zsyz');
		$where = array();
		$where['addtime'] = array('eq',date('Y'));
		$data = $model->where($where)->find();
		$this->assign('jhData',$data['plan']);
		$this->display();
	}
	// 招商引资--实际情况
	public function zsyzSjqk()
	{
		$model = M('Zsyz');
		$where = array();
		$where['addtime'] = array('eq',date('Y'));
		$data = $model->where($where)->find();
		$this->assign('sjqkData',$data['completion']);
		$this->display();
	}
	// 招商引资--存在问题
	public function zsyzCzwt()
	{
		$model = M('Zsyz');
		$where = array();
		$where['addtime'] = array('eq',date('Y'));
		$data = $model->where($where)->find();
		$this->assign('czwtData',$data['problem']);
		$this->display();
	}
	// 重点企业
	public function zdqy()
	{
		$zdqyModel = M('Zdqy');
		$where = array();
		$where['year'] = array('eq',date('Y'));
		$order = 'dqsc';
		if($key = I('get.key'))
		{
			$order = $key;
		}
		$zdqyData = $zdqyModel->where($where)->order(''.$order.' DESC')->limit(10)->select();
		$this->assign('zdqyData',$zdqyData);
		$this->display();
	}
}
