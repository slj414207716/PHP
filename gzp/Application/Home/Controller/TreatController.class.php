<?php
namespace Home\Controller;

class TreatController extends BaseController
{
	/* 首页
	 *
	 */
	public function index()
	{
		$this->redirect('Home/Treat/basicrf');
    }
	public function lst()
	{
		$this->redirect('Home/Treat/basicrf');
	}

    /* 综治办社会治安防控体系建设工作基础数据（人防体系)
	 *
	 */
	public function basicrf()
	{
		// 获取起止年份
		$start_year = intval($_GET['start_year']);
		$end_year = intval($_GET['end_year']);
		// 从通用数据表获取数据
		$get_data = $this->get_universal_data(28, $start_year, $end_year);
		// 整理数据（用于渲染图标）
		foreach($get_data['details'] as $m=>$n)
		{
			// 年份列表
			$year_list[] = $n['name'];
			// 指标列表
			$data_list[] = $n['value'];
		}
		$data_json = array(
			'name' => $get_data['name'],
			'data_class' => $year_list,
			'data_value' => $data_list
		);

		$this->assign('current_year', date('Y'));
		$this->assign('current_start_year', $start_year);
		$this->assign('current_end_year', $end_year);
		$this->assign('data', $get_data);
		$this->assign('data_json', json_encode($data_json));
		$this->display();
    }

    /* 综治办社会治安防控体系建设工作基础数据（技防体系）
	 *
	 */
	public function basicjf()
	{
		// 获取起止年份
		$start_year = intval($_GET['start_year']);
		$end_year = intval($_GET['end_year']);
		// 从通用数据表获取数据
		$get_data = $this->get_universal_data(29, $start_year, $end_year);
		// 整理数据（用于渲染图标）
		foreach($get_data['details'] as $m=>$n)
		{
			// 年份列表
			$year_list[] = $n['name'];
			// 指标列表
			$data_list[] = $n['value'];
		}
		$data_json = array(
			'name' => $get_data['name'],
			'data_class' => $year_list,
			'data_value' => $data_list
		);

		$this->assign('current_year', date('Y'));
		$this->assign('current_start_year', $start_year);
		$this->assign('current_end_year', $end_year);
		$this->assign('data', $get_data);
		$this->assign('data_json', json_encode($data_json));
		$this->display();
    }

    /* 综治办社会治安防控体系建设工作基础数据（物防体系）
	 *
	 */
	public function basicwf()
	{
		// 获取起止年份
		$start_year = intval($_GET['start_year']);
		$end_year = intval($_GET['end_year']);
		// 从通用数据表获取数据
		$get_data = $this->get_universal_data(30, $start_year, $end_year);
		// 整理数据（用于渲染图标）
		foreach($get_data['details'] as $m=>$n)
		{
			// 年份列表
			$year_list[] = $n['name'];
			// 指标列表
			$data_list[] = $n['value'];
		}
		$data_json = array(
			'name' => $get_data['name'],
			'data_class' => $year_list,
			'data_value' => $data_list
		);

		$this->assign('current_year', date('Y'));
		$this->assign('current_start_year', $start_year);
		$this->assign('current_end_year', $end_year);
		$this->assign('data', $get_data);
		$this->assign('data_json', json_encode($data_json));
		$this->display();
    }

    /* 综治办特殊人群管理工作数据
	 *
	 */
	public function special()
	{
		// 获取起止年份
		$start_year = intval($_GET['start_year']);
		$end_year = intval($_GET['end_year']);
		// 从通用数据表获取数据
		$get_data = $this->get_universal_data(31, $start_year, $end_year);
		// 整理数据（用于渲染图标）
		foreach($get_data['details'] as $m=>$n)
		{
			// 年份列表
			$year_list[] = $n['name'];
			// 指标列表
			$data_list[] = $n['value'];
		}
		$data_json = array(
			'name' => $get_data['name'],
			'data_class' => $year_list,
			'data_value' => $data_list
		);

		$this->assign('current_year', date('Y'));
		$this->assign('current_start_year', $start_year);
		$this->assign('current_end_year', $end_year);
		$this->assign('data', $get_data);
		$this->assign('data_json', json_encode($data_json));
		$this->display();
    }

    /* 综治办校园安全管理工作数据
	 *
	 */
	public function student()
	{
		// 获取起止年份
		$start_year = intval($_GET['start_year']);
		$end_year = intval($_GET['end_year']);
		// 从通用数据表获取数据
		$get_data = $this->get_universal_data(32, $start_year, $end_year);
		// 整理数据（用于渲染图标）
		foreach($get_data['details'] as $m=>$n)
		{
			// 年份列表
			$year_list[] = $n['name'];
			// 指标列表
			$data_list[] = $n['value'];
		}
		$data_json = array(
			'name' => $get_data['name'],
			'data_class' => $year_list,
			'data_value' => $data_list
		);

		$this->assign('current_year', date('Y'));
		$this->assign('current_start_year', $start_year);
		$this->assign('current_end_year', $end_year);
		$this->assign('data', $get_data);
		$this->assign('data_json', json_encode($data_json));
		$this->display();
    }

    /* 综治办铁路护路队伍数据
	 *
	 */
	public function road()
	{
		// 获取起止年份
		$start_year = intval($_GET['start_year']);
		$end_year = intval($_GET['end_year']);
		// 从通用数据表获取数据
		$get_data = $this->get_universal_data(33, $start_year, $end_year);
		// 整理数据（用于渲染图标）
		foreach($get_data['details'] as $m=>$n)
		{
			// 年份列表
			$year_list[] = $n['name'];
			// 指标列表
			$data_list[] = $n['value'];
		}
		$data_json = array(
			'name' => $get_data['name'],
			'data_class' => $year_list,
			'data_value' => $data_list
		);

		$this->assign('current_year', date('Y'));
		$this->assign('current_start_year', $start_year);
		$this->assign('current_end_year', $end_year);
		$this->assign('data', $get_data);
		$this->assign('data_json', json_encode($data_json));
		$this->display();
    }

    /* 综治办各类治安案件数据
	 *
	 */
	public function cases()
	{
		// 获取起止年份
		$start_year = intval($_GET['start_year']);
		$end_year = intval($_GET['end_year']);
		// 从通用数据表获取数据
		$get_data = $this->get_universal_data(34, $start_year, $end_year);
		// 整理数据（用于渲染图标）
		foreach($get_data['details'] as $m=>$n)
		{
			// 年份列表
			$year_list[] = $n['name'];
			// 指标列表
			$data_list[] = $n['value'];
		}
		$data_json = array(
			'name' => $get_data['name'],
			'data_class' => $year_list,
			'data_value' => $data_list
		);

		$this->assign('current_year', date('Y'));
		$this->assign('current_start_year', $start_year);
		$this->assign('current_end_year', $end_year);
		$this->assign('data', $get_data);
		$this->assign('data_json', json_encode($data_json));
		$this->display();
	}
    // 部门建议
    public function feedback()
    {
        $this->display();
    }
}