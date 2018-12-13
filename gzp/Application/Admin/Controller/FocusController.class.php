<?php
namespace Admin\Controller;

use Common\Page;

class FocusController extends BaseController
{
    public $departmentListModel = '';
    public $eventDepartmentModel = '';
    public $eventModel = '';
    public $eventImportantRatioModel = '';
    public $timeLineModel = '';
    public $eventLogModel = '';
    public $eventImagesModel = '';
    public $eventDelayModel = '';
    public function __construct(){
        parent::__construct();
        $this->departmentListModel = M('Department_list');
        $this->eventDepartmentModel = M('Event_department');
        $this->eventModel = M('Event');
        $this->eventImportantRatioModel = M('Event_important_ratio');
        $this->timeLineModel = M('Timeline');
        $this->eventLogModel = M('Event_log');
        $this->eventImagesModel = M('Event_images');
        $this->eventDelayModel = M('Event_delay');
    }
    /**
     * 项目管理
     */
    public function project(){
        $where = array();
        $where['id'] = array('gt',0);
        if($key=I('get.key')){
            $where['concat(type,name,leader)'] = array('like',"%$key%");
        }
        // 分页
        import('ORG.Util.Page');
        $count = $this->eventModel->where($where)->order('id desc')->count();
        $size = C('PAGE');
        $page = new Page($count,$size);
        $page->setConfig('header','个会员');
        $show = $page->show();
        // 查询
        $_data = $this->eventModel->where($where)->order('id desc')->limit($page->firstRow.','.$page->listRows)->select();
        foreach($_data as $k=>$v){
            $tmp['id'] = $v['id'];
            $tmp['type'] = $v['type'];
            $tmp['name'] = $v['name'];
            $tmp['leader'] = $v['leader'];
            $tmp['add_time'] = date("Y".'年'."m".'月',$v['add_time']);
            $tmp['finish_time_plan'] = date("Y".'年'."m".'月',$v['finish_time_plan']);
            $tmp['description'] = $v['description'];
            $tmp['problem'] = $v['problem'];
            $data[] = $tmp;
        }
        $this->assign('data',$data);
        $this->assign('page',$show);
        $this->display();
    }
    public function projectadd(){
        // 获取单位列表
        $departmentListInfo = $this->departmentListModel->field('id,name')->select();
        $this->assign('departmentListInfo',$departmentListInfo);
        if(IS_POST){
            $rules = array(
                array('name','require','项目名称必须填写',1,'',1),
                array('type','require','项目类型必须填写',1,'',1),
                array('leader','require','责任领导必须填写',1,'',1),
                array('add_time','require','督办时间必须填写',1,'',1),
                array('finish_time_plan','require','预计完成时间必须填写',1,'',1),
                array('description','require','项目概述必须填写',1,'',1),
                array('problem','require','存在问题必须填写',1,'',1),
            );
            $auto = array(
                array('add_time',function (){
	                return  strtotime(I('post.add_time'));
                },1,'function'),
                array('finish_time_plan',function (){
	                return  strtotime(I('post.finish_time_plan'));
                },1,'function'),
            );
            if($this->eventModel->field('type,name,leader,add_time,finish_time_plan,description,problem')->validate($rules)->auto($auto)->create(I('post.'),1)){
                if($lastId = $this->eventModel->add()){
                    $eventDepartmentData['department_id'] = I('post.department_id');
                    $eventDepartmentData['event_id'] = $lastId;
                    $this->eventDepartmentModel->add($eventDepartmentData);
                    $this->show("
                        <script>
                            alert('操作成功');
                            window.location.href='/index.php/Admin/Focus/project';
                        </script>
                    ");
                    exit;
                }
            }
            $this->show("
                <script>
                    alert('操作失败：".$this->eventModel->getError()."');
                    window.location.href='/index.php/Admin/Focus/project';
                </script>
            ");
            exit;
        }
        $this->display();
    }
    public function projectedit(){
        // 获取本条数据
        $id = I('get.id');
        $data = $this->eventModel->find($id);
        $data['add_time'] = date("Y-m-d H:i:s",$data['add_time']);
        $data['finish_time_plan'] = date("Y-m-d H:i:s",$data['finish_time_plan']);
        // 修改
        if(IS_POST){
            $rules = array(
                array('name','require','项目名称必须填写',1,'',2),
                array('type','require','项目类型必须填写',1,'',2),
                array('leader','require','责任领导必须填写',1,'',2),
                array('add_time','require','督办时间必须填写',1,'',2),
                array('finish_time_plan','require','预计完成时间必须填写',1,'',2),
                array('description','require','项目概述必须填写',1,'',2),
                array('problem','require','存在问题必须填写',1,'',2),
            );
            $auto = array(
                array('add_time','time',2,'function'),
                array('finish_time_plan','time',2,'function'),
            );
            if($this->eventModel->field('id,type,name,leader,add_time,finish_time_plan,description,problem')->validate($rules)->auto($auto)->create(I('post.'),2)){
                if($this->eventModel->where("id='$id'")->save()){
                    $this->show("
                        <script>
                            alert('操作成功');
                            window.location.href='/index.php/Admin/Focus/project';
                        </script>
                    ");
                    exit;
                }
            }
            $this->show("
                <script>
                    alert('操作失败：".$this->eventModel->getError()."');
                    window.location.href='/index.php/Admin/Focus/project';
                </script>
            ");
            exit;
        }
        $this->assign('data',$data);
        $this->display();
    }
    public function projectdel(){
        $id = I('get.id');
        if($this->eventModel->where("id='$id'")->delete()){
            $this->show("
                <script>
                    window.location.href = '/index.php/Admin/Focus/project';
                </script>
            ");
        }
    }
    /**
     * 重点指标
     */
    public function indicators(){
        $where = array();
        $where['a.id'] = array('gt',0);
        if($key=I('get.key')){
            $where['concat(a.name,b.name)'] = array('like',"%$key%");
        }
        // 分页
        import('ORG.Util.Page');
        $count = $this->eventImportantRatioModel
            ->alias('a')
            ->field('a.*,b.name evename')
            ->join('left join __EVENT__ b on a.event_id=b.id')
            ->where($where)
            ->order('a.id desc')
            ->count();
        $size = C('PAGE');
        $page = new Page($count,$size);
        $page->setConfig('theme',"共 %totalRow% %header% %nowPage%/%totalPage% 页 %upPage% %linkPage% %downPage%");
        $show = $page->show();
        // 查询
        $_data = $this->eventImportantRatioModel
            ->alias('a')
            ->field('a.*,b.name evename')
            ->join('left join __EVENT__ b on a.event_id=b.id')
            ->where($where)
            ->order('a.id desc')
            ->limit($page->firstRow.','.$page->listRows)
            ->select();
        foreach($_data as $k=>$v){
            $tmp['id'] = $v['id'];
            $tmp['name'] = $v['name'];
            $tmp['value'] = $v['value'];
            $tmp['update_time'] = date("Y-m-d H:i:s",$v['update_time']);
            $tmp['evename'] = $v['evename'];
            $data[] = $tmp;
        }
        $this->assign('data',$data);
        $this->assign('page',$show);
        $this->display();
    }
    public function indicatorsadd(){
        // 获取项目名称
        $xmsel = $this->eventModel->field('id,name')->select();
        $this->assign('xmsel',$xmsel);
        if(IS_POST){
            $rules = array(
                array('event_id','require','督办工作ID必须填写',1,'',1),
                array('update_time','require','更新时间必须填写',1,'',1),
                array('name','require','指标名称必须填写',1,'',1),
                array('value','require','指标值必须填写',1,'',1),
            );
            $auto = array(

            );
            if($this->eventImportantRatioModel->field('event_id,update_time,name,value')->validate($rules)->auto($auto)->create(I('post.'),1)){
                if($this->eventImportantRatioModel->add()){
                    $this->show("
                        <script>
                            alert('操作成功');
                            window.location.href='/index.php/Admin/Focus/indicators';
                        </script>
                    ");
                    exit;
                }
            }
            $this->show("
                <script>
                    alert('操作失败：".$this->eventImportantRatioModel->getError()."');
                    window.location.href='/index.php/Admin/Focus/indicators';
                </script>
            ");
            exit;
        }
        $this->display();
    }
    public function indicatorsedit(){
        // 获取本条数据
        $id = I('get.id');
        $data = $this->eventImportantRatioModel->find($id);
        $this->assign('data',$data);
        // 获取项目名称下拉
        $xmsel = $this->eventModel->field('id,name')->select();
        $this->assign('xmsel',$xmsel);
        if(IS_POST){
            $rules = array(
                array('event_id','require','督办工作ID必须填写',1,'',2),
                array('update_time','require','更新时间必须填写',1,'',2),
                array('name','require','指标名称必须填写',1,'',2),
                array('value','require','指标值必须填写',1,'',2),
            );
            $auto = array(

            );
            if($this->eventImportantRatioModel->field('id,event_id,update_time,name,value')->validate($rules)->auto($auto)->create(I('post.'),2)){
                if($this->eventImportantRatioModel->where("id='$id'")->save()){
                    $this->show("
                        <script>
                            alert('操作成功');
                            window.location.href='/index.php/Admin/Focus/indicators';
                        </script>
                    ");
                    exit;
                }
            }
            $this->show("
                <script>
                    alert('操作失败：".$this->eventImportantRatioModel->getError()."');
                    window.location.href='/index.php/Admin/Focus/indicators';
                </script>
            ");
            exit;
        }
        $this->display();
    }
    public function indicatorsdel(){
        $id = I('get.id');
        if($this->eventImportantRatioModel->where("id='$id'")->delete()){
            $this->show("
                <script>
                    window.location.href = '/index.php/Admin/Focus/indicators';
                </script>
            ");
        }
    }
    /**
     * 项目进度
     */
    public function progress(){
        $where = array();
        $where['a.id'] = array('gt',0);
        if($key=I('get.key')){
            $where['concat(a.contents,b.name)'] = array('like',"%$key%");
        }
        // 分页
        import('ORG.Util.Page');
        $count = $this->timeLineModel
            ->alias('a')
            ->field('a.*,b.name evename')
            ->join('left join __EVENT__ b on a.event_id=b.id')
            ->where($where)
            ->order('a.id desc')
            ->count();
        $size = C('PAGE');
        $page = new Page($count,$size);
        $page->setConfig('theme',"共 %totalRow% %header% %nowPage%/%totalPage% 页 %upPage% %linkPage% %downPage%");
        $show = $page->show();
        // 查询
        $_data = $this->timeLineModel
            ->alias('a')
            ->field('a.*,b.name evename')
            ->join('left join __EVENT__ b on a.event_id=b.id')
            ->where($where)
            ->order('a.id desc')
            ->limit($page->firstRow.','.$page->listRows)
            ->select();
        foreach($_data as $k=>$v){
            $tmp['id'] = $v['id'];
            $tmp['contents'] = $v['contents'];
            if(substr($v['start_time'],6)=='A'){
                $sxun = '上旬';
            }elseif (substr($v['start_time'],6)=='B'){
                $sxun = '中旬';
            }elseif (substr($v['start_time'],6)=='C'){
                $sxun = '下旬';
            }
            $tmp['start_time'] = substr($v['start_time'],0,4).'年'.substr($v['start_time'],4,2).'月'.$sxun;
            if(substr($v['end_time'],6)=='A'){
                $exun = '上旬';
            }elseif (substr($v['end_time'],6)=='B'){
                $exun = '中旬';
            }elseif (substr($v['end_time'],6)=='C'){
                $exun = '下旬';
            }
            $tmp['end_time'] = substr($v['end_time'],0,4).'年'.substr($v['end_time'],4,2).'月'.$exun;
            $tmp['evename'] = $v['evename'];
            $data[] = $tmp;
        }
        $this->assign('data',$data);
        $this->assign('page',$show);
        $this->display();
    }
    public function progressadd(){
        // 获取项目名称下拉
        $xmsel = $this->eventModel->field('id,name')->select();
        $this->assign('xmsel',$xmsel);
        if(IS_POST){

	        function starttotime(){
		        $_day = substr(I("post.start_time"),8,2);
		        if($_day<=10){
			        $day = 'A';
		        }elseif ($_day>20){
			        $day = 'C';
		        }else{
			        $day = 'B';
		        }
		        $ret = explode('-',substr(I("post.start_time"),0,7));
		        $ret = $ret[0].$ret[1].$day;
		        return $ret;
	        }
	        function endtotime(){
		        $_day = substr(I("post.end_time"),8,2);
		        if($_day<=10){
			        $day = 'A';
		        }elseif ($_day>20){
			        $day = 'C';
		        }else{
			        $day = 'B';
		        }
		        $ret = explode('-',substr(I("post.end_time"),0,7));
		        $ret = $ret[0].$ret[1].$day;
		        return $ret;
	        }

            $rules = array(
                array('event_id','require','督办工作ID必须填写',1,'',1),
                array('contents','require','阶段工作内容必须填写',1,'',1),
                array('start_time','require','阶段开始时间必须填写',1,'',1),
                array('end_time','require','阶段结束时间必须填写',1,'',1),
                array('remark','require','备注必须填写',1,'',1),
            );
            $auto = array(
                array('start','start_time',1,'field'),
                array('end','end_time',1,'field'),
                array('start_time','starttotime',1,'function'),
                array('end_time','endtotime',1,'function'),
            );
            if($this->timeLineModel->field('event_id,contents,start_time,end_time,remark')->validate($rules)->auto($auto)->create(I('post.'),1)){
                if($lastId = $this->timeLineModel->add()){
                    // 如果选择完工，则添加后将is_complete字段修改为0
                    if(I('post.radio')==0){
                        $wg['is_complete'] = 0;
                        $this->timeLineModel->where("id='$lastId'")->save($wg);
                    }
                    $this->show("
                        <script>
                            alert('操作成功');
                            window.location.href='/index.php/Admin/Focus/progress';
                        </script>
                    ");
                    exit;
                }
            }
            $this->show("
                <script>
                    alert('操作失败：".$this->timeLineModel->getError()."');
                    window.location.href='/index.php/Admin/Focus/progress';
                </script>
            ");
            exit;
        }
        $this->display();
    }
    public function progressedit(){
        // 获取本条数据
        $id = I('get.id');
        $data = $this->timeLineModel->find($id);
        if(substr($data['start_time'],6)=='A'){
            $sxun = '上旬';
        }elseif (substr($data['start_time'],6)=='B'){
            $sxun = '中旬';
        }elseif (substr($data['start_time'],6)=='C'){
            $sxun = '下旬';
        }
        $data['start_time'] = substr($data['start_time'],0,4).'年'.substr($data['start_time'],4,2).'月'.$sxun;
        if(substr($data['end_time'],6)=='A'){
            $sxun = '上旬';
        }elseif (substr($data['end_time'],6)=='B'){
            $sxun = '中旬';
        }elseif (substr($data['end_time'],6)=='C'){
            $sxun = '下旬';
        }
        $data['end_time'] = substr($data['end_time'],0,4).'年'.substr($data['end_time'],4,2).'月'.$sxun;
        $this->assign('data',$data);
        // 获取项目名称下拉
        $xmsel = $this->eventModel->field('id,name')->select();
        $this->assign('xmsel',$xmsel);
        // 修改
        if(IS_POST){

	        function starttotime(){
		        $_day = substr(I("post.start_time"),8,2);
		        if($_day<=10){
			        $day = 'A';
		        }elseif ($_day>20){
			        $day = 'C';
		        }else{
			        $day = 'B';
		        }
		        $ret = explode('-',substr(I("post.start_time"),0,7));
		        $ret = $ret[0].$ret[1].$day;
		        return $ret;
	        }
	        function endtotime(){
		        $_day = substr(I("post.end_time"),8,2);
		        if($_day<=10){
			        $day = 'A';
		        }elseif ($_day>20){
			        $day = 'C';
		        }else{
			        $day = 'B';
		        }
		        $ret = explode('-',substr(I("post.end_time"),0,7));
		        $ret = $ret[0].$ret[1].$day;
		        return $ret;
	        }

	        $rules = array(
                array('event_id','require','督办工作ID必须填写',1,'',2),
                array('contents','require','阶段工作内容必须填写',1,'',2),
                array('start_time','require','阶段开始时间必须填写',1,'',2),
                array('end_time','require','阶段结束时间必须填写',1,'',2),
                array('remark','require','备注必须填写',1,'',1),
            );
            $auto = array(
                array('start','start_time',2,'field'),
                array('end','end_time',2,'field'),
                array('start_time','starttotime',2,'function'),
                array('end_time','endtotime',2,'function'),
            );
            if($this->timeLineModel->field('id,event_id,contents,start_time,end_time,remark')->validate($rules)->auto($auto)->create(I('post.'),2)){
                if($this->timeLineModel->where("id='$id'")->save()){
                    // 如果选择完工，则添加后将is_complete字段修改为0
                    if(I('post.radio')==0){
                        $wg['is_complete'] = 0;
                        $this->timeLineModel->where("id='$id'")->save($wg);
                    }
                    // 如果选择未完工，则添加后将is_complete字段修改为2
                    if(I('post.radio')==2){
                        $wg['is_complete'] = 2;
                        $this->timeLineModel->where("id='$id'")->save($wg);
                    }
                    $this->show("
                        <script>
                            alert('操作成功');
                            window.location.href='/index.php/Admin/Focus/progress';
                        </script>
                    ");
                    exit;
                }
            }
            $this->show("
                <script>
                    alert('操作失败：".$this->timeLineModel->getError()."');
                    window.location.href='/index.php/Admin/Focus/progress';
                </script>
            ");
            exit;
        }
        $this->display();
    }
    public function progressdel(){
        $id = I('get.id');
        if($this->timeLineModel->where("id='$id'")->delete()){
            $this->show("
                <script>
                    window.location.href = '/index.php/Admin/Focus/progress';
                </script>
            ");
        }
    }
    /**
     * 详细日志
     */
    public function log(){
        $where = array();
        $where['a.id'] = array('gt',0);
        if($key=I('get.key')){
            $where['concat(a.contents,b.name)'] = array('like',"%$key%");
        }
        // 分页
        import('ORG.Util.Page');
        $count = $this->eventLogModel
            ->alias('a')
            ->field('a.*,b.name evename')
            ->join('left join __EVENT__ b on a.event_id=b.id')
            ->where($where)
            ->order('a.id DESC')
            ->count();
        $size = C('PAGE');
        $page = new Page($count,$size);
        $page->setConfig('theme',"共 %totalRow% %header% %nowPage%/%totalPage% 页 %upPage% %linkPage% %downPage%");
        $show = $page->show();
        // 查询
        $_data = $this->eventLogModel
            ->alias('a')
            ->field('a.*,b.name evename')
            ->join('left join __EVENT__ b on a.event_id=b.id')
            ->where($where)
            ->order('a.id DESC')
            ->limit($page->firstRow.','.$page->listRows)
            ->select();
        foreach($_data as $k=>$v){
            $tmp['id'] = $v['id'];
            $tmp['contents'] = $v['contents'];
            $tmp['add_time'] = date('Y-m-d H:i:s',$v['add_time']);
            $tmp['evename'] = $v['evename'];
            $data[] = $tmp;
        }
        $this->assign('data',$data);
        $this->assign('page',$show);
        $this->display();
    }
    public function logadd(){
        // 获取项目名称下拉
        $xmsel = $this->eventModel->field('id,name')->select();
        $this->assign('xmsel',$xmsel);
        // 添加
        if(IS_POST){
            $rules = array(
                array('event_id','require','项目ID必须填写',1,'',1),
                array('contents','require','日志内容必须填写',1,'',1),
                array('add_time','require','上报时间必须填写',1,'',1),
            );
            if($this->eventLogModel->field('event_id,contents,add_time')->validate($rules)->create(I('post.'),1)){
                if($lastId = $this->eventLogModel->add()){
                    if($_FILES['img']['error'][0]===0){
                        //如果有图片上传，则先添加硬盘
                        import('ORG.Net.UploadFile');
                        $upload = new UploadFile();
                        $upload->maxSize = 1024*1024*10 ;
                        $upload->allowExts = array('jpg', 'gif', 'png', 'jpeg');
                        $upload->savePath = './Uploads/images/Supervision/log/';
                        $upload->autoSub = true;
                        $upload->subType = 'date';
                        $ret = $upload->upload();
                        if(!$ret) {
                            $this->error($upload->getErrorMsg());
                        }else{
                            $info = $upload->getUploadFileInfo();
                        }
                        // 添加数据库
                        foreach($info as $k=>$v){
                            $imgData['log_id'] = $lastId;
                            $imgData['URL'] = $v['savepath'].$v['savename'];
                            $this->eventImagesModel->add($imgData);
                        }
                    }
                    $this->show("
                        <script>
                            alert('操作成功！');
                            window.location.href = '/index.php/Admin/Focus/log';
                        </script>
                    ");
                    exit;
                }
            }
            $this->show("
                <script>
                    alert('操作失败：".$this->eventLogModel->getError()."');
                    window.location.href = '/index.php/Admin/Focus/log';
                </script>
            ");
        }
        $this->display();
    }
    public function logedit(){
        $id = I('get.id');
        // 获取项目名称下拉
        $xmsel = $this->eventModel->field('id,name')->select();
        $this->assign('xmsel',$xmsel);
        // 获取自身数据
        $data = $this->eventLogModel->find($id);
        $this->assign('data',$data);
        // 获取自身图片
        $imgData = $this->eventImagesModel->where("log_id='$id'")->select();
        // 修改
        if(IS_POST){
            $rules = array(
                array('event_id','require','项目ID必须填写',1,'',2),
                array('contents','require','日志内容必须填写',1,'',2),
            );
            if($this->eventLogModel->field('id,event_id,contents')->validate($rules)->create(I('post.'),2)){
                if($this->eventLogModel->where("id='$id'")->save()!==false){
                    if($_FILES['img']['error'][0]===0){
                        //如果有图片上传，则先添加硬盘
                        import('ORG.Net.UploadFile');
                        $upload = new UploadFile();
                        $upload->maxSize = 1024*1024*10 ;
                        $upload->allowExts = array('jpg', 'gif', 'png', 'jpeg');
                        $upload->savePath = './Uploads/images/Supervision/log/';
                        $upload->autoSub = true;
                        $upload->subType = 'date';
                        $ret = $upload->upload();
                        if(!$ret) {
                            $this->error($upload->getErrorMsg());
                        }else{
                            $info = $upload->getUploadFileInfo();
                        }
                        // 添加数据库
                        foreach($info as $k=>$v){
                            $imgData['log_id'] = $id;
                            $imgData['URL'] = $v['savepath'].$v['savename'];
                            $this->eventImagesModel->add($imgData);
                        }
                    }
                    $this->show("
                        <script>
                            alert('操作成功！');
                            window.location.href = '/index.php/Admin/Focus/log';
                        </script>
                    ");
                    exit;
                }
            }
            $this->show("
                <script>
                    alert('操作失败：".$this->eventLogModel->getError()."');
                    window.location.href = '/index.php/Admin/Focus/log';
                </script>
            ");
        }
        $this->assign('imgData',$imgData);
        $this->display();
    }
    public function ajaxdelimg(){
        $id = I('post.id');
        $info = $this->eventImagesModel->find($id);
        unlink($info['URL']);
        $this->eventImagesModel->where("id = '$id'")->delete();
    }
    public function logdel(){
        $id = I('get.id');
        if($eventLogInfo = $this->eventLogModel->where("id='$id'")->delete()){
            if($eventImgInfo = $this->eventImagesModel->where("log_id='$id'")->select()){
                foreach($eventImgInfo as $k=>$v){
                    unlink($v['URL']);
                    $imgId = $v['id'];
                    $this->eventImagesModel->where("id='$imgId'")->delete();
                }
                $this->show("
                    <script>
                        alert('操作成功！');
                        window.location.href = '/index.php/Admin/Focus/log';
                    </script>
                ");
                exit;
            }
        }
        $this->show("
            <script>
                alert('操作失败!');
                window.location.href = '/index.php/Admin/Focus/log';
            </script>
        ");
        exit;
    }
    /**
     * 跨部门合作
     */
    public function moredep(){
        $where = array();
        $where['id'] = array('gt',0);
        if($key=I('get.key')){
            $where['name'] = array('like',"%$key%");
        }
        // 分页
        import('ORG.Util.Page');
        $count = $this->eventModel->where($where)->count();
        $size = C('PAGE');
        $page = new Page($count,$size);
        $page->setConfig('theme',"共 %totalRow% %header% %nowPage%/%totalPage% 页 %upPage% %linkPage% %downPage%");
        $show = $page->show();
        // 查询
        $_data = $this->eventModel->field('id,name,more_department')->where($where)->order('id desc')->limit($page->firstRow.','.$page->listRows)->select();
        foreach($_data as $k=>$v){
            $tmp['id'] = $v['id'];
            $tmp['name'] = $v['name'];
            $tmp['more_department'] = explode('|',$v['more_department']);
            $data[] = $tmp;
        }
        foreach($data as $k=>&$v){
            foreach($v['more_department'] as $k1=>&$v1){
                $departmentListInfo = $this->departmentListModel->select();
                foreach($departmentListInfo as $j=>$k){
                    $deptmp[$k['id']] = $k;
                }
                $v1 = $deptmp[$v1]['name'];
            }
        }
        $this->assign('data',$data);
        $this->assign('page',$show);
        $this->display();
    }
    public function moredepadd(){
        // 获取项目名称下拉
        $xmsel = $this->eventModel->field('id,name')->select();
        $this->assign('xmsel',$xmsel);
        // 获取部门信息下拉
        $departmentListInfo = $this->departmentListModel->field('id,name')->select();
        $this->assign('departmentListInfo',$departmentListInfo);
        // 新增（其实是修改）
        if(IS_POST) {
            $id = I('post.event_id');
            $data['more_department'] = implode('|', I('post.more_department'));
            if ($this->eventModel->where("id='$id'")->save($data)) {
                $this->show("
                    <script>
                        alert('操作成功！');
                        window.location.href = '/index.php/Admin/Focus/moredep';
                    </script>
                ");
                exit;
            } else {
                $this->show("
                    <script>
                        alert('操作失败：" . $this->eventModel->getError() . "');
                        window.location.href = '/index.php/Admin/Focus/moredep';
                    </script>
                ");
                exit;
            }
        }
        $this->display();
    }
    public function moredepedit(){
        $id = I('get.id');
        // 获取项目名称下拉
        $xmsel = $this->eventModel->field('id,name')->select();
        $this->assign('xmsel',$xmsel);
        // 获取部门信息下拉
        $departmentListInfo = $this->departmentListModel->field('id,name')->select();
        $this->assign('departmentListInfo',$departmentListInfo);
        // 获取自身数据
        $eventData = $this->eventModel->field('id,more_department')->find($id);
        $this->assign('eventData',$eventData);
        // 修改
        if(IS_POST) {
//            $id = I('post.event_id');
            $data['more_department'] = implode('|', I('post.more_department'));
            if ($this->eventModel->where("id='$id'")->save($data)) {
                $this->show("
                    <script>
                        alert('操作成功！');
                        window.location.href = '/index.php/Admin/Focus/moredep';
                    </script>
                ");
                exit;
            } else {
                $this->show("
                    <script>
                        alert('操作失败：" . $this->eventModel->getError() . "');
                        window.location.href = '/index.php/Admin/Focus/moredep';
                    </script>
                ");
                exit;
            }
        }
        $this->display();
    }
    /**
     * 延期申请
     * 首先操作event_delay表(其中approver_id和approve_time这个两个字段有领导前台添加，未通过为0，通过为1)
     * 然后event表delay_time字段
     */
    public function delay(){
        $where = array();
        $where['a.id'] = array('gt',0);
        if($key=I('get.key')){
            $where['concat(a.delay_reason,b.name)'] = array('like',"%$key%");
        }
        // 分页
        import('ORG.Util.Page');
        $count = $this->eventDelayModel
            ->alias('a')
            ->field('a.*,b.name evename')
            ->join('left join __EVENT__ b on a.event_id=b.id')
            ->where($where)
            ->order('a.id desc')
            ->count();
        $size = C('PAGE');
        $page = new Page($count,$size);
        $page->setConfig('theme',"共 %totalRow% %header% %nowPage%/%totalPage% 页 %upPage% %linkPage% %downPage%");
        $show = $page->show();
        // 查询
        $_data = $this->eventDelayModel
            ->alias('a')
            ->field('a.*,b.name evename')
            ->join('left join __EVENT__ b on a.event_id=b.id')
            ->where($where)
            ->order('a.id desc')
            ->limit($page->firstRow.','.$page->listRows)
            ->select();
        foreach($_data as $k=>$v){
            $tmp['id'] = $v['id'];
            $tmp['add_time'] = date("Y-m-d H:i:s",$v['add_time']);
            $tmp['delay_time'] = date("Y-m-d",$v['delay_time']);
            $tmp['delay_reason'] = $v['delay_reason'];
            $tmp['evename'] = $v['evename'];
            $data[] = $tmp;
        }
        $this->assign('data',$data);
        $this->assign('page',$show);
        $this->display();
    }
    public function delayadd(){
        // 获取项目名称下拉
        $xmsel = $this->eventModel->field('id,name')->select();
        $this->assign('xmsel',$xmsel);
        // 添加
        if(IS_POST){
            $rules = array(
                array('add_time','require','添加时间必须填写',1),
                array('event_id','require','项目名称必须填写',1),
                array('delay_time','require','延期时间必须填写',1),
                array('delay_reason','require','延期原因必须填写',1),
            );
	        $auto = array(
		        array('delay_time', function () {
			        return strtotime(I('post.delay_time'));
		        }, 1, 'function'),
	        );
            if($this->eventDelayModel->field('event_id,add_time,delay_time,delay_reason')->validate($rules)->auto($auto)->create(I('post.'),1)){
                if($this->eventDelayModel->add()){
                    $id = I('post.event_id');
                    $eventSaveData['delay_time'] = strtotime(I('post.delay_time'));
                    $this->eventModel->where("id='$id'")->save($eventSaveData);
                    $this->show("
                    <script>
                        alert('操作成功！');
                        window.location.href = '/index.php/Admin/Focus/delay';
                    </script>
                ");
                    exit;
                }
            }
            $this->show("
                <script>
                    alert('操作失败：".$this->eventDelayModel->getError()."');
                    window.location.href = '/index.php/Admin/Focus/delay';
                </script>
            ");
        }
        $this->display();
    }
    public function delayedit(){
        // 获取项目名称下拉
        $xmsel = $this->eventModel->field('id,name')->select();
        $this->assign('xmsel',$xmsel);
        // 获取自己
        $id = I('get.id');
        $eventDelayData = $this->eventDelayModel->find($id);
        // 修改
        if(IS_POST){

	        function savetotime(){
		        return strtotime(I('post.delay_time'));
	        }

            $saverules = array(
                array('event_id','require','项目必须选择',1),
                array('delay_time','require','延期时间必须填写',1),
                array('delay_reason','require','延期原因必须填写',1),
            );
            $saveauto = array(
                array('delay_time','savetotime',2,'function'),
            );
            if($this->eventDelayModel->field('event_id,delay_time,delay_reason')->validate($saverules)->auto($saveauto)->create(I('post.'),2)){
                if($this->eventDelayModel->where("id='$id'")->save()){
                    $eventId = I('post.event_id');
                    $delayTime['delay_time'] = strtotime(I('post.delay_time'));
                    $this->eventModel->where("id='$eventId'")->save($delayTime);
                    $this->show("
                        <script>
                            alert('操作成功！');
                            window.location.href = '/index.php/Admin/Focus/delay';
                        </script>
                    ");
                    exit;
                }
            }
            $this->show("
                <script>
                    alert('操作失败：".$this->eventDelayData->getError()."');
                    window.location.href = '/index.php/Admin/Focus/delay';
                </script>
            ");
            exit;
        }
        $this->assign(array(
            'eventDelayData'=>$eventDelayData,
        ));
        $this->display();
    }
    // 延期领导批示同意
    public function tongyi(){
        $eventId = I('get.id');
        $eventDelayInfo['approver_id'] = $_SESSION['wall_map']['id'];
        $eventDelayInfo['approve_time'] = time();
        $eventDelayInfo['approve_status'] = 1;
        if($this->eventDelayModel->where("event_id='$eventId'")->save($eventDelayInfo)){
            $this->show("
                <script>
                    window.location.href = '/index.php/Home/Focus/task_delay';
                </script>
            ");
            exit;
        }else{
            $this->show("
                <script>
                    alert('操作失败！".$this->eventDelayModel->getError()."');
                    window.location.href = '/index.php/Home/Focus/task_delay';
                </script>
            ");
            exit;
        }
    }
    // 延期领导批示不同意
    public function butongyi(){
        $eventId = I('get.id');
        $eventDelayInfo['approver_id'] = $_SESSION['wall_map']['id'];
        $eventDelayInfo['approve_time'] = time();
        $eventDelayInfo['approve_status'] = 0;
        if($this->eventDelayModel->where("event_id='$eventId'")->save($eventDelayInfo)){
            $this->show("
                <script>
                    window.location.href = '/index.php/Home/Focus/task_delay';
                </script>
            ");
            exit;
        }else{
            $this->show("
                <script>
                    alert('操作失败！".$this->eventDelayModel->getError()."');
                    window.location.href = '/index.php/Home/Focus/task_delay';
                </script>
            ");
            exit;
        }
    }
    // 办结
    public function banjie(){
        $id = I('get.id');
        $data['comment'] = I('post.comment');
        $data['status'] = 1;
        if($this->eventModel->where("id='$id'")->save($data)){
            $this->show("
                <script>
                    alert('办结完成');
                    window.location.href = '/index.php/Home/Focus/total_progress';
                </script>
            ");
            exit;
        }else{
            $this->show("
                <script>
                    alert('办结失败：".$this->eventModel->getError()."');
                    window.location.href = '/index.php/Home/Focus/total_progress';
                </script>
            ");
            exit;
        }
    }
}
