<?php
namespace Home\Controller;
class SportsController extends BaseController
{
	//宗教场所
	public function religion(){

		$Model = M('religion');
		$data = $Model->select();
		$this->assign('data',$data);
        $this->display();
	}

	//体育队伍
	public function tydw(){

		$Model = M('tydw');
		$data = $Model->select();
		$this->assign('data',$data);
        $this->display();
	}

	//健身广场
	public function jsgc(){

		$Model = M('jsgc');
		$data = $Model->select();
		$this->assign('data',$data);
        $this->display();
	}

	//文化队伍
	public function whdw(){

		$Model = M('whdw');
		$data = $Model->select();
		$this->assign('data',$data);
        $this->display();
	}

	//农家书屋、社区书屋
	public function njsw(){

		$Model = M('njsw');
		$data = $Model->select();
		$this->assign('data',$data);
        $this->display();
	}

	//文化活动室
	public function whhd(){

		$Model = M('whhd');
		$data = $Model->select();
		$this->assign('data',$data);
        $this->display();
	}

	//文化保护名录
	public function whbh(){

		$Model = M('whbh');
		$data = $Model->select();
		$this->assign('data',$data);
        $this->display();
	}

}
