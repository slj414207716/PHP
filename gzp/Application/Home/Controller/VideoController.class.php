<?php
namespace Home\Controller;

class VideoController extends BaseController
{
	/* 首页
	 *
	 */
	public function index()
	{
		$this->redirect('Home/Video/video_live');
	}
	public function lst()
	{
		$this->redirect('Home/Video/video_live');
	}


	/* 直播
	 *
	 */
	public function video_live()
	{
		// 获取预案列表
		$where_plan_list['is_show'] = array('eq', 1);
		$plan_list = D('plan_list')->where($where_plan_list)->select();
		if($plan_list === FALSE)
		{
			$this->error('数据库错误：无法获取预案列表');
		}
		if(!$plan_list)
		{
			$this->error('预案列表为空');
		}
		// 按分类ID分组
		foreach($plan_list as $m=>$n)
		{
			$plan_list_tmp[ $n['category_id'] ][] = $n;
		}
		$plan_list = $plan_list_tmp;
		unset($plan_list_tmp);

		$this->assign('plan_list_json', json_encode($plan_list));
		$this->display();
	}
	/**
     * 应急救援队伍保障
     */
    public function yingji()
    {

        $this->display();
    }

	/**
     * 跳转响应程序
     */
    public function xiangying()
    {

        $this->display();
    }
    /**
     * 跳转历史查看
     */
    public function lishichakan()
    {

        $this->display();
	}
	/**
     * 火灾跳转静态页
     */
    public function huozai()
    {
		$this->display();
	}
	/**
     * 大规模静态页
     */
    public function daguimo()
    {
		$this->display();
    }
    // 部门建议
    public function feedback()
    {
        $this->display();
    }
}
