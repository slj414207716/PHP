<?php
namespace Home\Controller;

use Think\Controller;

class BaseController extends Controller
{
	public function _initialize()
	{
		// DADDY
		if (APP_STATUS == 'dev') {
			if (empty($_SESSION['id'])) {
				$_SESSION['id']       = 1;
				$_SESSION['username'] = 'admin';
			}
		}

		// 检查登录状态
		if (!$_SESSION['id']) {
			$this->redirect('Home/Login/login');
		}

		// 如果系统月份为12，执行写表操作
		if (date("m") == 12) {
			// 找出shxf表中当年数据
			$shxfModel     = M('Shxf');
			$where         = array();
			$where['year'] = array('eq', date("Y"));
			$shxfInfo      = $shxfModel->where($where)->select();
			foreach ($shxfInfo as $k => $v) {
				// 当年数据12月份real不为空执行操作
				if ($v['month'] == 12 && $v['real'] != '') {
					// 累加全年实际完成数据
					foreach ($shxfInfo as $k1 => $v1) {
						echo $v1['real'] . "<br />";
						$yShxfData['real'] = $yReal += $v1['real'];
					}
				}
			}
			$yShxfModel = M('Y_shxf');
			$year       = date('Y');
			$yShxfModel->where("year = '$year'")->save($yShxfData);
		}
	}

	/****************************************************方法*****************************************************
	 *
	 * @param int $flag - 1:js, 2:css, 3:css+js
	 * @return string
	 */

	public function self_resource($flag = 3)
	{
		$html = array();
		$path = sprintf('/Public/%s/%s/%s', MODULE_NAME, CONTROLLER_NAME, ACTION_NAME);
		if ($flag & 2) {
			$html[] = sprintf('<link href="%s.css" rel="stylesheet" type="text/css" />', $path);
		}
		if ($flag & 1) {
			$html[] = sprintf('<script src="%s.js" type="text/javascript"></script>', $path);
		}
		return implode("\n", $html);
	}
    public function self_js()
    {
        return $this->self_resource(1);
    }
    public function self_css()
    {
        return $this->self_resource(2);
    }

	/* 获取通用数据
	 *
	 */
	public function get_universal_data($work_id, $start_year = '', $end_year = '')
	{
		// 获取工作名称
		$where_universal_data['id'] = array('eq', $work_id);
		$universal_data             = D('work_tmp')->where($where_universal_data)->find();
		if ($universal_data === false) {
			$this->error('数据库错误：无法获取工作数据');
		}
		if (!$universal_data) {
			$this->error('工作数据为空');
		}
		// 获取详细指标
		if ($start_year && $end_year) {
			$where_work_details['year'] = array('between', $start_year . ',' . $end_year);
		}
		$where_work_details['work_id'] = array('eq', $work_id);
		$work_details                  = D('work_details_tmp')->where($where_work_details)->order('year')->select();
		if ($work_details === false) {
			$this->error('数据库错误：无法获取详细工作数据');
		}
		if (!$work_details) {
			$this->error('详细工作数据为空');
		}

		$universal_data['details'] = $work_details;
		return $universal_data;
	}

	/* 分页
	 * $count：总条数
	 * $page_size：分页尺寸
	 * $button_amount：按钮个数
	 * $page_button_parm：页数按钮的附加参数（数组，采用'参数名'=>'参数值'的格式）
	 */
	public function page($count, $page_size = 20, $button_amount = 5, $page_button_parm = array())
	{
		// 存储总条数
		$PAGE['count'] = $count;
		// 计算总页数
		$PAGE['total_page'] = intval(ceil($PAGE['count'] / $page_size));
		// 获取当前页数
		$PAGE['now_page'] = intval($_GET['now_page']);
		if ($PAGE['now_page'] <= 0) {
			$PAGE['now_page'] = 1;
		}
		if ($PAGE['now_page'] > $PAGE['total_page']) {
			$PAGE['now_page'] = $PAGE['total_page'];
		}
		$PAGE['now_page'] = max(1, $PAGE['now_page']);
			// 计算“上一页”页数
		$PAGE['prev_page'] = $PAGE['now_page'] - 1;
		if ($PAGE['prev_page'] <= 0) {
			$PAGE['prev_page'] = 'disable';
		}
		// 计算“下一页”页数
		$PAGE['next_page'] = $PAGE['now_page'] + 1;
		if ($PAGE['next_page'] > $PAGE['total_page']) {
			$PAGE['next_page'] = 'disable';
		}
		// 首页页码
		$PAGE['first_page'] = 1;
		// 末页页码
		$PAGE['end_page'] = $PAGE['total_page'];
		// 计算要显示的页数
		$show_pages[] = $PAGE['now_page'];
		for ($i = 1; $i <= $PAGE['end_page']; $i++) {
			$tmp = $PAGE['now_page'] + $i;
			if (($tmp >= $PAGE['first_page']) && ($tmp <= $PAGE['end_page'])) {
				$show_pages[] = $tmp;
			}
			$tmp = $PAGE['now_page'] - $i;
			if (($tmp >= $PAGE['first_page']) && ($tmp <= $PAGE['end_page'])) {
				$show_pages[] = $tmp;
			}
			if (count($show_pages) >= $button_amount) {
				break;
			}
		}
		sort($show_pages);
		if (count($show_pages) > $button_amount) {
			unset($show_pages[0]);
			$show_pages = array_values($show_pages);
		}
		$PAGE['page_button'] = $show_pages;
		// 计算查询范围
		$PAGE['limit'] = ($PAGE['now_page'] - 1) * $page_size . ',' . $page_size;
		// 处理附加参数
		if ($page_button_parm && is_array($page_button_parm)) {
			// 循环处理数据
			foreach ($page_button_parm as $m => $n) {
				// 循环拼装参数字符串
				$PAGE['page_button_prm'] .= $m . '=' . $n . '&';
				// 生成跳页表单的隐藏数据
				$tmp                               = array(
					'field_name'  => $m,
					'field_value' => $n,
				);
				$PAGE['page_button_hidden_parm'][] = $tmp;
			}
		}

		return $PAGE;
	}

	/**
	 * 系统年环比
	 * @$arr：array 待计算数组
	 * @$gYear：指定年度
	 * @$year：str 年字段名
	 * @$month str 月份字段名
	 * @$real str 环比数据字段名
	 *
	 * @return array 系统年各月份环比
	 */
	public function _hb($arr, $gYear, $year, $month, $real)
	{
		foreach ($arr as $k => $v) {
			if ($v[$year] == $gYear) {
				$_hb[$v[$month]][]     = $v[$real];
				$_hb[$v[$month] + 1][] = $v[$real];
			}
		}
		foreach ($_hb as $k => $v) {
			if ($k != 1 && $k != 13) {
				$hb[1]  = '-';
				$hb[$k] = round(($v[0] - $v[1]) / $v[1] * 100, 2) . '%';
			}
		}
		return $hb;
	}

	/**
	 * 系统年同比
	 * @$arr：array 待计算数组
	 * @$gYear：指定年度
	 * @$year：str 年字段名
	 * @$month str 月份字段名
	 * @$real str 同比数据字段名
	 *
	 * @return array 系统年与系统年-1环比
	 */
	public function _tb($arr, $gYear, $year, $month, $real)
	{
		foreach ($arr as $k => $v) {
			if (($v[$year] == $gYear) || ($v[$year] == ($gYear - 1))) {
				$_tb[$v[$month]][$v[$year]] = $v;
			}
		}
		foreach ($_tb as $k => $v) {
			$tb[$k] = round(($v[$gYear][$real] - $v[$gYear - 1][$real]) / $v[$gYear - 1][$real] * 100, 2) . '%';
		}
		return $tb;
	}

	//查询目录
	public function colum()
	{
		$subModel = M('colum');
		$data1 = $subModel->where('classid=10')->select();
		$data2 = $subModel->where('classid=20')->select();
		$data3 = $subModel->where('classid=30')->select();
		$data4 = $subModel->where('classid=40')->select();
		$data5 = $subModel->where('classid=50')->select();		
		$this->assign(array(
			'data1'=>$data1,
			'data2'=>$data2,
			'data3'=>$data3,
			'data4'=>$data4,
			'data5'=>$data5,
		));

		foreach ($data2 as $ke => $val) {
			$action[]=$val['action'];
		}
		$this -> assign('action',json_encode($action));
	}
}