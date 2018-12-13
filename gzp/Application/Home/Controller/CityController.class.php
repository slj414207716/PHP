<?php
namespace Home\Controller;

class CityController extends BaseController
{
	/* 首页
	 *
	 */
    public function index()
    {
        //$this->redirect('chengjianxiangmu');
        $this->display();
    }
    public function lst()
    {
        $this->redirect('index');
    }


	/* 城建项目
	 * 1.时序表
	 */
	public function chengjianxiangmu()
	{
        $model = M('city_citybuild');
        // 查找当前系统月份的最近3个月-标题用
        $titleMonth[] = date("2018-03");
        $titleMonth[] = date("2018-04");
        $titleMonth[] = date("2018-05");
        $titleMonth[] = date("2018-06");
        foreach($titleMonth as $k=>$v){
            $time[] = (int)substr($v,5,2);
        }
        // 查找当前系统月份的最近3个月-查找数据用
        $month[] = date("2018-03");
        $month[] = date("2018-04");
        $month[] = date("2018-05");
        $month[] = date("2018-06");
        $where['time'] = array('in',$month);
        $info = $model->where($where)->select();
        foreach($info as $k=>$v){
            $ninfo[$v['project']][$v['time']][] = $v;
        }
        foreach($ninfo as $k=>$v){
            foreach($v as $k1=>$v1){
                $tmp = array();
                foreach($v1 as $k2=>$v2){
                    $tmp['project'] = $v2['project'];
                    $tmp['responsible_department'] = $v2['responsible_department'];
                    $tmp['responsible_leadership'] = $v2['responsible_leadership'];
                    $tmp['time'] = $v2['time'];
                    $tmp['work_content'][] = $v2['work_content'];
                }
                $nninfo[$k][$k1] = $tmp;
            }
        }
        foreach($nninfo as $k=>$v){
            foreach($v as $k1=>$v1){
                $tmp1[$k]['project'] = $v1['project'];
                $tmp1[$k]['responsible_department'] = $v1['responsible_department'];
                $tmp1[$k]['responsible_leadership'] = $v1['responsible_leadership'];
//                $tmp1[$k]['time'][$v1['time']] = $v1['time'];
//                $tmp1[$k]['time'][$v1['time']] = $v1['work_content'];
                $tmp1[$k][$v1['time']] = $v1['work_content'];

            }
        }
        foreach($tmp1 as $k=>$v){
            $tmp2[$k]['project'] = $v['project'];
            $tmp2[$k]['responsible_department'] = $v['responsible_department'];
            $tmp2[$k]['responsible_leadership'] = $v['responsible_leadership'];
            $tmp2[$k]['2018-03'] = implode('<br />',$v['2018-05']);
            $tmp2[$k]['2018-04'] = implode('<br />',$v['2018-06']);
            $tmp2[$k]['2018-05'] = implode('<br />',$v['2018-05']);
            $tmp2[$k]['2018-06'] = implode('<br />',$v['2018-06']);
        }
        $this->assign(array(
            'data'=>$tmp2,
            'time'=>$time
        ));
        $this->display();
	}
    /*一村一景
     * 1.表格
     * 2.地图（经理）
     */
    public function yicunyijing()
    {
        $model = M('City_yicunyijing');
        $_data = $model->select();
        foreach($_data as $k=>$v){
            $tmp[$v['time']][] = $v;
        }
        foreach($tmp as $k=>$v){
            foreach($v as $k1=>$v1){
                $tmp2[$k]['time'] = $v1['time'];
                $tmp2[$k]['name'][] = $v1['name'];
            }
        }
        foreach($tmp2 as $k=>$v){
            $tmp3[$k]['time'] = $v['time'];
            $tmp3[$k]['name'] = implode('<br />',$v['name']);
        }
        $this->assign('data',$tmp3);
        $this->display();
    }
    /*绿化
     *1.公共绿地表
     *2.图形
     */
    public function lvhua()
    {
        // 获取起止年份
        $start_year = intval($_GET['start_year']);
        $end_year = intval($_GET['end_year']);
        if($start_year&&$end_year)
            $where['time'] = array('between',$start_year . ',' . $end_year);
        $model = M('City_lvhua');
        $data = $model->where($where)->select();
        $this->assign(array(
            'data'=>$data,
            'current_year'=>date('Y'),
        ));
        $this->display();
    }
    /*扫保
     *1.4页纸质数据
     *2.地图
     */
    public function saobao()
    {
        // 获取村ID
        $country_id = intval($_GET['country_id']);
        if(!$country_id)
        {
            $country_id = 1;
        }
        // 获取区域基本信息
        $country_info = M('Aj_ssqy')->select();
        if($country_info === FALSE)
        {
            $this->error('数据库错误：无法获取区域基本信息');
        }
        if(!$country_info)
        {
            $this->error('区域基本信息为空');
        }
        // 处理图片路径
        foreach($country_info as $m=>$n)
        {
            $country_info[$m]['img'] = __APP_PUBLIC__ . '/' . ltrim($n['img'], './');
        }
        // 获取批文列表
        $where_listen_list['is_show'] = array('eq', 1);
        $listen_list = M('land_listen_list')->where($where_listen_list)->select();
        if($listen_list === FALSE)
        {
            $this->error('数据库错误：无法获取批文列表');
        }
        if(!$listen_list)
        {
            $this->error('批文列表为空');
        }
        // 按分类ID分组
        foreach($listen_list as $m=>$n)
        {
            $listen_list_tmp[ $n['category_id'] ][] = $n;
        }
        $listen_list = $listen_list_tmp;
        unset($listen_list_tmp);


        $this->assign('country_id', $country_id);
        $this->assign('country_data_json', json_encode($country_info));
        $this->assign('listen_list_json', json_encode($listen_list));


        // 主干路
        $zhuganModel = M('City_saobao_zhugan');
        $zhugandata = $zhuganModel->select();
        // 果皮箱、垃圾箱、垃圾槽数量
        $shuliangModel = M('City_saobao_shuliang');
        $shuliangdata = $shuliangModel->select();
        // 街道环卫车辆
        $carModel = M('City_saobao_car');
        $cardata = $carModel->select();
        // 环卫人员
        $renyuanModel = M('City_saobao_renyuan');
        $renyuandata = $renyuanModel->select();
        $this->assign(array(
            'zhugandata'=>$zhugandata,
            'shuliangdata'=>$shuliangdata,
            'cardata'=>$cardata,
            'renyuandata'=>$renyuandata,
        ));
        $this->display();
    }
    /*违建
     *1.excel
     */
    public function weijian()
    {
        $model = M('City_weijian');
        $data = $model->select();
        $this->assign('data',$data);
        $this->display();
    }
    /*公路
     *1.1页纸+微信文字
     *2.地图（经理）
     */
    public function gonglu()
    {
        $model = M('City_gonglu');
        $data = $model->select();
        $this->assign('data',$data);
        $this->assign('no','--');
        $this->display();
    }

    /*革镇堡地类统计（合计）
             *
             */
    public function heji()
    {
        // 获取起止年份
        $start_year = intval($_GET['start_year']);
        $end_year = intval($_GET['end_year']);
        // 从通用数据表获取数据
        $Common = new CommonAction();
        $get_data = $Common->get_universal_data(9, $start_year, $end_year);
        // 整理数据（用于渲染图标）
        foreach($get_data['details'] as $m=>$n)
        {
            // 年份列表
            $country_list[] = $n['name'];
            // 指标列表
            $data_list[] = $n['value'];
        }
        $data_json = array(
            'name' => $get_data['name'],
            'data_class' => $country_list,
            'data_value' => $data_list
        );

        //dump($country_list);
        $this->assign('current_year', date('Y'));
        $this->assign('current_start_year', $start_year);
        $this->assign('current_end_year', $end_year);
        $this->assign('data', $get_data);
        $this->assign('data_json', json_encode($data_json));
        $this->display();
    }

    public function anzishan(){
//        echo '鞍子山';
        $this->display();
    }
    public function xiajiahezi(){
//        echo '夏家河子';
        $this->display();
    }
    public function hougecun(){
//        echo '后革村';
        $this->display();
    }
    public function zhonggecun(){
//        echo '中革村';
        $this->display();
    }
    public function yangquanzi(){
//        echo '羊圈子';
        $this->display();
    }
    public function qipanzi(){
//        echo '棋盘子';
        $this->display();
    }

    /**
     * Tesx
     * @author vincent
     * @date
     * @args
     */
    public function getdata(){
        $startyear = I('startyear');
        $endyear = I('endyear');
        if($startyear&&$endyear)
            $where['time'] = array('between',$startyear . ',' . $endyear);
        $model = M('City_lvhua');
        $data = $model->where($where)->select();
        $array = [
            'result'=>true,
            'info'=>$data,
            'message'=>'成功'
        ];
        $this->ajaxReturn($array,'json');
    }

    // 部门建议
    public function feedback()
    {
        $this->display();
    }
    // 交通公路详情
    public function jiaotongxiangqing(){
        $this->display();
    }
    // 物业管理
    public function wuyeguanli(){
        $this->display();
    }
    /**
     * 城市安全
     */
    public function chengshisafe(){
        $where = array();
        if($key=I('get.key')){
            $where['concat(title,content,time)'] = array('like',"%$key%");
        }
        $where['childid'] = 198;
        $model = M('Safety_xwlb');
        $data = $model->where($where)->order('id desc')->select();
        $this->assign('data',$data);
        $this->display();
    }
    public function chengshisafexq(){
        $id = I('get.id');
        $model = M('Safety_xwlb');
        $data = $model->find($id);
        $this->assign('data',$data);
        $this->display();
    }
    public function chengshisafeadd(){
        if(IS_POST){
            $data['time'] = I('post.time');
            $data['childid'] = I('post.childid');
            $data['title'] = I('post.title');
            $data['content'] = I('post.content');
            $model = M('Safety_xwlb');
            if($model->add($data)){
                $this->show("
                    <script>
                        alert('操作成功!');
                        window.location.href='/index/City/chengshisafe';
                    </script>"
                );
                exit;
            }else{
                $this->show("
                    <script>
                        alert('添加失败：".$this->model->getError()."');
                        window.location.href='/index/City/chengshisafe';
                    </script>"
                );
                exit;
            }
        }
        $this->display();
    }
    public function chengshisafeedit(){
        $id = I('get.id');
        $model = M('Safety_xwlb');
        $data = $model->find($id);
        $this->assign('data',$data);
        if(I('post.title')){
            $eData['title'] = I('post.title');
        }
        if(I('post.content')){
            $eData['content'] = I('post.content');
        }
        if(IS_POST){
            if($model->where("id='$id'")->save($eData)){
                $this->show("
                <script>
                    alert('操作成功!');
                    window.location.href='/index/City/chengshisafe';
                </script>"
                );
                exit;
            }else{
                $this->show("
                <script>
                    alert('添加失败：".$this->model->getError()."');
                    window.location.href='/index/City/chengshisafe';
                </script>"
                );
                exit;
            }
        }
        $this->display();
    }
    public function chengshisafedel(){
        $id = I('get.id');
        $model = M('Safety_xwlb');
        if($model->where("id='$id'")->delete()){
            $this->show("
                <script>
                    alert('操作成功!');
                    window.location.href='/index/City/chengshisafe';
                </script>"
            );
            exit;
        }else{
            $this->show("
                <script>
                    alert('添加失败：".$this->model->getError()."');
                    window.location.href='/index/City/chengshisafe';
                </script>"
            );
            exit;
        }
    }
}
