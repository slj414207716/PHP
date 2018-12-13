<?php 
namespace Admin\Controller;

class NewsController extends BaseController{

	public function lst(){

		$sid = I('get.sid');
		$Model = M('new');
		$count = $Model->where("sid='$sid'")->count();
		$page = getpage($count,10);
		$show = $page->show();
		$data = $Model->where("sid='$sid'")->limit($page->firstRow.','.$page->listRows)->select();
		$this->assign(array(
			'data'=>$data,
			'page'=>$show,
			'sid'=>$sid,
		));
		$this->display();
	}

	public function add(){
		$sid = I('get.sid');
		if (IS_POST) {
			
			$data = array(
				array('title','require','标题不能为空',1),
				array('intro','require','简介不能为空',1),
				array('content','require','内容不能为空',1),
			);

			$Model = M('new');
			if ($res = $Model->validate($data)->create()) {
				
				$res['sid'] = $sid;
				$res['addtime'] = date('Y-m-d');
				if ($Model->add($res)) {
					
					$this->show("
                        <script>
                            alert('添加成功');
                            window.location.href = '/Admin/News/add';
                        </script>
                    ");	
				}		
			}

			$this->show("
                <script>
                    alert('添加失败：".$Model->getError()."');
                    window.location.href = '/Admin/News/add'
                </script>
            ");
		}

		$this->assign('sid',$sid);
		$this->display();

	}

	public function alter(){
		$id = I('get.id');
		$Model = M('new');
		$data = $Model->where("id='$id'")->find();
		if (IS_POST) {
			
			$data = array(
				array('title','require','标题不能为空',1),
				array('intro','require','简介不能为空',1),
				array('content','require','内容不能为空',1),
			);

			$Model = M('new');
			if ($res = $Model->validate($data)->create()) {
				
				$res['addtime'] = date('Y-m-d');
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
                    window.location.href = '/Admin/News/alter/id/".$id."'
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
		$Model = M('new');
		$data = $Model->where("id='$id'")->delete();
		if ($data) {
			$this->show("
                <script>
                    alert('删除成功');
                    window.location.href = '/Admin/News/lst';
                </script>
            ");	
		}
		$this->show("
            <script>
                alert('删除失败：".$Model->getError()."');
                window.location.href = '/Admin/News/lst'
            </script>
        ");
	}

}