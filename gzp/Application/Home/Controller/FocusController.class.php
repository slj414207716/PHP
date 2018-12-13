<?php
namespace Home\Controller;

class FocusController extends BaseController
{
	/* 首页
	 *
	 */
	public function index()
	{
        //$this->redirect('total_progress');
        $this->display();
	}
	public function lst()
	{
		$this->redirect('index');
	}


	/* 进度总览
	 *
	 */
	public function total_progress()
	{
		// 获取起止时间
		$start_year = intval($_POST['start_year']);
		$start_month = intval($_POST['start_month']);
		$end_year = intval($_POST['end_year']);
		$end_month = intval($_POST['end_month']);
		// 计算月份天数
		$month_days = (mktime(0, 0, 0, $end_month+1, 1, $end_year) - mktime(0, 0, 0, $end_month, 1, $end_year)) / 86400;
		// 计算起止时间戳
		if($start_year && $start_month && $end_year && $end_month)
		{
			$start_time = mktime(0, 0, 0, $start_month, 1, $start_year);
			$end_time = mktime(23, 59, 59, $end_month, $month_days, $end_year);
		}
		// 获取项目列表
		if($start_time && $end_time)
		{
			$where_event_list['add_time'] = array('between', $start_time . ',' . $end_time);
		}
		$where_event_list['is_show'] = array('eq', 1);
		$event_list = D('event')->where($where_event_list)->order('id DESC')->select();
		if($event_list === FALSE)
		{
			$this->error('数据库错误：无法获取督办事项列表');
		}


		// 按数量统计
		foreach(array_reverse($event_list) as $m=>$n)
		{
			$month = date('n', $n['add_time']);
			$tmp[$month] += 1;
		}
		foreach($tmp as $m=>$n)
		{
			$amount_data['total'][] = array(
				'month' => $m,
				'amount' => $n
			);
		}
		unset($tmp);
		foreach(array_reverse($event_list) as $m=>$n)
		{
			$month = date('n', $n['add_time']);
			if($n['status'])
			{
				$tmp[$month] += 1;
			}
		}
		foreach($amount_data['total'] as $m=>$n)
		{
			$amount_data['finished'][] = array(
				'month' => $n['month'],
				'amount' => strval( intval($tmp[ $n['month'] ]) )
			);
		}
		unset($tmp);
		// 按状态统计
		foreach($event_list as $m=>$n)
		{
			if($n['more_department'])
			{
				$tmp['跨部门'] += 1;
			}
			if($n['delay_time'])
			{
				$tmp['延期'] += 1;
			}
			if($n['zhenggai'])
			{
				$tmp['整改'] += 1;
			}
			if($n['status'])
			{
				$tmp['办结'] += 1;
			}
		}
		foreach($tmp as $m=>$n)
		{
			$progress_data[] = array(
				'status_name' => $m,
				'amount' => $n
			);
		}
		unset($tmp);
		// 按类型统计
		foreach($event_list as $m=>$n)
		{
			$tmp[$n['type']] += 1;
		}
		foreach($tmp as $m=>$n)
		{
			$type_data[] = array(
				'type_name' => $m,
				'amount' => $n
			);
		}
		// 循环处理督办列表
		foreach($event_list as $m=>$n)
		{
			// 处理开始时间
			$event_list[$m]['add_time_str'] = date('Y年n月', $n['add_time']);
			// 处理完成时间
			$event_list[$m]['finish_time_plan_str'] = date('Y年n月', $n['finish_time_plan']);
			// 处理进度状态
			if($n['status'] == 1)
			{
				$event_list[$m]['status_str'] = '已办结';
				continue;
			}
			if($n['delay_time'])
			{
				$event_list[$m]['status_str'] = '延期';
				continue;
			}
			if($n['zhenggai_status'] == 2)
			{
				$event_list[$m]['status_str'] = '整改中';
				continue;
			}
			if($n['more_department'])
			{
				$event_list[$m]['status_str'] = '跨部门流转';
				continue;
			}
			$event_list[$m]['status_str'] = '进行中';
		}
//        dump($amount_data);
//        dump($type_data);
//        dump($progress_data);
		$this->assign('current_start_year', $start_year);
		$this->assign('current_start_month', $start_month);
		$this->assign('current_end_year', $end_year);
		$this->assign('current_end_month', $end_month);
		$this->assign('current_year', date('Y'));
		$this->assign('amount_data', json_encode($amount_data));
//		dump($amount_data);
		$this->assign('type_data', json_encode($type_data));
//		dump($type_data);
		$this->assign('progress_data', json_encode($progress_data));
//		dump($progress_data);
		$this->assign('event_list', $event_list);
//		dump($event_list);
		$this->display();
	}


	/* 任务列表
	 *
	 */
	public function task_list()
	{
		// 获取起止时间
		$start_year = intval($_GET['start_year']);
		$start_month = intval($_GET['start_month']);
		$end_year = intval($_GET['end_year']);
		$end_month = intval($_GET['end_month']);
		// 计算月份天数
		$month_days = (mktime(0, 0, 0, $end_month+1, 1, $end_year) - mktime(0, 0, 0, $end_month, 1, $end_year)) / 86400;
		// 计算起止时间戳
		if($start_year && $start_month && $end_year && $end_month)
		{
			$start_time = mktime(0, 0, 0, $start_month, 1, $start_year);
			$end_time = mktime(23, 59, 59, $end_month, $month_days, $end_year);
		}
		// 获取项目数量
		if($start_time && $end_time)
		{
			$where_event_amount['add_time'] = array('between', $start_time . ',' . $end_time);
		}
		switch(ACTION_NAME)
		{
			case 'task_ing':
				$where_event_amount['status'] = array('eq', 0);
				$where_event_amount['delay_time'] = array('eq', '');
				$where_event_amount['more_department'] = array('eq', '');
				$where_event_amount['zhenggai_status'] = array('eq', 0);
				break;
			case 'task_more_department':
				$where_event_amount['status'] = array('eq', 0);
				$where_event_amount['delay_time'] = array('eq', '');
				$where_event_amount['more_department'] = array('neq', '');
				$where_event_amount['zhenggai_status'] = array('eq', 0);
				break;
			case 'task_delay':
				$where_event_amount['status'] = array('eq', 0);
				$where_event_amount['delay_time'] = array('neq', '');
				break;
			case 'task_zhenggai':
				$where_event_amount['status'] = array('eq', 0);
				$where_event_amount['zhenggai_status'] = array('neq', '0');
				break;
			case 'task_finished':
				$where_event_amount['status'] = array('eq', 1);
				break;
		}
		$where_event_amount['is_show'] = array('eq', 1);
		$event_amount = D('event')->where($where_event_amount)->count();
		if($event_amount === FALSE)
		{
			$this->error('数据库错误：无法获取项目列表');
		}
		if(!$event_amount)
		{
			$this->error('项目列表为空');
		}
		// 处理附加参数
		$page_button_parm = array(
			'start_year' => $start_year,
			'start_month' => $start_month,
			'end_year' => $end_year,
			'end_month' => $end_month
		);
		// 分页($count, $page_size=20, $button_amount=5, $page_button_parm=array())
		$PAGE = $this->page($event_amount, 20, 5, $page_button_parm);
		// 获取项目列表
		$where_event_list = $where_event_amount;
		$event_list = D('event')->where($where_event_list)->order('id DESC')->limit($PAGE['limit'])->select();
		if($event_list === FALSE)
		{
			$this->error('数据库错误：无法获取督办事项列表');
		}
		// 循环处理督办列表
		foreach($event_list as $m=>$n)
		{
			// 处理开始时间
			$event_list[$m]['add_time_str'] = date('Y年n月', $n['add_time']);
			// 处理完成时间
			$event_list[$m]['finish_time_plan_str'] = date('Y年n月', $n['finish_time_plan']);
			// 处理进度状态
			if($n['status'] == 1)
			{
				$event_list[$m]['status_str'] = '已办结';
				continue;
			}
			if($n['delay_time'])
			{
				$event_list[$m]['status_str'] = '延期';
				continue;
			}
			if($n['zhenggai_status'] == 2)
			{
				$event_list[$m]['status_str'] = '整改中';
				continue;
			}
			if($n['more_department'])
			{
				$event_list[$m]['status_str'] = '跨部门流转';
				continue;
			}
			$event_list[$m]['status_str'] = '进行中';
		}

		// 跨部门处理
		if(ACTION_NAME == 'task_more_department')
		{
			foreach($event_list as $m=>$n)
			{
				// 获取部门ID列表
				$department_id_list = explode('|', $n['more_department']);
				// 查询部门名称
				$where_department_list['id'] = array('in', $department_id_list);
				$department_list = D('department_list')->where($where_department_list)->select();
				if(!$department_list)
				{
					$this->error('数据库错误：无法获取部门列表');
				}
				// 获取部门名称列表
				$department_name_list = array_column($department_list, 'name');
				// 转存数据
				$event_list[$m]['department_list'] = implode($department_name_list, '、');
			}
		}

		// 处理延期
		if(ACTION_NAME == 'task_delay')
		{
			foreach($event_list as $m=>$n)
			{
				// 获取最后一条延期记录
				$where_delay_record['event_id'] = array('eq', $n['id']);
				$where_delay_record['is_show'] = array('eq', 1);
				$delay_record = D('event_delay')->where($where_delay_record)->order('id DESC')->find();
				if(!$delay_record)
				{
					$this->error('数据库错误：无法获取延期记录');
				}
				// 审批状态
				switch($delay_record['approve_status'])
				{
					case '0':
						$approve_status_str = '未通过';
						break;
					case '1':
						$approve_status_str = '已通过';
						break;
					case '2':
						$approve_status_str = '待审批';
						break;
				}
				// 转存数据
				$event_list[$m]['delay_time_str'] = date('Y年n月', $delay_record['delay_time']);
				$event_list[$m]['delay_reason'] = $delay_record['delay_reason'] . '（' . $approve_status_str . '）';
			}
		}

		// 处理整改
		if(ACTION_NAME == 'task_zhenggai')
		{
			foreach($event_list as $m=>$n)
			{
				// 获取最后一条整改记录
				$where_zhenggai_record['event_id'] = array('eq', $n['id']);
				$where_zhenggai_record['is_show'] = array('eq', 1);
				$zhenggai_record = D('event_zhenggai')->where($where_zhenggai_record)->order('id DESC')->find();
				if(!$zhenggai_record)
				{
					$this->error('数据库错误：无法获取整改记录');
				}
				// 整改状态
				switch($zhenggai_record['status'])
				{
					case '0':
						$zhenggai_status_str = '待整改';
						break;
					case '1':
						$zhenggai_status_str = '已整改';
						break;
					case '2':
						$zhenggai_status_str = '待批复';
						break;
				}
				// 转存数据
				$event_list[$m]['zhenggai_contents'] = $zhenggai_record['contents'] . '（' . $zhenggai_status_str . '）';
				$event_list[$m]['zhenggai_time_str'] = date('Y年n月', $zhenggai_record['add_time']);
			}
		}

		$this->assign('current_start_year', $start_year);
		$this->assign('current_start_month', $start_month);
		$this->assign('current_end_year', $end_year);
		$this->assign('current_end_month', $end_month);
		$this->assign('current_year', date('Y'));
		$this->assign('event_list', $event_list);
		$this->assign('PAGE', $PAGE);
		$this->display();
	}


	/* 反馈进展
	 *
	 */
	public function task_ing()
	{
		$this->task_list();
	}


	/* 跨部门合作
	 *
	 */
	public function task_more_department()
	{
		$this->task_list();
	}


	/* 延期申请
	 *
	 */
	public function task_delay()
	{
		$this->task_list();
	}


	/* 整改
	 *
	 */
	public function task_zhenggai()
	{
		$this->task_list();
	}


	/* 办结
	 *
	 */
	public function task_finished()
	{
		$this->task_list();
	}


	/* 重点督办详情页
	 *
	 */
	public function event_detail()
	{
		// 获取工作ID
		$event_id = intval($_GET['id']);
		if(!$event_id)
		{
			$this->error('参数丢失：工作ID为空');
		}
		// 获取工作内容
		$where_event_info['is_show'] = array('eq', 1);
		$event_info = D('event')->find($event_id);
		if($event_info === FALSE)
		{
			$this->error('数据库错误：无法获取工作内容');
		}
		if(!$event_info)
		{
			$this->error('工作内容不存在');
		}
		// 处理时间戳
		$event_info['add_time_str'] = date('Y年n月', $event_info['add_time']);
		// 处理工作状态
		switch($event_info['status'])
		{
			case '0':
				$event_info['status_str'] = '未完成';
				break;
			case '1':
				$event_info['status_str'] = '已完成';
				break;
		}
		// 获取重点指标
		$field_important_ratio = array(
			'name',
			'value'
		);
		$important_ratio = M('event_important_ratio')->where("event_id='$event_id'")->field($field_important_ratio)->order('id DESC')->select();
		if($important_ratio === FALSE)
		{
			$this->error('数据库错误：无法获取重点指标数据');
		}
		if(!$important_ratio)
		{
			$this->error('重点指标数据为空');
		}
		// 获取时间轴
		$field_timeline = array(
			'contents',
			'start_time'
		);
		$where_timeline['event_id'] = array('eq', $event_id);
		$where_timeline['is_show'] = array('eq', 1);
		$timeline = D('timeline')->where($where_timeline)->field($field_timeline)->select();
		if($timeline === FALSE)
		{
			$this->error('数据库错误：无法获取时间轴数据');
		}
		if(!$timeline)
		{
			$this->error('时间轴数据为空');
		}
		// 处理时间
		foreach($timeline as $m=>$n)
		{
			$year = substr($n['start_time'], 2, 2);
			$month = substr($n['start_time'], 4, 2) * 1;
			$term = substr($n['start_time'], 6, 1);
			switch($term)
			{
				case 'A':
					$term = '上旬';
					break;
				case 'B':
					$term = '中旬';
					break;
				case 'C':
					$term = '下旬';
					break;
			}
			$timeline[$m]['time_str'] = $year . '年' . $month . '月' . $term;
		}
		// 获取日志
		$where_log['event_id'] = array('eq', $event_id);
		$where_log['is_show'] = array('eq', 1);
		$log = D('event_log')->where($where_log)->select();
		if($log === FALSE)
		{
			$this->error('数据库错误：无法获取日志');
		}
		// 日志ID列表
		$log_id_list = array_column($log, 'id');
		if($log)
		{
			// 获取图片
			$where_log_img['log_id'] = array('in', $log_id_list);
			$where_log_img['is_show'] = array('eq', 1);
			$log_img = D('event_images')->where($where_log_img)->select();
			if($log_img === FALSE)
			{
				$this->error('数据库错误：无法获取日志图片');
			}
			// 按日志ID分组
			foreach($log_img as $m=>$n)
			{
				$log_img_tmp[ $n['log_id'] ][] = '/'.$n['URL'];
			}
			$log_img = $log_img_tmp;
			unset($log_img_tmp);
			// 获取整改记录
			$where_zhenggai['log_id'] = array('in', $log_id_list);
			$where_zhenggai['is_show'] = array('eq', 1);
			$zhenggai = D('event_zhenggai')->where($where_zhenggai)->select();
			if($zhenggai === FALSE)
			{
				$this->error('数据库错误：无法获取整改记录');
			}
			// 实例化User类，以备查询用户信息
			$User = new UserAction();
			// 按日志ID分组
			foreach($zhenggai as $m=>$n)
			{
				// 处理发布者姓名
				$n['leader'] = $User->get_user_info($n['confirm_id'])['real_name'];
				// 转存数据
				$zhenggai_tmp[ $n['log_id'] ][] = $n;
			}
			$zhenggai = $zhenggai_tmp;
			unset($zhenggai_tmp);
		}
		// 整理图片、整改记录至日志列表
		foreach($log as $m=>$n)
		{
			// 处理日期
			$log[$m]['add_time_str'] = date('Y年n月j日', $n['add_time']);
			// 补全整改信息
			if($zhenggai[ $n['id'] ])
			{
				$zhenggai_tmp = array();
				foreach($zhenggai[ $n['id'] ] as $h=>$i)
				{
					$zhenggai_tmp[$h] = array(
						'contents' => $i['contents'],
						'time_str' => date('Y年n月j日', $i['add_time']),
						'leader' => $i['leader']
					);
				}
				$log[$m]['zhenggai'] = $zhenggai_tmp;
			}
			// 补全图片信息
			if($log_img)
			{
				$log[$m]['img'] = $log_img[ $n['id'] ];
			}
		}
		// 获取日志图片列表
		$log_img_list = array_column($log, 'img');
		foreach($log_img_list as $m=>$n)
		{
			foreach($n as $h=>$i)
			{
				$log_img_list_tmp[] = $i;
			}
		}
		$log_img_list = $log_img_list_tmp;
		unset($log_img_list_tmp);

		$this->assign('event_info', $event_info);
		$this->assign('important_ratio', json_encode($important_ratio));
		$this->assign('timeline', $timeline);
		$this->assign('log', $log);
		$this->assign('log_img_list', $log_img_list);
		$this->assign('user_power', $_SESSION['wall_map']['power']);
		$this->display();
	}








	/* 重点工作督办
	 *
	 */
	public function focus_event()
	{
		// 获取序号
		$turn = intval($_GET['turn']);
		// 获取重点工作数据
		$where_event_info['is_show'] = array('eq', 1);
		$event_info = D('event')->where($where_event_info)->select();
		if($event_info === FALSE)
		{
			$msg = '数据库错误：无法获取重点工作数据';
			$this->stop_by_error($msg);
		}
		if(!$event_info)
		{
			$msg = '重点工作数据为空';
			$this->stop_by_error($msg);
		}
		// 数据总量
		$event_amount = count($event_info);
		// 根据序号获取工作数据
		$event_info = $event_info[$turn];
		// 获取重点工作责任部门
		$where_event_department['event_id'] = array('eq', $event_info['id']);
		$event_department = D('event_department')->where($where_event_department)->select();
		if($event_department === FALSE)
		{
			$msg = '数据库错误：无法获取部门数据';
			$this->stop_by_error($msg);
		}
		if(!$event_department)
		{
			$msg = '部门数据为空';
			$this->stop_by_error($msg);
		}
		// 获取部门ID列表
		$department_id_list = array_column($event_department, 'department_id');
		// 获取部门列表
		$where_department_info_list['id'] = array('in', $department_id_list);
		$department_info_list = D('department_list')->where($where_department_info_list)->select();
		if($department_info_list === FALSE)
		{
			$msg = '数据库错误：无法获取部门信息';
			$this->stop_by_error($msg);
		}
		if(!$department_info_list)
		{
			$msg = '部门信息不存在';
			$this->stop_by_error($msg);
		}
		// 整理部门信息
		foreach($department_info_list as $m=>$n)
		{
			$event_info['department'] .= $n['name'] . '、';
		}
		$event_info['department'] = rtrim( $event_info['department'], '、');
		// 获取时间线数据
		$where_timeline_data['event_id'] = array('eq', $event_info['id']);
		$timeline_data = D('timeline')->where($where_timeline_data)->select();
		if($timeline_data === FALSE)
		{
			$msg = '数据库错误：无法获取工作时序信息';
			$this->stop_by_error($msg);
		}
		if(!$timeline_data)
		{
			$msg = '工作时序信息不存在';
			$this->stop_by_error($msg);
		}
		// 整理时间线数据
		foreach($timeline_data as $m=>$n)
		{
			// 计算起止时间差值  (开始年月-结束年月)*3 + (开始旬-结束旬) + 1
			$timeline_data[$m]['continue_term'] = ( substr($n['end_time'], 0, 6) - substr($n['start_time'], 0, 6) ) * 3 + ord( substr($n['end_time'], 6) ) - ord( substr($n['start_time'], 6) ) + 1;
			// 计算状态
			switch($n['is_complete'])
			{
				case 0:
					$status = 'fail';
					break;
				case 1:
					$status = 'complete';
					break;
				case 2:
					$status = 'continue';
					break;
				default:
					;
			}
			$timeline_data[$m]['status'] = $status;
		}
		$event_info['timeline_data'] = $timeline_data;

		// 获取工作开始月份
		$start_month = substr($timeline_data[0]['start_time'], 4, 2) * 1;
		// 生成月份列表
		for($i=0; $i<4; $i++)
		{
			$tmp['month'] = $start_month + $i;
			if($tmp['month'] > 12)
			{
				$tmp['month'] -= 12;
			}
			if($tmp['month'] <= date('n'))
			{
				$tmp['status'] = 'active';
			}
			else
			{
				$tmp['status'] = 'inactive';
			}
			$tmp['month'] .= '月';
			$month_list[] = $tmp;
		}
//		if($tpl =='index_1536_768')
//		{
//			$month_list = array_reverse($month_list);
//		}
//		dump(array_reverse($month_list));
		$event_info['month_list'] = array_reverse($month_list);
		// 计算当前日期在整个工期中的比例
		$start = reset($event_info['timeline_data']);
		$start = $start['start_time'];
		$start_year = substr($start, 0, 4);
		$start_month = substr($start, 4, 2);
		switch( substr($start, 6) )
		{
			case 'A';
				$start_day = 1;
				break;
			case 'B';
				$start_day = 11;
				break;
			case 'C';
				$start_day = 21;
				break;
		}
		$past_day = ceil( ( time() - mktime(0, 0, 0, $start_month, $start_day, $start_year) ) / 86400 );
		$past_ratio = $past_day / 120;
		$event_info['past_ratio'] = $past_ratio;
		// 计算当前日期在整个工期中所处的工作阶段
		$event_info['past_ratio_int'] = ceil( $past_ratio / (1 / 12) );
		// 计算下一页序号
		$next_page = $turn + 1;
		if($next_page >= $event_amount)
		{
			$next_page = 0;
		}
		$event_info['next_page'] = $next_page;
		// 当前时间所在阶段的工作状态
		foreach($event_info['timeline_data'] as $m=>$n)
		{
			$start_year = substr($n['start_time'], 0, 4);
			$start_month = substr($n['start_time'], 4, 2) * 1;
			switch( substr($n['start_time'], 6) )
			{
				case 'A';
					$start_day = 1;
					break;
				case 'B';
					$start_day = 11;
					break;
				case 'C';
					$start_day = 21;
					break;
			}
			$end_year = substr($n['end_time'], 0, 4);
			$end_month = substr($n['end_time'], 4, 2) * 1;
			switch( substr($n['end_time'], 6) )
			{
				case 'A';
					$end_day = 10;
					break;
				case 'B';
					$end_day = 20;
					break;
				case 'C';
					$end_day = 30;
					break;
			}
			$start_timestamp = mktime(0, 0, 0, $start_month, $start_day, $start_year);
			$end_timestamp = mktime(23, 59, 59, $end_month, $end_day, $end_year);
			if( (time() >= $start_timestamp) && (time() <= $end_timestamp) )
			{
				$current_timeline_status = $n['is_complete'];
				break;
			}
		}
		$event_info['current_timeline_status'] = $current_timeline_status;

		$this->assign('event_info', $event_info);
		$this->display();
	}
	// 部门建议
    public function feedback()
    {
        $this->display();
    }
    /**
     * 详细日志的整改按钮
     */
    public function zhenggai(){
        if(IS_POST){
            $rules = array(
                array('contents','require','整改内容必须填写',1,'',1),
            );
            $model = M('Event_zhenggai');
            if($model->field("event_id,add_time,contents,log_id,confirm_id")->validate($rules)->create(I('post.'),1)){
                if($model->add()){
                    $eventModel = M('Event');
                    $eventId = I('post.event_id');
                    $eventInfo['zhenggai_status'] = 2;
                    $eventModel->where("id='$eventId'")->save($eventInfo);
                    $this->show("
                        <script>
                            alert('操作成功！');
                            window.location.href = '/index/Focus/event_detail/id/".I('post.event_id')."';
                        </script>
                    ");
                }
            }
            $this->show("
                <script>
                    alert('操作失败：".$model->getError()."');
                    window.location.href = '/index/Focus/event_detail/id/".I('post.event_id')."';
                </script>
            ");
        }
        $this->display();
    }
    // 上报列表
    public function advicelist(){
        $model = M('Department_advice');
        $data = $model->where("list_id='重点督办'")->order(array(
            'status'=>desc,
            'id'=>desc,
        ))->select();
        $this->assign('data',$data);
        $this->display();
    }
    // 上报列表中的建议内容
    public function advicelistxq(){
        $id = I('get.id');
        $model = M('Department_advice');
        $data = $model->find($id);
        $this->assign('data',$data['content']);
        $this->display();
    }
    // 上报列表中的回复内容
    public function advicelisthf(){
        $id = I('get.id');
        $model = M('Department_advice');
        $data = $model->find($id);
        $this->assign('data',$data['reply']);
        $this->display();
    }
}
