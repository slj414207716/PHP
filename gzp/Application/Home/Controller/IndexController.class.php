<?php
namespace Home\Controller;
class IndexController extends BaseController
{
	public function Index()
	{
		$columnModel = M('H_column');
		$columnData = $columnModel->order("sort ASC")->select();
		$this->assign('data',$columnData);
		$this->display();
	}
}