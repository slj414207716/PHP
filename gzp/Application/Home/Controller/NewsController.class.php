<?php
namespace Home\Controller;
class NewsController extends BaseController
{
	public function lst()
	{	
		$partyColumnModel = M('news_column');
        $_data = $partyColumnModel->select();
        foreach($_data as $k=>$v)
        {
            if($v['pid']==0){
                foreach($_data as $k1=>$v1)
                {
                    if($v1['pid']==$v['id'])
                    {
                        foreach($_data as $k2=>$v2)
                        {
                            if($v2['pid']==$v1['id'])
                            {
                                $v1['child'][] = $v2;
                            }
                        }
                        $v['child'][] = $v1;
                    }
                }
                $data[] = $v;
            }
        }
        $this->assign('data',$data);
		// $this->colum();
		$this->display();
	}

	public function jour(){

		$sid = I('get.sid');

		$Model = M('New');
		$count = $Model->where("sid='$sid'")->count();
		$page = getpage($count,10);
		$show = $page->show();
		$data = $Model->where("sid='$sid'")->limit($page->firstRow.','.$page->listRows)->select();
		$this->assign('data',$data);
		$this->assign('page',$show);
		$this->colum();
		$this->display();

	}


	public function cent(){

		$id = I('get.id');
		$Model = M('New');
		$data = $Model->where("id='$id'")->find();
		$this->assign('data',$data);
		$this->colum();
		$this->display();
	}

}
