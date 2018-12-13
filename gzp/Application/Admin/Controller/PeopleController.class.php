<?php 
namespace Admin\Controller;

class PeopleController extends BaseController{
//学生信息
	public function msbz(){

		$sid = I('get.sid');
		$Model = M('manager');
		$count = $Model->where("sid='$sid'")->count();
		$page = getpage($count,12);
		$show = $page->show();
		$data = $Model->where("sid='$sid'")->limit($page->firstRow.','.$page->listRows)->select();
		$this->assign(array(
			'data'=>$data,
			'page'=>$show,
			'sid'=>$sid,
		));

	if (date('m')==12) {

		// 找出表中当年数据
		$where = array();
		$where['year'] = array('eq',date("Y"));
		$where['sid'] = array('eq',$sid); 
		$shxfInfo = $Model->where($where)->select();
		foreach($shxfInfo as $k=>$v)
		{
			// 当年数据12月
			if($v['month']==12&&$v['number']!='')
			{
				// 累加全年实际完成数据
				foreach($shxfInfo as $k1=>$v1)
				{
					$yShxfData['sum_number'] = $yReal += $v1['number']; 
				}
			}
		}
		$yShxfModel = M('y_manager');
		$year = date('Y');
		$yShxfModel->where("sid='$sid' and year='$year'")->save($yShxfData);
	}
		$this->colum();
		$this->display();
	}

	public function add(){
		$sid = I('get.sid');
		if (IS_POST) {
			
			$data = array(
				array('year','require','年份不能为空',1),
				array('month','require','类型不能为空',1),
				array('number','require','数量不能为空',1),
			);

			$Model = M('manager');
			if ($res = $Model->validate($data)->create()) {
				
				$res['sid'] = $sid;
				if ($Model->add($res)) {
					
					$this->show("
                        <script>
                            alert('添加成功');
                            window.location.href = '/Admin/People/add'
                        </script>
                    ");	
				}		
			}

			$this->show("
                <script>
                    alert('添加失败：".$Model->getError()."');
                    window.location.href = '/Admin/People/add'
                </script>
            ");
		}

		$this->assign('sid',$sid);
		$this->display();

	}

	public function edit(){
		$id = I('get.id');
		$Model = M('manager');
		$data = $Model->where("id='$id'")->find();
		if (IS_POST) {
			
			$data = array(
				array('year','require','年份不能为空',1),
				array('month','require','类型不能为空',1),
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
                    window.location.href = '/Admin/People/adit/id/".$id."'
                </script>
            ");
		}
		$this->assign(array(
			'data'=>$data,
			'id'=>$id,
		));
		$this->display();
	}

	public function quit(){
		$id = I('get.id');
		$Model = M('manager');
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