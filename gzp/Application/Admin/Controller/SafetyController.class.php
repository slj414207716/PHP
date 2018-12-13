<?php
namespace Admin\Controller;

class SafetyController extends BaseController
{
    /**
     * 行业分类管理：hyfl
     */
    public function hyfl()
    {
        $where = array();
        if($key = I('get.key')){
            $where['name'] = array('like',"%$key%");
        }
        $model = M('Aj_category');
        $data = $model->where($where)->order('id desc')->select();
        $this->assign('data',$data);
        $this->display();
    }
    public function hyfl_add()
    {
        if(IS_POST){
            $data['name'] = I('post.name');
            $model = M('Aj_category');
            if($id = $model->add($data)){
                $this->show("
                        <script>
                          alert('操作成功！');
                          window.location.href='__URL__/hyfl';
                        </script>"
                );
                exit;
            }else{
                $this->show("
                        <script>
                          alert('操作失败！');
                          window.location.href='__URL__/hyfl';
                        </script>"
                );
            }
        }
        $this->display();
    }
    public function hyfl_edit(){
        $id = I('get.id');
        $info['name'] = I('post.name');
        $model = M('Aj_category');
        $data = $model->where("id = '$id'")->find();
        $this->assign('data',$data);
        if(IS_POST){
            if($model->where("id = '$id'")->save($info) !== FALSE){
                $this->show("
                        <script>
                          alert('操作成功！');
                          window.location.href='__URL__/hyfl';
                        </script>"
                );
                exit;
            }else{
                $this->show("
                        <script>
                          alert('操作失败！');
                          window.location.href='__URL__/hyfl';
                        </script>"
                );
            }
        }
        $this->display();
    }
    public function hyfl_del(){
        $id = I('get.id');
        $model = M('Aj_category');
        if($model->where("id = '$id'")->delete() !== FALSE){
            $this->show("
                        <script>
                          alert('操作成功！');
                          window.location.href='__URL__/hyfl';
                        </script>"
            );
            exit;
        }else{
            $this->show("
                        <script>
                          alert('操作失败！');
                          window.location.href='__URL__/hyfl';
                        </script>"
            );
        }
        $this->display();
    }
    /**
     * 危险级别管理：wxjb
     */
    public function wxjb()
    {
        $where = array();
        if($key = I('get.key')){
            $where['name'] = array('like',"%$key%");
        }
        $model = M('Aj_wxjb');
        $data = $model->where($where)->order('id desc')->select();
        $this->assign('data',$data);
        $this->display();
    }
    public function wxjb_add()
    {
        if(IS_POST){
            $data['name'] = I('post.name');
            $model = M('Aj_wxjb');
            if($id = $model->add($data)){
                $this->show("
                        <script>
                          alert('操作成功！');
                          window.location.href='__URL__/wxjb';
                        </script>"
                );
                exit;
            }else{
                $this->show("
                        <script>
                          alert('操作失败！');
                          window.location.href='__URL__/wxjb';
                        </script>"
                );
            }
        }
        $this->display();
    }
    public function wxjb_edit(){
        $id = I('get.id');
        $info['name'] = I('post.name');
        $model = M('Aj_wxjb');
        $data = $model->where("id = '$id'")->find();
        $this->assign('data',$data);
        if(IS_POST){
            if($model->where("id = '$id'")->save($info) !== FALSE){
                $this->show("
                        <script>
                          alert('操作成功！');
                          window.location.href='__URL__/wxjb';
                        </script>"
                );
                exit;
            }else{
                $this->show("
                        <script>
                          alert('操作失败！');
                          window.location.href='__URL__/wxjb';
                        </script>"
                );
            }
        }
        $this->display();
    }
    public function wxjb_del(){
        $id = I('get.id');
        $model = M('Aj_wxjb');
        if($model->where("id = '$id'")->delete() !== FALSE){
            $this->show("
                        <script>
                          alert('操作成功！');
                          window.location.href='__URL__/wxjb';
                        </script>"
            );
            exit;
        }else{
            $this->show("
                        <script>
                          alert('操作失败！');
                          window.location.href='__URL__/wxjb';
                        </script>"
            );
        }
        $this->display();
    }
    /**
     * 危险因素管理：wxys
     */
    public function wxys()
    {
        $where = array();
        if($key = I('get.key')){
            $where['name'] = array('like',"%$key%");
        }
        $model = M('Aj_wxys');
        $data = $model->where($where)->order('id desc')->select();
        $this->assign('data',$data);
        $this->display();
    }
    public function wxys_add()
    {
        if(IS_POST){
            $data['name'] = I('post.name');
            $model = M('Aj_wxys');
            if($id = $model->add($data)){
                $this->show("
                        <script>
                          alert('操作成功！');
                          window.location.href='__URL__/wxys';
                        </script>"
                );
                exit;
            }else{
                $this->show("
                        <script>
                          alert('操作失败！');
                          window.location.href='__URL__/wxys';
                        </script>"
                );
            }
        }
        $this->display();
    }
    public function wxys_edit(){
        $id = I('get.id');
        $info['name'] = I('post.name');
        $model = M('Aj_wxys');
        $data = $model->where("id = '$id'")->find();
        $this->assign('data',$data);
        if(IS_POST){
            if($model->where("id = '$id'")->save($info) !== FALSE){
                $this->show("
                        <script>
                          alert('操作成功！');
                          window.location.href='__URL__/wxys';
                        </script>"
                );
                exit;
            }else{
                $this->show("
                        <script>
                          alert('操作失败！');
                          window.location.href='__URL__/wxys';
                        </script>"
                );
            }
        }
        $this->display();
    }
    public function wxys_del(){
        $id = I('get.id');
        $model = M('Aj_wxys');
        if($model->where("id = '$id'")->delete() !== FALSE){
            $this->show("
                        <script>
                          alert('操作成功！');
                          window.location.href='__URL__/wxys';
                        </script>"
            );
            exit;
        }else{
            $this->show("
                        <script>
                          alert('操作失败！');
                          window.location.href='__URL__/wxys';
                        </script>"
            );
        }
        $this->display();
    }
    /**
     * 人员规模管理：yygm
     */
    public function yygm()
    {
        $where = array();
        if($key = I('get.key')){
            $where['name'] = array('like',"%$key%");
        }
        $model = M('Aj_yygm');
        $data = $model->where($where)->order('id desc')->select();
        $this->assign('data',$data);
        $this->display();
    }
    public function yygm_add()
    {
        if(IS_POST){
            $data['name'] = I('post.name');
            $model = M('Aj_yygm');
            if($id = $model->add($data)){
                $this->show("
                        <script>
                          alert('操作成功！');
                          window.location.href='__URL__/yygm';
                        </script>"
                );
                exit;
            }else{
                $this->show("
                        <script>
                          alert('操作失败！');
                          window.location.href='__URL__/yygm';
                        </script>"
                );
            }
        }
        $this->display();
    }
    public function yygm_edit(){
        $id = I('get.id');
        $info['name'] = I('post.name');
        $model = M('Aj_yygm');
        $data = $model->where("id = '$id'")->find();
        $this->assign('data',$data);
        if(IS_POST){
            if($model->where("id = '$id'")->save($info) !== FALSE){
                $this->show("
                        <script>
                          alert('操作成功！');
                          window.location.href='__URL__/yygm';
                        </script>"
                );
                exit;
            }else{
                $this->show("
                        <script>
                          alert('操作失败！');
                          window.location.href='__URL__/yygm';
                        </script>"
                );
            }
        }
        $this->display();
    }
    public function yygm_del(){
        $id = I('get.id');
        $model = M('Aj_yygm');
        if($model->where("id = '$id'")->delete() !== FALSE){
            $this->show("
                        <script>
                          alert('操作成功！');
                          window.location.href='__URL__/yygm';
                        </script>"
            );
            exit;
        }else{
            $this->show("
                        <script>
                          alert('操作失败！');
                          window.location.href='__URL__/yygm';
                        </script>"
            );
        }
        $this->display();
    }
    /**
     * 所属区域管理：ssqy
     * 前台图片路径需要重新处理
     */
    public function ssqy()
    {
        $where = array();
        if($key = I('get.key')){
            $where['name'] = array('like',"%$key%");
        }
        $model = M('Aj_ssqy');
        $data = $model->where($where)->order('id desc')->select();
        $this->assign('data',$data);
        $this->display();
    }
    public function ssqy_add()
    {
        if(IS_POST) {
            $rules = array(
                array('name', 'require', '名称必须填写', 1, '', 1),
                array('name', '0,10', '长度不能超过10个字符', 1, 'length', 1),
                array('content', 'require', '区域介绍必须填写', 1, '', 1),
                array('area_lng', 'require', '经度必须填写', 1, '', 1),
                array('area_lng', '0,15', '经度长度不能超过15个字符', 1, 'length', 1),
                array('area_lat', 'require', '纬度必须填写', 1, '', 1),
                array('area_lat', '0,15', '纬度长度不能超过15个字符', 1, 'length', 1),
            );
            $model = M('Aj_ssqy');
            $ret = $model->field('name,content,img,area_lng,area_lat')->validate($rules)->create(I('post.'), 1);
            if ($ret) {
                if ($lastId = $model->add()) {
                    if($_FILES['img']['error']===0){
                        // 上传图片到本地
                        import('ORG.Net.UploadFile');
                        $upload = new UploadFile();
                        $upload->maxSize = 1024*1024*10 ;
                        $upload->allowExts = array('jpg', 'gif', 'png', 'jpeg');
                        $upload->savePath = './Uploads/Safety/';
                        $upload->thumb = true;
                        $upload->thumbMaxWidth = '80';
                        $upload->thumbMaxHeight = '80';
                        $upload->autoSub = true;
                        $upload->subType = 'date';
                        $upload->thumbRemoveOrigin = true;
                        $upRet = $upload->upload();
                        // 图片信息写入数据库（写入之前去除  ./  ）
                        if($upRet){
                            $imgRet = $upload->getUploadFileInfo();
                            $savename = explode('/', $imgRet[0]['savename']);
                            $newSavename = $savename[0].'/thumb_'.$savename[1];
                            $savepath = $imgRet[0]['savepath'];
                            $newSavepath = substr($savepath,2);
                            $imgpath = $newSavepath.$newSavename;
                            $data['img'] = $imgpath;
                            $model->where("id='$lastId'")->save($data);
                        }
                    }
                    $this->show("
                    <script>
                        alert('添加成功');
                        window.location.href='/admin/Safety/ssqy';
                    </script>"
                    );
                }
            }
            $this->show("
                <script>
                    alert('添加失败：" . $model->getError() . "');
                    window.location.href='/admin/Safety/ssqy';
                </script>"
            );
        }
        $this->display();
    }
    public function ssqy_edit(){
        $id = I('get.id');
        $model = M('Aj_ssqy');
        $data = $model->find($id);
        $this->assign('data',$data);
        $oldImgPath = $data['img'];  // 先保存旧的图片数据库地址，为了删除本地图片使用
        if(IS_POST) {
            if($_FILES['img']['error']===0){  // 此时如果有图片修改
                // 先删除原来的本地图片
                unlink('./'.$oldImgPath); // 删除旧的本地图片
                // 上传图片到本地
                import('ORG.Net.UploadFile');
                $upload = new UploadFile();
                $upload->maxSize = 1024*1024*10 ;
                $upload->allowExts = array('jpg', 'gif', 'png', 'jpeg');
                $upload->savePath = './Uploads/Safety/';
                $upload->thumb = true;
                $upload->thumbMaxWidth = '80';
                $upload->thumbMaxHeight = '80';
                $upload->autoSub = true;
                $upload->subType = 'date';
                $upload->thumbRemoveOrigin = true;
                $upRet = $upload->upload();
                // 修改空的img字段
                if($upRet){
                    $imgRet = $upload->getUploadFileInfo();
                    $savename = explode('/', $imgRet[0]['savename']);
                    $newSavename = $savename[0].'/thumb_'.$savename[1];
                    $savepath = $imgRet[0]['savepath'];
                    $newSavepath = substr($savepath,2);
                    $imgpath = $newSavepath.$newSavename;
                    $newData['img'] = $imgpath;
                    if($model->where("id='$id'")->save($newData)){
                        $this->show("
                        <script>
                            alert('修改成功');
                            window.location.href='/admin/Safety/ssqy';
                        </script>"
                        );
                    }else{
                        $this->show("
                        <script>
                            alert('修改失败：" . $model->getError() . "');
                            window.location.href='/admin/Safety/ssqy';
                        </script>"
                        );
                    }
                }
            }
            $rules = array(
                array('name', 'require', '名称必须填写', 1, '', 2),
                array('name', '0,10', '长度不能超过10个字符', 1, 'length', 2),
                array('content', 'require', '区域介绍必须填写', 1, '', 2),
                array('area_lng', 'require', '经度必须填写', 1, '', 2),
                array('area_lng', '0,15', '经度长度不能超过15个字符', 1, 'length', 2),
                array('area_lat', 'require', '纬度必须填写', 1, '', 2),
                array('area_lat', '0,15', '纬度长度不能超过15个字符', 1, 'length', 2),
            );
            $model = M('Aj_ssqy');
            $ret = $model->field('name,content,img,area_lng,area_lat')->validate($rules)->create(I('post.'), 2);
            if ($ret) {
                if ($model->where("id='$id'")->save()) {
                    $this->show("
                        <script>
                            alert('修改成功');
                            window.location.href='/admin/Safety/ssqy';
                        </script>"
                    );
                }else{
                    $this->show("
                        <script>
                            alert('修改失败：" . $model->getError() . "');
                            window.location.href='/admin/Safety/ssqy';
                        </script>"
                    );
                }
            }
        }
        $this->display();
    }
    public function ssqy_del(){
        $id = I('get.id');
        $model = M('Aj_ssqy');
        $data = $model->find($id);
        // 先删除本地图片
        unlink('./'.$data['img']);
        // 再删除数据库数据
        if($model->where("id = '$id'")->delete() !== FALSE){
            $this->show("
                <script>
                  alert('操作成功！');
                  window.location.href='/admin/Safety/ssqy';
                </script>"
            );
            exit;
        }else{
            $this->show("
                <script>
                  alert('操作失败！');
                  window.location.href='/admin/Safety/ssqy';
                </script>"
            );
        }
        $this->display();
    }
    /**
     * 公司属性管理：
     */
	public function gssx()
	{
	    $where = array();
	    if($key = I('get.key')){
            $where['a.qymc'] = array('like',"%$key%");
        }
        $model = M('Aj_comcat');
        $_data = $model
            ->field('a.*,b.name hyflname,c.name wxdjname,d.name rygmname,e.name ssqyname')
            ->alias('a')
            ->join('left join __AJ_CATEGORY__ b on a.hyfl_id=b.id')
            ->join('left join __AJ_WXJB__ c on a.wxdj_id=c.id')
            ->join('left join __AJ_YYGM__ d on a.rygm_id=d.id')
            ->join('left join __AJ_SSQY__ e on a.ssqy_id=e.id')
            ->where($where)
            ->order('id desc')
            ->select();
        foreach($_data as $k=>$v){
            $_data[$k]['wxys_id'] = explode(',', $v['wxys_id']);
            foreach($_data[$k]['wxys_id'] as $k1=>$v1){
                $wxysModel = M('Aj_wxys');
                $ret = $wxysModel->field('name')->find($v1);
                $_data[$k]['wxys_id'][$k1] = $ret['name'];
            }
            $_data[$k]['wxys_id'] = implode(',',$_data[$k]['wxys_id']);
        }
        $this->assign('data',$_data);
        $this->display();
	}
    public function gssx_add()
    {
        if(IS_POST){
            $data['bh'] = I('post.bh');
            $data['qymc'] = I('post.qymc');
            $data['lng'] = I('post.lng');
            $data['lat'] = I('post.lat');
            $data['hyfl_id'] = I('post.hyfl_id');
            $data['wxdj_id'] = I('post.wxdj_id');
            $data['wxys_id'] = implode(",",I('post.wxys_id'));
            $data['rygm_id'] = I('post.rygm_id');
            $data['ssqy_id'] = I('post.ssqy_id');
            $data['jjxz'] = I('post.jjxz');
            $data['zcdz'] = I('post.zcdz');
            $data['jyfw'] = I('post.jyfw');
            $data['dbfzr'] = I('post.dbfzr');
            $data['lxdh1'] = I('post.lxdh1');
            $data['glry'] = I('post.glry');
            $data['lxdh2'] = I('post.lxdh2');
            $data['pxzsl'] = I('post.pxzsl');
            $data['tzzy'] = I('post.tzzy');
            $data['sx'] = I('post.sx');
            $data['aqsc'] = I('post.aqsc');
            $data['hpsx'] = I('post.hpsx');
            $data['xfsx'] = I('post.xfsx');
            $data['zdmj'] = I('post.zdmj');
            $data['jzmj'] = I('post.jzmj');
            $data['cqxz'] = I('post.cqxz');
            $data['jcsj'] = I('post.jcsj');
            $data['cyry'] = I('post.cyry');
            $data['jzfq'] = I('post.jzfq');
            $data['ip'] = I('post.ip');
            $data['port'] = I('post.port');
            $data['jkusername'] = I('post.jkusername');
            $data['jkpassword'] = I('post.jkpassword');
            $data['channelnum'] = I('post.channelnum');
            $model = M('Aj_comcat');
            if($id = $model->add($data)){
                if($_FILES){
                    import('ORG.Net.UploadFile');
                    $upload = new UploadFile();
                    $upload->maxSize = 1024*1024*10 ;
                    $upload->allowExts = array('jpg', 'gif', 'png', 'jpeg');
                    $upload->savePath = './Uploads/images/Safety/gssx/';
                    $upload->thumb = true;
                    $upload->thumbPrefix = 'small_,big_';
                    $upload->thumbMaxWidth = '215,470';
                    $upload->thumbMaxHeight = '150,330';
                    $upload->autoSub = true;
                    $upload->subType = 'date';
                    $ret = $upload->upload();
                    if(!$ret) {
                        $this->error($upload->getErrorMsg());
                    }else{
                        $info = $upload->getUploadFileInfo();
                    }
                    foreach($info as $k=>$v){
                        $img[$k]['img'] = $v['savepath'].$v['savename'];
                        $tmp = explode('/',$v['savename']);
                        $tmp[1] = 'big_'.$tmp[1];
                        $tmp = implode('/',$tmp);
                        $img[$k]['bigimg'] = $v['savepath'].$tmp;
                        $tmp = explode('/',$v['savename']);
                        $tmp[1] = 'small_'.$tmp[1];
                        $tmp = implode('/',$tmp);
                        $img[$k]['smallimg'] = $v['savepath'].$tmp;
                        $img[$k]['comid'] = $id;
                    }
                    $imgModel = M('Aj_comimgs');
                    foreach($img as $k=>$v){
                        $imgModel->add($v);
                    }
                }
                $this->show("
                        <script>
                          alert('操作成功！');
                          window.location.href='/admin/Safety/gssx';
                        </script>"
                );
                exit;
            }else{
                $this->show("
                        <script>
                          alert('操作失败！');
                          window.location.href='/admin/Safety/gssx';
                        </script>"
                );
            }
        }
        // 获取行业分类
        $hyflModel = M('Aj_category');
        $hyflinfo = $hyflModel->select();
        // 获取危险级别
        $wxjbModel = M('Aj_wxjb');
        $wxjbinfo = $wxjbModel->select();
        // 获取危险因素
        $wxysModel = M('Aj_wxys');
        $wxysinfo = $wxysModel->select();
        // 获取人员规模
        $yygmModel = M('Aj_yygm');
        $yygminfo = $yygmModel->select();
        // 获取所属区域
        $ssqyModel=M('Aj_ssqy');
        $ssqyinfo = $ssqyModel->select();
        $this->assign(array(
            'hyflinfo'=>$hyflinfo,
            'wxjbinfo'=>$wxjbinfo,
            'wxysinfo'=>$wxysinfo,
            'yygminfo'=>$yygminfo,
            'ssqyinfo'=>$ssqyinfo,
        ));
        $this->display();
    }
    public function gssx_edit(){
        $id = I('get.id');
        // 获取公司属性
        $model = M('Aj_comcat');
        $info = $model->find($id);
        $this->assign('data',$info);
        // 获取公司图片
        $imgModel = M('Aj_comimgs');
        $imgData = $imgModel->where("comid='$id'")->select();
        $this->assign('imgData',$imgData);
        if(IS_POST){
            $data['bh'] = I('post.bh');
            $data['qymc'] = I('post.qymc');
            $data['lng'] = I('post.lng');
            $data['lat'] = I('post.lat');
            $data['hyfl_id'] = I('post.hyfl_id');
            $data['wxdj_id'] = I('post.wxdj_id');
            $data['wxys_id'] = implode(",",I('post.wxys_id')); // 数组转换字符串
            $data['rygm_id'] = I('post.rygm_id');
            $data['ssqy_id'] = I('post.ssqy_id');
            $data['jjxz'] = I('post.jjxz');
            $data['zcdz'] = I('post.zcdz');
            $data['jyfw'] = I('post.jyfw');
            $data['dbfzr'] = I('post.dbfzr');
            $data['lxdh1'] = I('post.lxdh1');
            $data['glry'] = I('post.glry');
            $data['lxdh2'] = I('post.lxdh2');
            $data['pxzsl'] = I('post.pxzsl');
            $data['tzzy'] = I('post.tzzy');
            $data['sx'] = I('post.sx');
            $data['aqsc'] = I('post.aqsc');
            $data['hpsx'] = I('post.hpsx');
            $data['xfsx'] = I('post.xfsx');
            $data['zdmj'] = I('post.zdmj');
            $data['jzmj'] = I('post.jzmj');
            $data['cqxz'] = I('post.cqxz');
            $data['jcsj'] = I('post.jcsj');
            $data['cyry'] = I('post.cyry');
            $data['jzfq'] = I('post.jzfq');
            $model = M('Aj_comcat');
            if($model->where("id = '$id'")->save($data) !== FALSE){
                if($_FILES){
                    import('ORG.Net.UploadFile');
                    $upload = new UploadFile();
                    $upload->maxSize = 1024*1024*10 ;
                    $upload->allowExts = array('jpg', 'gif', 'png', 'jpeg');
                    $upload->savePath = './Uploads/images/Safety/gssx/';
                    $upload->thumb = true;
                    $upload->thumbPrefix = 'small_,big_';
                    $upload->thumbMaxWidth = '215,470';
                    $upload->thumbMaxHeight = '150,330';
                    $upload->autoSub = true;
                    $upload->subType = 'date';
                    $ret = $upload->upload();
                    if(!$ret) {
                        $this->error($upload->getErrorMsg());
                    }else{
                        $info = $upload->getUploadFileInfo();
                    }
                    foreach($info as $k=>$v){
                        $img[$k]['img'] = $v['savepath'].$v['savename'];
                        $tmp = explode('/',$v['savename']);
                        $tmp[1] = 'big_'.$tmp[1];
                        $tmp = implode('/',$tmp);
                        $img[$k]['bigimg'] = $v['savepath'].$tmp;
                        $tmp = explode('/',$v['savename']);
                        $tmp[1] = 'small_'.$tmp[1];
                        $tmp = implode('/',$tmp);
                        $img[$k]['smallimg'] = $v['savepath'].$tmp;
                        $img[$k]['comid'] = $id;
                    }
                    $imgModel = M('Aj_comimgs');
                    foreach($img as $k=>$v){
                        $imgModel->add($v);
                    }
                }//上传|写表
                $this->show("
                    <script>
                      alert('操作成功！');
                      window.location.href='/admin/Safety/gssx';
                    </script>"
                );
                exit;
            }else{
                $this->show("
                    <script>
                      alert('操作失败！');
                      window.location.href='/admin/Safety/gssx';
                    </script>"
                );
            }
        }
        // 获取行业分类
        $hyflModel = M('Aj_category');
        $hyflinfo = $hyflModel->select();
        // 获取危险级别
        $wxjbModel = M('Aj_wxjb');
        $wxjbinfo = $wxjbModel->select();
        // 获取危险因素
        $wxysModel = M('Aj_wxys');
        $wxysinfo = $wxysModel->select();
        // 获取人员规模
        $yygmModel = M('Aj_yygm');
        $yygminfo = $yygmModel->select();
        // 获取所属区域
        $ssqyModel=M('Aj_ssqy');
        $ssqyinfo = $ssqyModel->select();
        // 获取图片
        $imgModel = M('Aj_comimgs');
        $imginfo = $imgModel->where("comid = '$id'")->select();
        $this->assign(array(
            'hyflinfo'=>$hyflinfo,
            'wxjbinfo'=>$wxjbinfo,
            'wxysinfo'=>$wxysinfo,
            'yygminfo'=>$yygminfo,
            'ssqyinfo'=>$ssqyinfo,
            'imginfo'=>$imginfo
        ));
        $this->display();
    }
    public function ajaxdelimg(){
	    $id = I('post.id');
        $imgModel = M('Aj_comimgs');
        $info = $imgModel->field('img,smallimg,bigimg')->find($id);
        foreach($info as $k=>$v){
            unlink($v);
        }
        $imgModel->where("id = '$id'")->delete();
    }
    public function gssx_del(){
        $id = I('get.id');
        $model = M('Aj_comcat');
        if($model->where("id = '$id'")->delete() !== FALSE){
            $imgModel = M('Aj_comimgs');
            $info = $imgModel->field('img,smallimg,bigimg')->where("comid = '$id'")->select();
            foreach($info as $k=>$v){
                foreach($v as $k1=>$v1){
                    unlink($v1);
                }
            }
            $imgModel->field('img,smallimg,bigimg')->where("comid = '$id'")->delete();
            $this->show("
                        <script>
                          alert('操作成功！');
                          window.location.href='/admin/Safety/gssx';
                        </script>"
            );
            exit;
        }else{
            $this->show("
                        <script>
                          alert('操作失败！');
                          window.location.href='/admin/Safety/gssx';
                        </script>"
            );
        }
        $this->display();
    }
    /**
     * 隐患排查治理
     */
    public function yhpc()
    {
        $where = array();
        if($key = I('get.key')){
            $where['b.qymc'] = array('like',"%$key%");
        }
        $model = M('Aj_ycpc');
        $data = $model
            ->field('a.*,b.qymc')
            ->alias('a')
            ->join('left join __AJ_COMCAT__ b on a.comid=b.id')
            ->where($where)
            ->order('id desc')
            ->select();
        $this->assign('data',$data);
        $this->display();
    }
    public function yhpc_add()
    {
        if(IS_POST||$_FILES) {
            $data['comid'] = I('post.comid');
            $data['chkdep'] = I('post.chkdep');
            $data['chktime'] = I('post.chktime');
            $data['rechkdep'] = I('post.rechkdep');
            $data['rechktime'] = I('post.rechktime');
            $data['danger'] = I('post.danger');
            $data['rec'] = I('post.rec');
            import('ORG.Net.UploadFile');
            $upload = new UploadFile();
            $upload->maxSize = 1024 * 1024 * 10;
            $upload->allowExts = array('jpg', 'gif', 'png', 'jpeg');
            $upload->savePath = './Uploads/images/Safety/yhpc/';
            $upload->thumb = true;
            $upload->thumbMaxWidth = '270';
            $upload->thumbMaxHeight = '170';
            $upload->thumbRemoveOrigin = false;
            $upload->autoSub = true;
            $upload->subType = 'date';
            $ret = $upload->upload();
            if (!$ret) {
                $this->error($upload->getErrorMsg());
            } else {
                $info = $upload->getUploadFileInfo();
            }
            // 获取原图路径$eximg[]
            foreach ($info as $k => $v) {
                $eximg[] = $v['savepath'] . $v['savename'];
            }
            // 获取缩略图路径$aa[]
            foreach ($info as $k => $v) {
                $tmp = explode('/', $v['savename']);
                $tmp[1] = 'thumb_' . $tmp[1];
                $tmp = implode('/', $tmp);
                $aa[] = $v['savepath'] . $tmp;
            }
            // 利用原图判断上传日期
            foreach ($eximg as $k => $v) {
                $tmppath = exif_read_data($v);
                $x = explode(':', date("Y:m:d", $tmppath['FileDateTime']));
                $y = explode(':', explode(' ', $tmppath['DateTime'])[0]);
                if ($x === $y) {
                    $tmpret[] = 1;
                } else {
                    $tmpret[] = 2;
                }
            }
            if (count($tmpret) == 1) {                      // 如果仅有隐患上传
                if ($tmpret[0] == 1) {                         // 如果上传符合规定
                    $data['danimg'] = $aa[0];  // 第一次上传可能会是隐患和复核都上传，也可能仅仅上传隐患
                    $data['recimg'] = $aa[1];
                    $model = M('Aj_ycpc');
                    if ($id = $model->add($data)) {
                        $this->show("
                            <script>
                              alert('操作成功！');
                              window.location.href='/admin/Safety/yhpc';
                            </script>"
                        );
                        exit;
                    } else {
                        $this->show("
                            <script>
                              alert('操作失败！');
                              window.location.href='/admin/Safety/yhpc';
                            </script>"
                        );
                        exit;
                    }
                } else {                                     // 如果上传不符合规定
                    $this->show("
                        <script>
                          alert('照片必须为当天拍摄！');
                          window.location.href='/admin/Safety/yhpc';
                        </script>"
                    );
                    exit;
                }
            } else {                                      // 如果同时上传了复核
                if ($tmpret[0] == 1 && $tmpret[1] == 1) {          // 如果上传复核规定
                    $data['danimg'] = $aa[0];  // 第一次上传可能会是隐患和复核都上传，也可能仅仅上传隐患
                    $data['recimg'] = $aa[1];
                    $model = M('Aj_ycpc');
                    if ($id = $model->add($data)) {
                        $this->show("
                            <script>
                              alert('操作成功！');
                              window.location.href='/admin/Safety/yhpc';
                            </script>"
                        );
                        exit;
                    } else {
                        $this->show("
                            <script>
                              alert('操作失败！');
                              window.location.href='/admin/Safety/yhpc';
                            </script>"
                        );
                    }
                } else {                                     // 如果上传不符合规定
                    $this->show("
                        <script>
                          alert('照片必须为当天拍摄！');
                          window.location.href='/admin/Safety/yhpc';
                        </script>"
                    );
                    exit;
                }
            }
        }
        // 获取企业名称
        $comModel = M('Aj_comcat');
        $com = $comModel->select();
        $this->assign('com',$com);
        $this->display();
    }
    public function yhpc_edit(){
        $id = I('get.id');
        $model = M('Aj_ycpc');
        $data = $model->find($id);
        $this->assign('data',$data);
        // 修改
        if(IS_POST||$_FILES) {
            $data['comid'] = I('post.comid');
            $data['chkdep'] = I('post.chkdep');
            $data['chktime'] = I('post.chktime');
            $data['rechkdep'] = I('post.rechkdep');
            $data['rechktime'] = I('post.rechktime');
            $data['danger'] = I('post.danger');
            $data['rec'] = I('post.rec');
            import('ORG.Net.UploadFile');
            $upload = new UploadFile();
            $upload->maxSize = 1024 * 1024 * 10;
            $upload->allowExts = array('jpg', 'gif', 'png', 'jpeg');
            $upload->savePath = './Uploads/images/Safety/yhpc/';
            $upload->thumb = true;
            $upload->thumbMaxWidth = '270';
            $upload->thumbMaxHeight = '170';
            $upload->thumbRemoveOrigin = false;
            $upload->autoSub = true;
            $upload->subType = 'date';
            $ret = $upload->upload();
            if (!$ret) {
                $this->error($upload->getErrorMsg());
            } else {
                $info = $upload->getUploadFileInfo();
            }
            // 获取原图路径$eximg[]
            foreach ($info as $k => $v) {
                $eximg[] = $v['savepath'] . $v['savename'];

            }
            // 获取缩略图路径$aa[]
            foreach ($info as $k => $v) {
                $tmp = explode('/', $v['savename']);
                $tmp[1] = 'thumb_' . $tmp[1];
                $tmp = implode('/', $tmp);
                $aa[] = $v['savepath'] . $tmp;
            }
            // 利用原图判断上传日期
            foreach ($eximg as $k => $v) {
                $tmppath = exif_read_data($v);
                $x = explode(':', date("Y:m:d", $tmppath['FileDateTime']));
                $y = explode(':', explode(' ', $tmppath['DateTime'])[0]);
                if ($x === $y) {
                    $tmpret[] = 1;
                } else {
                    $tmpret[] = 2;
                }
            }
            if ($tmpret[0] == 1) {                         // 如果上传符合规定
                $data['recimg'] = $aa[0];  // 第二次复核的时候肯定是上传复核照片
                $model = M('Aj_ycpc');
                if($model->where("id = '$id'")->save($data) !== FALSE) {
                    $this->show("
                        <script>
                          alert('操作成功！');
                          window.location.href='/admin/Safety/yhpc';
                        </script>"
                    );
                    exit;
                }else {
                    $this->show("
                        <script>
                          alert('操作失败！');
                          window.location.href='/admin/Safety/yhpc';
                        </script>"
                    );
                }
            }else {                                     // 如果上传不符合规定
                $this->show("
                    <script>
                      alert('照片必须为当天拍摄！');
                      window.location.href='/admin/Safety/yhpc';
                    </script>"
                );
                exit;
            }
        }
        // 获取企业名称
        $comModel = M('Aj_comcat');
        $com = $comModel->select();
        $this->assign('com',$com);
        $this->display();
    }
    public function yhpc_del(){
        $id = I('get.id');
        $model = M('Aj_ycpc');
        $img = $model->field('danimg,recimg')->find($id);
        foreach($img as $k=>$v){
            unlink($v);
        }
        if($model->where("id = '$id'")->delete() !== FALSE){
            $this->show("
                <script>
                  alert('操作成功！');
                  window.location.href='/admin/Safety/yhpc';
                </script>"
            );
            exit;
        }else{
            $this->show("
                <script>
                  alert('操作失败！');
                  window.location.href='/admin/Safety/yhpc';
                </script>"
            );
        }
        $this->display();
    }
    /**
     * 安全员网络：
     */
    public function net()
    {
        $where = array();
        if($key = I('get.key')){
            $where['concat(lng,lat,bdid,bdnameqy,bdnamedh)'] = array('like',"%$key%");
        }
        $model = M('Safety_net');
        $data = $model->where($where)->order('id desc')->select();
        $this->assign('data',$data);
        $this->display();
    }
    public function net_add()
    {
        $rules = array(
            array('lng','require','经度必须填写',1),
            array('lat','require','纬度必须填写',1),
            array('bdid','require','安全员姓名必须填写',1),
            array('bdid','1,20','安全员姓名长度不能超过20个字符',1,'length',1),
            array('bdnameqy','require','负责区域必须填写',1),
            array('bdnameqy','1,100','负责区域不能超过100个字符',1,'length',1),
            array('bdnamedh','require','联系方式必须填写',1),
            array('bdnamedh','1,20','联系方式不能超过20个字符',1,'length',1),
        );
        if(IS_POST){
            $model = M('Safety_net');
            if($model->field('lng,lat,bdid,bdnameqy,bdnamedh')->validate($rules)->create(I('post.'),1)){
                if($model->add()){
                    $this->show("
                        <script>
                            alert('操作成功！');
                            window.location.href = '/admin/Safety/net';
                        </script>
                    ");
                    exit;
                }
            }
            $this->show("
                <script>
                    alert('操作失败：".$model->getError()."');
                    window.location.href = '/admin/Safety/net';
                </script>
            ");
            exit;
        }
        $this->display();
    }
    public function net_edit(){
        $id = I('get.id');
        $model = M('Safety_net');
        $data = $model->find($id);
        $this->assign('data',$data);
        if(IS_POST){
            $rules = array(
                array('lng','require','经度必须填写',1),
                array('lat','require','纬度必须填写',1),
                array('bdid','require','安全员姓名必须填写',1),
                array('bdid','1,20','安全员姓名长度不能超过20个字符',1,'length',2),
                array('bdnameqy','require','负责区域必须填写',1),
                array('bdnameqy','1,100','负责区域不能超过100个字符',1,'length',2),
                array('bdnamedh','require','联系方式必须填写',1),
                array('bdnamedh','1,20','联系方式不能超过20个字符',1,'length',2),
            );
            $model = M('Safety_net');
            if($model->field('id,lng,lat,bdid,bdnameqy,bdnamedh')->validate($rules)->create(I('psot.'),2)){
                if($model->where("id='$id'")->save()){
                    $this->show("
                        <script>
                            alert('操作成功！');
                            window.location.href = '/admin/Safety/net';
                        </script>
                    ");
                    exit;
                }
            }
            $this->show("
                <script>
                    alert('操作失败：".$model->getError()."');
                    window.location.href = '/admin/Safety/net';
                </script>
            ");
            exit;
        }
        $this->display();
    }
    public function net_del(){
        $id = I('get.id');
        $model = M('Safety_net');
        $model->where("id='$id'")->delete();
echo <<<'JK'
<meta http-equiv='content-type' content="text/html;charset=utf-8"/>
<meta http-equiv="refresh" content="1;url=/admin/Safety/net"/>
JK;
    }
}
