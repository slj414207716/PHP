<?php 
namespace Admin\Controller;

class WorkController extends BaseController{
//学生信息
	public function jygzxx(){

		$sid = I('get.sid');
		$Model = M('jygz');
		$count = $Model->where("sid='$sid'")->count();
		$page = getpage($count,10);
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

	public function pupiladd(){
		$sid = I('get.sid');
		if (IS_POST) {
			
			$data = array(
				array('grade','require','标题不能为空',1),
				array('number','require','简介不能为空',1),
				array('girl','require','内容不能为空',1),
				array('lend_outer','require','内容不能为空',1),
				array('lend_inner','require','内容不能为空',1),
				array('boor_outer','require','内容不能为空',1),
				array('boor_inner','require','内容不能为空',1),
				array('stay','require','内容不能为空',1),
				array('select_outer','require','内容不能为空',1),
				array('select_inner','require','内容不能为空',1),
				array('talents','require','内容不能为空',1),
				array('foreig','require','内容不能为空',1),
			);

			$Model = M('jygz');
			if ($res = $Model->validate($data)->create()) {
				
				$res['sid'] = $sid;
				$res['name'] = '中心小学';
				if ($Model->add($res)) {
					
					$this->show("
                        <script>
                            alert('添加成功');
                            window.location.href = '/Admin/Work/pupiladd'
                        </script>
                    ");	
				}		
			}

			$this->show("
                <script>
                    alert('添加失败：".$Model->getError()."');
                    window.location.href = '/Admin/Work/pupiladd'
                </script>
            ");
		}

		$this->assign('sid',$sid);
		$this->display();

	}

	public function alter(){
		$id = I('get.id');
		$Model = M('jygz');
		$data = $Model->where("id='$id'")->find();
		if (IS_POST) {
			
			$data = array(
				array('grade','require','标题不能为空',1),
				array('number','require','简介不能为空',1),
				array('girl','require','内容不能为空',1),
				array('lend_outer','require','内容不能为空',1),
				array('lend_inner','require','内容不能为空',1),
				array('boor_outer','require','内容不能为空',1),
				array('boor_inner','require','内容不能为空',1),
				array('stay','require','内容不能为空',1),
				array('select_outer','require','内容不能为空',1),
				array('select_inner','require','内容不能为空',1),
				array('talents','require','内容不能为空',1),
				array('foreig','require','内容不能为空',1),
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
                    window.location.href = '/Admin/Work/alter/id/".$id."'
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
		$Model = M('jygz');
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
//学校信息
	public function jygz(){

		$sid = I('get.sid');
		$Model = M('qita_jygz');
		$count = $Model->where("sid='$sid'")->count();
		$page = getpage($count,10);
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
				array('name','require','学校名称不能为空',1),
				array('number','require','学生人数不能为空',1),
			);

			$Model = M('qita_jygz');
			if ($res=$Model->validate($data)->create()) {
				$res['sid'] = $sid;
				if ($Model->add($res)) {
					$this->show("
						<script>
							alert('添加成功');
							location.href='/Admin/Work/add'
						</script>
					");
				}
			}
			$this->show("
				<script>
					alert('添加失败:".$Model->getError()."');
					location.href='/Admin/Work/add'
				</script>
			");
		}
		$this->assign('sid',$sid);
		$this->display();
	}

	public function edit(){

		$id = I('get.id');
		$Model = M('qita_jygz');
		$data = $Model->where("id='$id'")->find();
		$this->assign('data',$data);
		if (IS_POST) {
			
			$sql =array(
				array('year','require','年份不能为空',1),
				array('name','require','学校名称不能为空',1),
				array('number','require','学生人数不能为空',1),
			);

			if ($sqlstr = $Model->validate($sql)->create()) {
				
				if ($Model->where("id='$id'")->save($sqlstr)) {
					$this->show("
						<script>
							alert('修改成功');
							location.href='/Admin/index'
						</script>
					");
				}
			}
			$this->show("
				<script>
					alert('修改失败：".$Model->getError()."');
					location.href='/Admin/Work/edit/sid/".$sid."'
				</script>
			");
		}
		$this->assign('id',$id);
		$this->display();
	}

	public function quit(){

		$id = I('get.id');
		$Model = M('qita_jygz');
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