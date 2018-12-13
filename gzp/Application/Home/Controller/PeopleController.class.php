<?php
namespace Home\Controller;
header('Content-Type:text/html; charset=utf-8');
class PeopleController extends BaseController
{
	public function index()
	{	     
		// $this->colum();
		$this->display();
	} 
    public function lst()
    {
        $this->redirect('index');
    }


    //社会化管理人员
    public function social(){

        $this->display();
    }

    //待遇资格认证人员
    public function msbz()
    {

        $this->display();
    }
      
    //就业和失业情况
    public function job(){

        $Model = M('jobs');
        $data = $Model->select();
        $this->assign('data',$data);
        $this->display();
    }


    //残疾程度
    public function degree(){
        
        $where = array();
        $where['year'] = array('eq',date('Y'));
        $Model = M('degree');
        $data = $Model->where($where)->select();
        $number = $Model->where($where)->sum('number');
        $sum = $Model->where($where)->sum('sum');
        $number1 = $Model->where($where)->sum('number1');
        $sum1 = $Model->where($where)->sum('sum1');
        $sum_number = $Model->where($where)->sum('sum_number');
        $this->assign(array(
            'data'=>$data,
            'number'=>$number,
            'sum'=>$sum,
            'number1'=>$number1,
            'sum1'=>$sum1,
            'sum_number'=>$sum_number,
        ));
        $this->display();
    }
    // 查看年度（不显示当年）
	public function degreeYear()
	{
		$where = array();
        $where['year']=array('neq',date("Y"));
		$Model = M('y_degree');
		$count = $Model->where($where)->count();
		$page = getpage($count,10);
		$show = $page->show();
		$yData = $Model->where($where)->limit($page->firstRow.','.$page->listRows)->order("year DESC")->select();

		foreach ($yData as $k => $v) {
			//历年
			$year[] = $v['year'].'年';
			//历年数据
			$sum[] = $v['sum_number'];
		}

		$this->assign('page',$show);
		$this->assign('count',$count);
		$this->assign('sid',$sid);
		$this->assign('sum',json_encode($sum));
		$this->assign('year',json_encode($year));
		$this->assign('yData',$yData);
		$this->display();
	}
// 年度点击详细
	public function degreeMonth()
	{	
		$year = I('get.year');
		$Model = M('degree');
        $data = $Model->where("year='$year'")->select();
        $number = $Model->where("year='$year'")->sum('number');
        $sum = $Model->where("year='$year'")->sum('sum');
        $number1 = $Model->where("year='$year'")->sum('number1');
        $sum1 = $Model->where("year='$year'")->sum('sum1');
        $sum_number = $Model->where("year='$year'")->sum('sum_number');
        $this->assign(array(
            'data'=>$data,
            'number'=>$number,
            'sum'=>$sum,
            'number1'=>$number1,
            'sum1'=>$sum1,
            'sum_number'=>$sum_number,
        ));
        $this->display();
	}

    //残疾类别
    public function canji(){
        
        $where = array();
        $where['year'] = array('eq',date('Y'));
        $Model = M('canji');
        $data = $Model->where($where)->select();
        $number = $Model->where($where)->sum('number');
        $sum = $Model->where($where)->sum('sum');
        $number1 = $Model->where($where)->sum('number1');
        $sum1 = $Model->where($where)->sum('sum1');
        $sum_number = $Model->where($where)->sum('sum_number');
        $this->assign(array(
            'data'=>$data,
            'number'=>$number,
            'sum'=>$sum,
            'number1'=>$number1,
            'sum1'=>$sum1,
            'sum_number'=>$sum_number,
        ));
        $this->display();
    }
    // 查看年度（不显示当年）
    public function canjiYear()
    {
        $where = array();
        $where['year']=array('neq',date("Y"));
        $Model = M('y_canji');
        $count = $Model->where($where)->count();
        $page = getpage($count,10);
        $show = $page->show();
        $yData = $Model->where($where)->limit($page->firstRow.','.$page->listRows)->order("year DESC")->select();

        foreach ($yData as $k => $v) {
            //历年
            $year[] = $v['year'].'年';
            //历年数据
            $sum[] = $v['sum_number'];
        }

        $this->assign('page',$show);
        $this->assign('count',$count);
        $this->assign('sid',$sid);
        $this->assign('sum',json_encode($sum));
        $this->assign('year',json_encode($year));
        $this->assign('yData',$yData);
        $this->display();
    }
    // 年度点击详细
    public function canjiMonth()
    {   
        $year = I('get.year');
        $Model = M('canji');
        $data = $Model->where("year='$year'")->select();
        $number = $Model->where("year='$year'")->sum('number');
        $sum = $Model->where("year='$year'")->sum('sum');
        $number1 = $Model->where("year='$year'")->sum('number1');
        $sum1 = $Model->where("year='$year'")->sum('sum1');
        $sum_number = $Model->where("year='$year'")->sum('sum_number');
        $this->assign(array(
            'data'=>$data,
            'number'=>$number,
            'sum'=>$sum,
            'number1'=>$number1,
            'sum1'=>$sum1,
            'sum_number'=>$sum_number,
        ));
        $this->display();
    }




    //村（社区）干部
    public function cadre(){


        $this->display();
    }


    //居家养老中心
    public function aged(){
        
        $Model = M('aged');
        $data = $Model->select();
        $this->assign('data',$data);
        $this->display();
    }

    //60岁及以上老年人口
    public function old(){
    
        $this->display();
    }

    //少数民族统计
    public function nation(){
        $Model = M('nation');
        $data = $Model->select();
        $sum = M()->query('select man+zhuang+meng+hui+chaoxian+xibo+dhe from gzp_nation');
        foreach ($sum as $k => $v) {
           
        }
     
        $this->assign(array(
            'data'=>$data,
            'sum'=>$sum,
        ));
        $this->display();
    }
}
