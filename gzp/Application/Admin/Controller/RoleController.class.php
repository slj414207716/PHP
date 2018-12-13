<?php
namespace Admin\Controller;

class RoleController extends BaseController
{
    public $model;
    public function __construct(){
        parent::__construct();
        $this->model =M('role');
    }
    public function lst(){
        $where = array();
        if($name = I('get.name'))
            $where['a.name'] = array('like',"%$name%");
        $_data = $this->model
            ->alias('a')
            ->field('a.id role_id,a.name role_name,group_concat(c.id) permission_id,group_concat(c.name) pri_name')
            ->join('left join __ROLE_PERMISSION__ b on a.id=b.role_id')
            ->join('left join __PERMISSION__ c on b.permission_id=c.id')
            ->where($where)
            ->group('a.id')
            ->order('a.id desc')
            ->select();
        foreach($_data as $k=>$v){
            $tmp['role_id'] = $v['role_id'];
            $tmp['role_name'] = $v['role_name'];
            $tmp['permission_id'] = $v['permission_id'];
            $tmp['pri_name'] = str_replace(",","&nbsp&nbsp,&nbsp&nbsp",$v['pri_name']);
            $data[] = $tmp;
        }
        $this->assign('data',$data);
        $this->display();
    }
    public function add(){
        // 获取权限列表
        $priModel = M('permission');
        $_priData = $priModel->select();
        // 权限列表递归
        $priData = $this->_getTree($_priData);
        if(IS_POST){
            $rules = array(
                array('name','require','角色名称必须',1),
                array('name','0,30','角色名称不能超过30个字符',1,'length',1),
            );
            $ret = $this->model
                ->field('name')
                ->validate($rules)
                ->create(I('post.'),1);
            if(!$ret){
                $this->show("
                    <script>
                        alert('表单验证：".$this->model->getError()."');
                        window.location.href='/Admin/Role/lst';
                    </script>"
                );
                exit;
            }else{
                if($lastId = $this->model->add()){
                    $permission_id = I('post.permission_id');
                    foreach($permission_id as $k=>$v){
                        $priRoleModel = M('role_permission');
                        $priRoleModel->add(array(
                            'permission_id' => $v,
                            'role_id' => $lastId,
                        ));
                    }
                    $this->show("
                        <script>
                          alert('添加成功！');
                          window.location.href='/Admin/Role/lst';
                        </script>"
                    );
                    exit;
                }else{
                    $this->show("
                        <script>
                            alert('添加：".$this->model->getError()."');
                            window.location.href='/Admin/Role/lst';
                        </script>"
                    );
                    exit;
                }
            }
        }
        $this->assign('priData',$priData);
        $this->display();
    }
    public function edit(){
        // 获取权限列表
        $priModel = M('permission');
        $_priData = $priModel->select();
        // 权限列表递归
        $priData = $this->_getTree($_priData);
        // 获得自身信息
        $id = I('get.id');
        $data = $this->model->find($id);
        // 获得自身的权限ids
        $priInfo = $this->model
            ->alias('a')
            ->field('a.id role_id,a.name role_name,b.permission_id')
            ->join('left join __ROLE_PERMISSION__ b on a.id=b.role_id')
            ->where("a.id='$id'")
            ->select();
        foreach($priInfo as $k=>$v){
            $priIds[] = $v['permission_id'];
        }
        if(IS_POST){
            $rules = array(
                array('name','require','权限名称必须',1),
                array('name','0,30','权限名称不能超过30个字符',1,'length',2),
            );
            $ret = $this->model
                ->field('id,name')
                ->validate($rules)
                ->create(I('post.'),2);
            if(!$ret){
                $this->show("
                    <script>
                        alert('表单验证：".$this->model->getError()."');
                        window.location.href='/Admin/Role/lst';
                    </script>"
                );
                exit;
            }else{
                if($this->model->where("id='$id'")->save()!==FALSE){
                    // 修改pri_role中间表操作
                    $priRoleModel = M('role_permission');
                    // 删除
                    $priRoleModel->where("role_id='$id'")->delete();
                    // 添加
                    $priIds = I('post.permission_id');
                    foreach($priIds as $k=>$v){
                        $priRoleModel->add(array(
                            'role_id' => $id,
                            'permission_id' => $v,
                        ));
                    }
                    $this->show("
                        <script>
                          alert('修改成功！');
                          window.location.href='/Admin/Role/lst';
                        </script>"
                    );
                    exit;
                }else{
                    $this->show("
                        <script>
                            alert('修改：".$this->model->getError()."');
                            window.location.href='/Admin/Role/lst';
                        </script>"
                    );
                    exit;
                }
            }
        }
        $this->assign(array(
            'data'=>$data, // 自身
            'priData'=>$priData, // 权限列表展示
            'priIds'=>$priIds, // 自身的权限ids
        ));
        $this->display();
    }
    public function delete(){
        $id = I('get.id');
        if($this->model->where("id='$id'")->delete()){
            //删除关联中间表
            $priRoleModel = M('role_permission');
            $priRoleModel->where("role_id='$id'")->delete();
            $roleUserModel = M('user_role');
            $roleUserModel->where("role_id='$id'")->delete();
            $this->show("
                <script>
                  alert('删除成功！');
                  window.location.href='/Admin/Role/lst';
                </script>"
            );
            exit;
        }else{
            $this->show("
                <script>
                    alert('删除：".$this->model->getError()."');
                    window.location.href='/Admin/Role/lst';
                </script>"
            );
            exit;
        }
    }
    private function _getTree($data,$parent_id=0, $level=0, $isClear=TRUE){
        static $ret = array();
        if($isClear)
            $ret = array();
        foreach($data as $k=>$v){
            if($v['pid']==$parent_id){
                $v['level'] = $level;
                $ret[] = $v;
                $this->_getTree($data,$v['id'],$level+1,FALSE);
            }
        }
        return $ret;
    }
}
