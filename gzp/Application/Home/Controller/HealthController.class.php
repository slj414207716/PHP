<?php
namespace Home\Controller;
class HealthController extends BaseController
{

// 医疗卫计
	public function ylwj(){
		$this->display('birth');
	}
//计划生育
	public function birth(){

		$Model = M('birth');
		$data = $Model->select();
		$sum = $Model->sum('hjsum');
		$sum1 = $Model->sum('czsum');
		$sum2 = $Model->sum('ldsum');
		$this->assign(array(
			'data'=>$data,
			'sum'=>$sum,
			'sum1'=>$sum1,
			'sum2'=>$sum2,
		));	
		$this->display();
	}


//卫生
	public function ylws(){
		$this->display('hosp');
	}
//医院基本情况
	public function hosp(){
		$this->display();
	}

//卫生一体化
	public function wsyt(){
		$this->display();
	}
//投入医疗卫生建设
	public function constr(){
		$this->display();
	}
//单位及注册诊所
	public function clinic(){
		$this->display();
	}
//医养结合
	public function bond(){
		$this->display();
	}
}
