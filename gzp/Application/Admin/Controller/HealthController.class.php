<?php 
namespace Admin\Controller;

class HealthController extends BaseController{
//医疗卫生
	public function ylws(){

		$sid = I('get.sid');
		$Model = M('ylws');
		$count = $Model->where("sid='$sid'")->count();
		$page = getpage($count,12);
		$show = $page->show();
		$data = $Model->where("sid='$sid'")->limit($page->firstRow.','.$page->listRows)->select();
		$this->assign(array(
			'data'=>$data,
			'page'=>$show,
			'sid'=>$sid,
		));
		$this->colum();
		$this->display();
	}

	public function add(){
		$sid = I('get.sid');
		if (IS_POST) {
			
			$data = array(
				array('year','require','年份不能为空',1),
				array('name','require','类型不能为空',1),
				array('number','require','数量不能为空',1),
			);

			$Model = M('ylws');
			if ($res = $Model->validate($data)->create()) {
				
				$res['sid'] = $sid;
				if ($Model->add($res)) {
					
					$this->show("
                        <script>
                            alert('添加成功');
                            window.location.href = '/Admin/Health/add'
                        </script>
                    ");	
				}		
			}

			$this->show("
                <script>
                    alert('添加失败：".$Model->getError()."');
                    window.location.href = '/Admin/Health/add'
                </script>
            ");
		}

		$this->assign('sid',$sid);
		$this->display();

	}

	public function edit(){
		$id = I('get.id');
		$Model = M('ylws');
		$data = $Model->where("id='$id'")->find();
		if (IS_POST) {
			
			$data = array(
				array('year','require','年份不能为空',1),
				array('name','require','类型不能为空',1),
				array('number','require','数量不能为空',1),
			);

			if ($res = $Model->validate($data)->create()) {
				
				if ($Model->where("id='$id'")->save($res)) {
					
					$this->show("
                        <script>
                            alert('修改成功');
                            window.location.href = '/Admin/index'
                        </script>
                    ");	
				}		
			}

			$this->show("
                <script>
                    alert('修改失败：".$Model->getError()."');
                    window.location.href = '/Admin/Health/adit/id/".$id."'
                </script>
            ");
		}
		$this->assign(array(
			'data'=>$data,
			'id'=>$id,
		));
		$this->display();
	}

	public function del(){
		$id = I('get.id');
		$Model = M('ylws');
		$data = $Model->where("id='$id'")->delete();
		if ($data) {
			$this->show("
                <script>
                    alert('删除成功');
                    window.location.href = '/Admin/index'
                </script>
            ");	
		}
		$this->show("
            <script>
                alert('删除失败');
                window.location.href = '/Admin/index'
            </script>
        ");
	}
}