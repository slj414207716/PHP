<?php
namespace Admin\Controller;

class PrivilegeController extends BaseController
{
    public $model;
    public function __construct(){
        parent::__construct();
        $this->model = M('permission');
    }
    public function lst(){
        $where = array();
        if($name = I('get.name'))
            $where['name'] = array('like',"%$name%");
        $_data = $this->model
            ->where($where)
            ->select();
        $data = $this->_getTree($_data);
        $this->assign('data',$data);
        $this->display();
    }
    public function add(){
        $_shangjiDropDown = $this->model->select();
        $shangjiDropDown = $this->_getTree($_shangjiDropDown);
        if(IS_POST){
            $rules = array(
                array('pid','require','上级权限必须',1),
                array('pid','number','上级权限必须为数字',1),
                array('name','require','权限名称必须',1),
                array('name','0,30','权限名称不能超过30个字符',1,'length',1),
                array('module','0,30','模块名称不能超过30个字符',1,'length',1),
                array('controller','0,30','控制名称不能超过30个字符',1,'length',1),
                array('action','0,30','方法名称不能超过30个字符',1,'length',1),
            );
            $ret = $this->model
                ->field('pid,name,module,controller,action')
                ->validate($rules)
                ->create(I('post.'),1);
            if(!$ret){
                $this->show("
                    <script>
                        alert('表单验证：".$this->model->getError()."');
                        window.location.href='/Admin/Privilege/lst';
                    </script>"
                );
                exit;
            }else{
                if($this->model->add()){
                    $this->show("
                        <script>
                          alert('添加成功！');
                          window.location.href='/Admin/Privilege/lst';
                        </script>"
                    );
                    exit;
                }else{
                    $this->show("
                        <script>
                            alert('添加：".$this->model->getError()."');
                            window.location.href='/Admin/Privilege/lst';
                        </script>"
                    );
                    exit;
                }
            }
        }
        $this->assign('shangjiDropDown',$shangjiDropDown);
        $this->display();
    }
    public function edit(){
        // 获得自身信息
        $id = I('get.id');
        $data = $this->model->find($id);
        // 获取递归下拉
        $_shangjiDropDown = $this->model->select();
        $shangjiDropDown = $this->_getTree($_shangjiDropDown);
        // 获取自己和儿孙，修改不能显示自己和儿孙的ID
        $_shangjiDropDown = $this->model->select();
        $_childrens = $this->_getTree($_shangjiDropDown,$id);
        foreach($_childrens as $k=>$v){
            $childrens[] = $v['id'];
        }
        $idarr[] = $id;
        $ids = array_merge((array)$idarr,(array)$childrens);
        if(IS_POST){
            $rules = array(
                array('pid','require','上级权限必须',1),
                array('pid','number','上级权限必须为数字',1),
                array('name','require','权限名称必须',1),
                array('name','0,30','权限名称不能超过30个字符',1,'length',2),
                array('module','0,30','模块名称不能超过30个字符',1,'length',2),
                array('controller','0,30','控制名称不能超过30个字符',1,'length',2),
                array('action','0,30','方法名称不能超过30个字符',1,'length',2),
            );
            $ret = $this->model
                ->field('id,pid,name,module,controller,action')
                ->validate($rules)
                ->create(I('post.'),2);
            if(!$ret){
                $this->show("
                    <script>
                        alert('表单验证：".$this->model->getError()."');
                        window.location.href='/Admin/Privilege/lst';
                    </script>"
                );
                exit;
            }else{
                if($this->model->where("id='$id'")->save()!==FALSE){
                    $this->show("
                        <script>
                          alert('修改成功！');
                          window.location.href='/Admin/Privilege/lst';
                        </script>"
                    );
                    exit;
                }else{
                    $this->show("
                        <script>
                            alert('修改：".$this->model->getError()."');
                            window.location.href='/Admin/Privilege/lst';
                        </script>"
                    );
                    exit;
                }
            }
        }
        $this->assign(array(
            'data'=>$data, // 自己
            'shangjiDropDown'=>$shangjiDropDown, // 下拉
            'ids'=>$ids, // 下拉需要屏蔽的ID
        ));
        $this->display();
    }
    public function delete(){
        $id = I('get.id');
        $data = $this->model->select();
        $childInfo = $this->_getTree($data,$parent_id=$id);
        if($childInfo){  // 如果有下级不可以删除
            $this->show("
                <script>
                  alert('有下级权限，无法删除！');
                  window.location.href='/Admin/Privilege/lst';
                </script>"
            );
            exit;
        }else{  //如果没有下级可以删除
            if($this->model->where("id='$id'")->delete()){
                // 删除成功后在删除中间表数据
                $priRoleModel = M('role_permission');
                $priRoleModel->where("permission_id='$id'")->delete();
                $this->show("
                <script>
                  alert('删除成功！');
                  window.location.href='/Admin/Privilege/lst';
                </script>"
                );
                exit;
            }else{
                $this->show("
                <script>
                    alert('删除：".$this->model->getError()."');
                    window.location.href='/Admin/Privilege/lst';
                </script>"
                );
                exit;
            }
        }
    }

    // 递归
    public function getTree($tab){
        $data = M($tab)->select();
        return $this->_getTree($data);
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
