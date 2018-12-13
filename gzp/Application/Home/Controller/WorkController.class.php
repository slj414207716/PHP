<?php
namespace Home\Controller;
class WorkController extends BaseController
{

    //教育
	public function educ(){
		
        $this->display('stude');
	}
    
    //师生情况统计
    public function stude(){
        
        $this->display();
    }

    //教育投资情况
    public function invest(){
        
        $Model = M('invest');
        $data = $Model->select();
        $sum = $Model->sum('money');
        $this->assign(array(
            'data'=>$data,
            'sum'=>$sum,
        ));
        $this->display();
    }   
    //办学特色
    public function tercel(){

        $Model = M('tercel');
        $data = $Model->select();
        $sum  = $Model->sum('number');
        $this->assign(array(
            'data'=>$data,
            'sum'=>$sum,
        ));
        $this->display();
    }


    //幼儿园基本情况
    public function child(){
        
        $this->display('staff');
    }
    
    //教职工情况
    public function staff(){
        
        $this->display();
    }

    //建筑、资源情况
    public function qvod(){
        
        $this->display();
    }


    //学校配餐统计
    public function food(){
        
        $this->display('side');
    }
    
    //小学配餐情况
    public function side(){
        
        $Model = M('side');
        $data = $Model->select();
        $this->assign('data',$data);
        $this->display();
    }   
    //初中配餐情况
    public function high(){
        
        $this->display();
    }
}
