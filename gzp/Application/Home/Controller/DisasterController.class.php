<?php
namespace Home\Controller;

class DisasterController extends BaseController
{
	/* 首页
	 *
	 */
	public function index()
	{
		$this->redirect('binan');
		//$this->display();
	}
	public function lst()
	{
		$this->redirect('index');
	}


	/* 避难
	 *
	 */
	public function binan()
	{

		$this->display();
	}

	public function binan_map()
	{

		$this->display();
	}

	/* 墓园
	 *
	 */
	public function muyuan()
	{

		$this->display();
	}

	public function muyuan_map()
	{

		$this->display();
	}

	/* 散坟
	 *
	 */
	public function sanfen()
	{

		$this->display();
	}

	public function sanfen_map()
	{

		$this->display();
	}

	/* 河道、水库
	 *
	 */
	public function river()
	{

		$this->display();
	}

    // 部门建议
    public function feedback()
    {
        $this->display();
    }
}
