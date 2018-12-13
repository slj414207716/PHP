<?php
namespace Admin\Controller;

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
			$this->redirect('Admin/Login/login');
		}
	}

	public function getPermissionData($maxLevel = 1, $showOnly = true)
	{
		$where = array();
		$where[] = array('level' => array('elt', $maxLevel));
		if ($showOnly) {
			$where[] = array('is_show' => 1);
		}
		return M('permission')->where($where)->order('level ASC, sort ASC')->select();
	}

	protected function checkPermission($controller = '', $action = '', $id = '')
	{
		$id || $id = session('id');
		if (!$id) {
			return false;
		}

		$module = MODULE_NAME;
		$controller || $controller = CONTROLLER_NAME;
		$action || $action = ACTION_NAME;

		$permission_id = M('permission')->where(array(
			'module' => $module,
			'controller' => $controller,
			'action' => $action,
		))->getField('id');

		if (!$permission_id) {
			return true;
		}

		$role_id = M('user_role')->where(array('id' => $id))->getField('role_id');
		$info = M('role_permission')->where(array(
			'role_id' => $role_id,
			'permission_id' => $permission_id,
		))->find();

		if ($info) {
			return true;
		} else {
			return false;
		}
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