<?php
namespace Admin\Controller;

class UserController extends BaseController
{
	public $model;

	public function __construct()
	{
		parent::__construct();
		$this->model = M('user');
	}

	public function lst()
	{
		$where = array();
		if (I('get.username')) $where['a.username'] = I('get.username');
		$data = $this->model->alias('a')
			->field('a.id user_id,a.username,a.last_time,group_concat(c.id) role_id,group_concat(c.name) role_name')
			->join('left join __USER_ROLE__ b on a.id=b.user_id')->join('left join __ROLE__ c on b.role_id=c.id')->where($where)
			->group('a.id')->order('a.id desc')->select();
		foreach ($data as $k => &$v) {
			$v['role_id']   = str_replace(',', ', ', $v['role_id']);
			$v['role_name'] = str_replace(',', ', ', $v['role_name']);
		}
		$this->assign('data', $data);
		$this->display();
	}

	public function add()
	{
		// 获取角色
		$roleModel = M('role');
		$roleData  = $roleModel->select();
		if (IS_POST) {
			$data['username']   = I('post.username');
			$password           = I('post.password');
			$salt               = I('post.salt');
			$data['password']   = md5($password + $salt);
			$data['last_login'] = date('Y-m-d H:i:s', $salt);
			$data['salt']       = $salt;
			if ($lastId = $this->model->add($data)) {
				$roleUserModel = M('user_role');
				$roleId        = I('post.role_id');
				foreach ($roleId as $k => $v) {
					$roleUserModel->add(array(
						'role_id' => $v,
						'user_id' => $lastId,
					));
				}
				redirect('/Admin/User/lst', 1, '添加成功');
			} else {
				redirect('/Admin/User/lst', 1, '添加失败');
			}
		}
		$this->assign(array(
			'roleData' => $roleData,
		));
		$this->display();
	}

	public function edit()
	{
		// 获取自己
		$id   = I('get.id');
		$data = $this->model->find($id);
		// 角色多选项
		$roleModel = M('role');
		$roleData  = $roleModel->select();
		// 获取自己角色多选项
		$roleUserModel = M('user_role');
		$_roleIds      = $roleUserModel->where("user_id='$id'")->select();
		foreach ($_roleIds as $k => $v) {
			$roleIds[] = $v['role_id'];
		}
		if (IS_POST) {
			$data['id'] = $id;
			if (I('post.username')) {
				$data['username'] = I('post.username');
			}
			if (I('post.password')) {
				$password         = I('post.password');
				$salt             = $data['salt'];
				$data['password'] = md5($password + $salt);
			}
			if ($this->model->save($data) === false || $this->model->save($data) !== false) {
				// 修改成功后连表操作role_user
				$roleUserModel = M('user_role');
				// 删除
				$roleUserModel->where("user_id='$id'")->delete();
				// 添加
				$roleId = I('post.role_id');
				foreach ($roleId as $k => $v) {
					$roleUserModel->add(array(
						'role_id' => $v,
						'user_id' => $id,
					));
				}
				redirect('/Admin/User/lst', 1, '修改成功');
			} else {
				redirect('/Admin/User/lst', 1, '修改失败');
			}
		}
		$this->assign(array(
			'data'     => $data, //自身
			'roleData' => $roleData,  //角色多选项
			'roleIds'  => $roleIds,  //自身角色多选项
		));
		$this->display();
	}

	public function delete()
	{
		$id = I('get.id');
		//超级管理员无法删除
		if ($id == 1) {
			$this->show("
                <script>
                  alert('超级管理员无法删除！');
                  window.location.href='/Admin/User/lst';
                </script>");
			exit;
		}
		if ($this->model->where("id='$id'")->delete()) {
			// 删除关联表数据
			$roleUserModel = M('user_role');
			$roleUserModel->where("user_id='$id'")->delete();
			redirect('/Admin/User/lst', 1, '删除成功');
		} else {
			redirect('/Admin/User/lst', 1, '删除失败');
		}
	}
}
