<?php
namespace Home\Controller;

use Common\Page;

class SafetyController extends BaseController
{
	// DADDY : comjk - exclude auth check

	/* 首页
	 *
	 */
	public function index()
	{
		//$this->redirect('renwugongshi');
        $this->display();
    }
    public function lst()
    {
        $this->redirect('index');
    }


	/* 摄像头列表
	 *
	 */
	public function video_list()
	{
		$this->display();
	}


	/**
	 * 大区域页
	 */
	public function whole_map()
	{
		// 给区域地图用
		$model = M('Aj_ssqy');
		$data  = $model->select();
		// 处理图片路径
		foreach ($data as $m => $n) {
			$data[$m]['img'] = __APP_PUBLIC__ . '/' . ltrim($n['img'], './');
		}
		$this->assign('da_json', json_encode($data));
		$this->assign('da', $data);

		// 获取安全信息综合检查筛选条件
		// 获取所属行业
		$catModel = M('Aj_category');
		$catinfo  = $catModel->select();
		// 获取危险等级
		$wxjbModel = M('Aj_wxjb');
		$wxjbinfo  = $wxjbModel->select();
		// 获取危险因素
		$wxysModel = M('Aj_wxys');
		$wxysinfo  = $wxysModel->select();
		// 获取人员规模
		$yygmModel = M('Aj_yygm');
		$yygminfo  = $yygmModel->select();
		// 获取所属区域
		$ssqyModel = M('Aj_ssqy');
		$ssqyinfo  = $ssqyModel->select();
		// 获取企业列表
		$where = array();
		// 单条件
		$keyword = I('post.keyword');
		if ($keyword) {
			$where['a.qymc'] = array('like', "%$keyword%");
			$this->assign('gjz', $keyword);
		}
		// 多条件
		$catid = I('get.catid');
		if ($catid) $where['d.id'] = array('eq', $catid);
		$wxjbid = I('get.wxjbid');
		if ($wxjbid) $where['b.id'] = array('eq', $wxjbid);
		$wxysid = I('get.wxysid');
		if ($wxysid) $where['a.wxys_id'] = array('like', "%$wxysid%");
		$yygmid = I('get.yygmid');
		if ($yygmid) $where['e.id'] = array('eq', $yygmid);
		$ssqyid = I('get.ssqyid');
		if ($ssqyid) $where['c.id'] = array('eq', $ssqyid);
		$comcatModel = M('Aj_comcat');
		$count       = $comcatModel->field('a.id,a.qymc,a.bh,a.wxys_id,b.name wxdjname,c.name ssqyname,d.name catname,e.name ryname')
			->alias('a')->join('left join __AJ_WXJB__ b on a.wxdj_id=b.id')->join('left join __AJ_SSQY__ c on a.ssqy_id=c.id')
			->join('left join __AJ_CATEGORY__ d on a.hyfl_id=d.id')->join('left join __AJ_YYGM__ e on a.rygm_id=e.id')->where($where)
			->count();
		import('ORG.Util.Page');
		$Page = new Page($count, 5);
		$Page->setConfig('prev', '上一页');
		$Page->setConfig('next', '下一页');
		$pag   = $Page->show();
		$_data = $comcatModel->field('a.id,a.qymc,a.bh,a.wxys_id,b.name wxdjname,c.name ssqyname,d.name catname,e.name ryname')->alias('a')
			->join('left join __AJ_WXJB__ b on a.wxdj_id=b.id')->join('left join __AJ_SSQY__ c on a.ssqy_id=c.id')
			->join('left join __AJ_CATEGORY__ d on a.hyfl_id=d.id')->join('left join __AJ_YYGM__ e on a.rygm_id=e.id')->where($where)
			->limit($Page->firstRow . ',' . $Page->listRows)->order('a.id desc')->select();
		foreach ($_data as $k => $v) {
			$_data[$k]['wxys_id'] = explode(',', $v['wxys_id']);
			foreach ($_data[$k]['wxys_id'] as $k1 => $v1) {
				$wxysModel                 = M('Aj_wxys');
				$ret                       = $wxysModel->field('name')->find($v1);
				$_data[$k]['wxys_id'][$k1] = $ret['name'];
			}
			$_data[$k]['wxys_id'] = implode(',', $_data[$k]['wxys_id']);
		}
		$this->assign(array(
			'catinfo'  => $catinfo,
			'wxjbinfo' => $wxjbinfo,
			'wxysinfo' => $wxysinfo,
			'yygminfo' => $yygminfo,
			'ssqyinfo' => $ssqyinfo,
			'data'     => $_data,
			'pag'      => $pag,
		));
		$this->display();
	}

	public function ajaxGetCom()
	{
		$catid       = I('get.catid');
		$wxjbid      = I('get.wxjbid');
		$wxysid      = I('get.wxysid');
		$yygmid      = I('get.yygmid');
		$ssqyid      = I('get.ssqyid');
		$comcatModel = M('Aj_comcat');
		$where       = array();
		if ($catid) $where['a.hyfl_id'] = $catid;
		if ($wxjbid) $where['a.wxdj_id'] = $wxjbid;
		if ($wxysid) $where['a.wxys_id'] = array('like', "%$wxysid%");
		if ($yygmid) $where['a.rygm_id'] = $yygmid;
		if ($ssqyid) $where['a.ssqy_id'] = $ssqyid;

		$count = $comcatModel->field('a.id,a.qymc,a.bh,a.wxys_id,b.name wxdjname,c.name ssqyname,d.name catname,e.name ryname')->alias('a')
			->join('left join __AJ_WXJB__ b on a.wxdj_id=b.id')->join('left join __AJ_SSQY__ c on a.ssqy_id=c.id')
			->join('left join __AJ_CATEGORY__ d on a.hyfl_id=d.id')->join('left join __AJ_YYGM__ e on a.rygm_id=e.id')->where($where)
			->count();
		import('ORG.Util.Page');
		$Page = new Page($count, 5);
		$Page->setConfig('prev', '上一页');
		$Page->setConfig('next', '下一页');
		$pag = $Page->show();

		$_data = $comcatModel->field('a.id,a.qymc,a.bh,a.wxys_id,b.name wxdjname,c.name ssqyname,d.name catname,e.name ryname')->alias('a')
			->join('left join __AJ_WXJB__ b on a.wxdj_id=b.id')->join('left join __AJ_SSQY__ c on a.ssqy_id=c.id')
			->join('left join __AJ_CATEGORY__ d on a.hyfl_id=d.id')->join('left join __AJ_YYGM__ e on a.rygm_id=e.id')->where($where)
			->limit($Page->firstRow . ',' . $Page->listRows)->order('a.id desc')->select();
		foreach ($_data as $k => $v) {
			$_data[$k]['wxys_id'] = explode(',', $v['wxys_id']);
			foreach ($_data[$k]['wxys_id'] as $k1 => $v1) {
				$wxysModel                 = M('Aj_wxys');
				$ret                       = $wxysModel->field('name')->find($v1);
				$_data[$k]['wxys_id'][$k1] = $ret['name'];
			}
			$_data[$k]['wxys_id'] = implode(',', $_data[$k]['wxys_id']);
		}
		$data['pag']  = $pag;
		$data['data'] = $_data;
		echo json_encode($data);
	}

	/**
	 * 大区域页引入筛选部分
	 */
	public function comlist()
	{
		// 获取安全信息综合检查筛选条件
		// 获取所属行业
		$catModel = M('Aj_category');
		$catinfo  = $catModel->select();
		// 获取危险等级
		$wxjbModel = M('Aj_wxjb');
		$wxjbinfo  = $wxjbModel->select();
		// 获取危险因素
		$wxysModel = M('Aj_wxys');
		$wxysinfo  = $wxysModel->select();
		// 获取人员规模
		$yygmModel = M('Aj_yygm');
		$yygminfo  = $yygmModel->select();
		// 获取所属区域
		$ssqyModel = M('Aj_ssqy');
		$ssqyinfo  = $ssqyModel->select();
		// 获取企业列表
		$where = array();
		// 单条件
		$keyword = I('post.keyword');
		if ($keyword) {
			$where['a.qymc'] = array('like', "%$keyword%");
			$this->assign('gjz', $keyword);
		}
		// 多条件
		$catid = I('get.catid');
		if ($catid != 999 && $catid != '') $where['d.id'] = array('eq', $catid);
		$wxjbid = I('get.wxjbid');
		if ($wxjbid != 999 && $wxjbid != '') $where['b.id'] = array('eq', $wxjbid);
		$wxysid = I('get.wxysid');
		if ($wxysid != 999 && $wxysid != '') $where['a.wxys_id'] = array('like', "%$wxysid%");
		$yygmid = I('get.yygmid');
		if ($yygmid != 999 && $yygmid != '') $where['e.id'] = array('eq', $yygmid);
		$ssqyid = I('get.ssqyid');
		if ($ssqyid != 999 && $ssqyid != '') $where['c.id'] = array('eq', $ssqyid);
		$comcatModel = M('Aj_comcat');
		$count       = $comcatModel->field('a.id,a.qymc,a.bh,a.wxys_id,b.name wxdjname,c.name ssqyname,d.name catname,e.name ryname')
			->alias('a')->join('left join __AJ_WXJB__ b on a.wxdj_id=b.id')->join('left join __AJ_SSQY__ c on a.ssqy_id=c.id')
			->join('left join __AJ_CATEGORY__ d on a.hyfl_id=d.id')->join('left join __AJ_YYGM__ e on a.rygm_id=e.id')->where($where)
			->count();
		import('ORG.Util.Page');
		$Page = new Page($count, 5);
		$Page->setConfig('prev', '上一页');
		$Page->setConfig('next', '下一页');
		$pag   = $Page->show();
		$_data = $comcatModel->field('a.id,a.qymc,a.bh,a.wxys_id,b.name wxdjname,c.name ssqyname,d.name catname,e.name ryname,a.ip,a.port,a.jkusername,a.jkpassword,a.channelnum')
			->alias('a')->join('left join __AJ_WXJB__ b on a.wxdj_id=b.id')->join('left join __AJ_SSQY__ c on a.ssqy_id=c.id')
			->join('left join __AJ_CATEGORY__ d on a.hyfl_id=d.id')->join('left join __AJ_YYGM__ e on a.rygm_id=e.id')->where($where)
			->limit($Page->firstRow . ',' . $Page->listRows)->order('a.id desc')->select();
		foreach ($_data as $k => $v) {
			$_data[$k]['wxys_id'] = explode(',', $v['wxys_id']);
			foreach ($_data[$k]['wxys_id'] as $k1 => $v1) {
				$wxysModel                 = M('Aj_wxys');
				$ret                       = $wxysModel->field('name')->find($v1);
				$_data[$k]['wxys_id'][$k1] = $ret['name'];
			}
			$_data[$k]['wxys_id'] = implode(',', $_data[$k]['wxys_id']);
		}
		$this->assign(array(
			'catinfo'  => $catinfo,
			'wxjbinfo' => $wxjbinfo,
			'wxysinfo' => $wxysinfo,
			'yygminfo' => $yygminfo,
			'ssqyinfo' => $ssqyinfo,
			'data'     => $_data,
			'pag'      => $pag,
		));
		$this->display();
	}

	/**
	 * 地图（引用百度地图原页）、公司页
	 */
	public function aqsc()
	{
		// 左边地图
		$ssqy                  = I('get.ssqy');
		$where_area_info['id'] = array('eq', $ssqy);
		$area_info             = M('aj_ssqy')->where($where_area_info)->find();
		$lng                   = $area_info['area_lng'];
		$lat                   = $area_info['area_lat'];
		$this->assign(array(
			'lng' => $lng,
			'lat' => $lat,
		));
		// 右边公司
		// 获取安全信息综合检查筛选条件
		// 获取所属行业
		$catModel = M('Aj_category');
		$catinfo  = $catModel->select();
		// 获取危险等级
		$wxjbModel = M('Aj_wxjb');
		$wxjbinfo  = $wxjbModel->select();
		// 获取危险因素
		$wxysModel = M('Aj_wxys');
		$wxysinfo  = $wxysModel->select();
		// 获取人员规模
		$yygmModel = M('Aj_yygm');
		$yygminfo  = $yygmModel->select();
		// 获取所属区域
		$ssqyModel = M('Aj_ssqy');
		$ssqyinfo  = $ssqyModel->select();
		// 获取企业列表
		$comcatModel = M('Aj_comcat');
		$cominfo     = $comcatModel->field('')->select();
		$this->assign(array(
			'catinfo'  => $catinfo,
			'wxjbinfo' => $wxjbinfo,
			'wxysinfo' => $wxysinfo,
			'yygminfo' => $yygminfo,
			'ssqyinfo' => $ssqyinfo,
			'cominfo'  => $cominfo,
		));
		$catid  = I('get.catid');
		$wxjbid = I('get.wxjbid');
		$wxysid = I('get.wxysid');
		$yygmid = I('get.yygmid');
		$where  = array();
		if ($catid) $where['a.hyfl_id'] = $catid;
		if ($wxjbid) $where['a.wxdj_id'] = $wxjbid;
		if ($wxysid) $where['a.wxys_id'] = array('like', "%$wxysid%");
		if ($yygmid) $where['a.rygm_id'] = $yygmid;
		$where['a.ssqy_id'] = $ssqy;

		$count = $comcatModel->field('a.id,a.qymc,a.bh,a.wxys_id,b.name wxdjname,c.name ssqyname,d.name catname,e.name ryname')->alias('a')
			->join('left join __AJ_WXJB__ b on a.wxdj_id=b.id')->join('left join __AJ_SSQY__ c on a.ssqy_id=c.id')
			->join('left join __AJ_CATEGORY__ d on a.hyfl_id=d.id')->join('left join __AJ_YYGM__ e on a.rygm_id=e.id')->where($where)
			->count();
		import('ORG.Util.Page');
		$Page = new Page($count, 5);
		$Page->setConfig('prev', '上一页');
		$Page->setConfig('next', '下一页');
		$pag = $Page->show();

		$data = $comcatModel->field('a.id,a.qymc,b.name wxdjname,c.name ssqyname,a.ip,a.port,a.jkusername,a.jkpassword,a.channelnum')
			->alias('a')->join('left join __AJ_WXJB__ b on a.wxdj_id=b.id')->join('left join __AJ_SSQY__ c on a.ssqy_id=c.id')
			->where($where)->limit($Page->firstRow . ',' . $Page->listRows)->order('a.id desc')->select();
		$this->assign(array(
			'data' => $data,
			'pag'  => $pag,
		));
		$this->display();
	}

	/**
	 * 百度地图原页
	 */
	public function company()
	{
		$comcatModel = M('Aj_comcat');
		$data        = $comcatModel->field('id,lng,lat,qymc,zcdz,ip,port,jkusername,jkpassword,channelnum')->select();
		//        dump($data);
		foreach ($data as $m => $n) {
			//            $data[$m]['url'] = $n['id'];
			$data[$m]['url'] = '/jiankong/index.html?company_id=' . $n['id'] . '&ip=' . $n['ip'] . '&port=' . $n['port'] . '&jkusername=' . $n['jkusername'] . '&jkpassword=' . $n['jkpassword'] . '&channelnum=' . $n['channelnum'];
			unset($data[$m]['id']);
			$data[$m]['id'] = $n['qymc'];
			unset($data[$m]['qymc']);
			$data[$m]['name'] = $n['zcdz'];
			unset($data[$m]['zcdz']);
		}
		$this->assign('data', json_encode($data));
		$this->display();
	}

	/**
	 * 监控页
	 */
	public function comjk()
	{
		$id = I('get.id');
		// 公司属性
		$comcatModel = M('Aj_comcat');
		$comcatinfo  = $comcatModel->field('a.*,b.name catname,c.name rygmname,d.name wxjbname')->alias('a')
			->join('left join __AJ_CATEGORY__ b on a.hyfl_id=b.id')->join('left join __AJ_YYGM__ c on a.rygm_id=c.id')
			->join('left join __AJ_WXJB__ d on a.wxdj_id=d.id')->where("a.id = '$id'")->find();
		// 公司图片
		$comimgsModel = M('Aj_comimgs');
		$comimgsinfo  = $comimgsModel->where("comid = '$id'")->select();
		// 处理图片路径
		foreach ($comimgsinfo as $m => $n) {
			$comimgsinfo[$m]['img']      = '/' . ltrim($n['img'], './');
			$comimgsinfo[$m]['smallimg'] = '/' . ltrim($n['smallimg'], './');
			$comimgsinfo[$m]['bigimg']   = '/' . ltrim($n['bigimg'], './');
		}
		// 隐患排查
		$ycpcModel = M('Aj_ycpc');
		$ycpcinfo  = $ycpcModel->where("comid = '$id'")->select();
		// 循环处理数据
		foreach ($ycpcinfo as $m => $n) {
			// 处理空字段
			if (!$n['rechkdep']) {
				$ycpcinfo[$m]['rechkdep'] = '--';
			}
			if (!$n['rechktime']) {
				$ycpcinfo[$m]['rechktime'] = '--';
			} else {
				$ycpcinfo[$m]['rechktime'] = strtok($n['rechktime'], ' ');
			}
			// 处理图片路径
			if ($n['danimg']) {
				$ycpcinfo[$m]['danimg'] = '/' . ltrim($n['danimg'], './');
			} else {
				$ycpcinfo[$m]['danimg'] = '/Uploads/images/Safety/yhpc/no.jpg';
			}
			if ($n['recimg']) {
				$ycpcinfo[$m]['recimg'] = '/' . ltrim($n['recimg'], './');
			} else {
				$ycpcinfo[$m]['recimg'] = '/Uploads/images/Safety/yhpc/no.jpg';
			}
		}
		$data = array(
			'data' => $comcatinfo,
			'img'  => $comimgsinfo,
			'ycpc' => $ycpcinfo,
		);
		header('Access-Control-Allow-Origin:*');
		echo json_encode($data);
		//$this->assign($data);
		//$this->display();
	}


	/* 调用摄像头
	 *
	 */
	public function video()
	{
		$this->display();
	}

	public function company1()
	{
		$this->display();
	}

	public function jk_demo()
	{
		$this->display();
	}

	/**
	 * 部门建议及领导批示
	 */
	// 部门建议
	public function feedback()
	{
		$this->display();
	}

	// 上报列表
	public function advicelist()
	{
		$model = M('Department_advice');
		$data  = $model->where("list_id='安全生产'")->order(array(
			'status' => desc,
			'id'     => desc,
		))->select();
		$this->assign('data', $data);
		$this->display();
	}

	// 上报列表中的建议内容
	public function advicelistxq()
	{
		$id    = I('get.id');
		$model = M('Department_advice');
		$data  = $model->find($id);
		$this->assign('data', $data['content']);
		$this->display();
	}

	// 上报列表中的回复内容
	public function advicelisthf()
	{
		$id    = I('get.id');
		$model = M('Department_advice');
		$data  = $model->find($id);
		$this->assign('data', $data['reply']);
		$this->display();
	}

	/**
	 * 区内重大安全目标工作（列表）
	 * 只显示当月的
	 */
	public function anquanmubiao()
	{
		$start_year  = (int)I('get.start_year');
		$start_month = (int)I('get.start_month');
		$end_year    = (int)I('get.end_year');
		$end_month   = (int)I('get.end_month');
		$where1      = array();
		if ($start_year) {
			$where1['a.year'] = array('egt', $start_year);
		}
		if ($end_year) {
			$where1['a.year'] = array('elt', $end_year);
		}
		if ($start_year && $end_year) {
			$where1['a.year'] = array('between', array($start_year, $end_year));
		}
		$where2 = array();
		if ($start_month) {
			$where2['a.time'] = array('egt', $start_month);
		}
		if ($end_month) {
			$where2['a.time'] = array('elt', $end_month);
		}
		if ($start_month && $end_month) {
			$where2['a.time'] = array('between', array($start_month, $end_month));
		}
		$model = M('Safety_aqmb');
		if ($where1 || $where2) {
			$_data = $model->alias('a')->field('a.*,group_concat(b.id) checkid,group_concat(c.time) warntime')
				->join('left join __SAFETY_AQMB_CHECK__ b on a.id = b.pid and b.status=2')
				->join('left join __SAFETY_AQMB_CHECKWARN__ c on a.id = c.pid')->where($where1)->where($where2)->group('a.id')
				->order('a.id desc')->select();
		}
		if ($start_year == '' && $end_year == '' && $start_month == '' && $end_month == '') {
			$_data = $model->alias('a')->field('a.*,group_concat(b.id) checkid,group_concat(c.time) warntime')
				->join('left join __SAFETY_AQMB_CHECK__ b on a.id = b.pid and b.status=2')
				->join('left join __SAFETY_AQMB_CHECKWARN__ c on a.id = c.pid')->where(array(
					'a.year' => date('Y'),
					'a.time' => date('n'),
				))->group('a.id')->order('a.id desc')->select();
		}
		foreach ($_data as $k => $v) {
			$num[] = (int)$v['level'];
		}
		foreach ($_data as $k => $v) {
			$tmp['id']       = $v['id'];
			$tmp['name']     = $v['name'];
			$tmp['level']    = $v['level'];
			$tmp['target']   = $v['target'];
			$tmp['danger']   = $v['danger'];
			$tmp['time']     = $v['time'];
			$tmp['add_time'] = $v['add_time'];
			$tmp['year']     = $v['year'];
			$tmp['checkid']  = implode(',', array_unique(explode(',', $v['checkid'])));
			$tmp['warntime'] = array_unique(explode(',', $v['warntime']));
			$data[]          = $tmp;
		}
		$this->assign(array(
			'current_year' => date("Y"),
			'data'         => $data,
			'num'          => json_encode($num),
		));
		$this->display();
	}

	// 安全隐患
	public function anquanmubiaoaqyh()
	{
		$id    = I('get.id');
		$model = M('Safety_aqmb');
		$data  = $model->find($id);
		$this->assign('data', $data['danger']);
		$this->display();
	}

	// 上报
	public function anquanmubiaoadd()
	{
		if (IS_POST) {
			$data['name']     = I('post.name');
			$data['level']    = I('post.level');
			$data['target']   = I('post.target');
			$data['danger']   = I('post.danger');
			$data['time']     = I('post.time');
			$data['add_time'] = I('post.add_time');
			$data['year']     = I('post.year');
			$data['lng']      = I('post.lng');
			$data['lat']      = I('post.lat');
			$model            = M('Safety_aqmb');
			if ($model->add($data)) {
				$this->show("
                    <script>
                        alert('操作成功！');
                        window.location.href='/index/Safety/anquanmubiao';
                    </script>
                ");
			} else {
				$this->show("
                    <script>
                        alert('操作失败：" . $model->getError() . "');
                        window.location.href='/index/Safety/anquanmubiao';
                    </script>
                ");
			}
		}
		$this->display();
	}

	// 检查详情列表
	public function anquanmubiaochecklst()
	{
		$pid   = I('get.id');
		$model = M('Safety_aqmb_check');
		$lt    = I('get.lt');
		$rt    = I('get.rt');
		$where = array();
		if ($lt) {
			$where['time'] = array('egt', $lt);
		}
		if ($rt) {
			$where['time'] = array('elt', $rt);
		}
		if ($lt && $rt) {
			$where['time'] = array('between', array($lt, $rt));
		}

		if ($where) {
			$data = $model->where("pid = '$pid'")->where($where)->order(array(
				'status' => desc,
				'id'     => desc,
			))->select();
		}
		//        echo $model->getLastSql();
		if ($lt == '' && $rt == '') {
			$data = $model->where(array(
				'pid'  => $pid,
				'time' => array('like', "%" . date('Y-m') . "%"),
			))->order(array(
				'status' => desc,
				'id'     => desc,
			))->select();
		}
		$this->assign('data', $data);
		$this->display();
	}

	// 检查详情上报
	public function anquanmubiaocheckadd()
	{
		if (IS_POST) {
			$id            = I('get.id');
			$data['pid']   = I('post.pid');
			$data['time']  = I('post.time');
			$data['check'] = I('post.check');
			$model         = M('Safety_aqmb_check');
			if ($model->add($data)) {
				$this->show("
                    <script>
                        alert('操作成功！');
                        window.location.href='/index/Safety/anquanmubiaochecklst/id/" . $id . "';
                    </script>
                ");
			} else {
				$this->show("
                    <script>
                        alert('操作失败：" . $model->getError() . "');
                        window.location.href='/index/Safety/anquanmubiaochecklst/id/" . $id . "';
                    </script>
                ");
			}
		}
		$this->display();
	}

	// 检查详情上报内容查看
	public function anquanmubiaocheckxq()
	{
		$id    = I('get.id');
		$pid   = I('get.pid');
		$model = M('Safety_aqmb_check');
		$data  = $model->find($id);
		$this->assign('data', $data['check']);
		if (IS_POST) {
			$data['recheck'] = I('post.recheck');
			$data['status']  = 1;
			if ($model->where("id = '$id'")->save($data)) {
				$this->show("
                    <script>
                        alert('操作成功！');
                        window.location.href='/index/Safety/anquanmubiaochecklst/id/" . $pid . "';
                    </script>
                ");
			} else {
				$this->show("
                    <script>
                        alert('操作失败：" . $model->getError() . "');
                        window.location.href='/index/Safety/anquanmubiaochecklst/id/" . $pid . "';
                    </script>
                ");
			}
		}
		$this->display();
	}

	/**
	 * 安全员网络
	 */
	public function wangluo()
	{
		$this->display();
	}

	public function wangluo_map()
	{
		$model = M('Safety_net');
		$data  = $model->select();
		$this->assign('data', json_encode($data));
		$this->display();
	}

	/**
	 * 安全基本概念
	 */
	public function gainian()
	{
		$where = array();
		if ($key = I('get.key')) {
			$where['concat(title,content,time)'] = array('like', "%$key%");
		}
		$where['childid'] = 182;
		$model            = M('Safety_xwlb');
		$data             = $model->where($where)->order('id desc')->select();
		$this->assign('data', $data);
		$this->display();
	}

	public function gainianxq()
	{
		$id    = I('get.id');
		$model = M('Safety_xwlb');
		$data  = $model->find($id);
		$this->assign('data', $data);
		$this->display();
	}

	public function gainianadd()
	{
		if (IS_POST) {
			$data['time']    = I('post.time');
			$data['childid'] = I('post.childid');
			$data['title']   = I('post.title');
			$data['content'] = I('post.content');
			$model           = M('Safety_xwlb');
			if ($model->add($data)) {
				$this->show("
                    <script>
                        alert('操作成功!');
                        window.location.href='/index/Safety/gainian';
                    </script>");
				exit;
			} else {
				$this->show("
                    <script>
                        alert('添加失败：" . $this->model->getError() . "');
                        window.location.href='/index/Safety/gainian';
                    </script>");
				exit;
			}
		}
		$this->display();
	}

	public function gainianedit()
	{
		$id    = I('get.id');
		$model = M('Safety_xwlb');
		$data  = $model->find($id);
		$this->assign('data', $data);
		if (I('post.title')) {
			$eData['title'] = I('post.title');
		}
		if (I('post.content')) {
			$eData['content'] = I('post.content');
		}
		if (IS_POST) {
			if ($model->where("id='$id'")->save($eData)) {
				$this->show("
                <script>
                    alert('操作成功!');
                    window.location.href='/index/Safety/gainian';
                </script>");
				exit;
			} else {
				$this->show("
                <script>
                    alert('添加失败：" . $this->model->getError() . "');
                    window.location.href='/index/Safety/gainian';
                </script>");
				exit;
			}
		}
		$this->display();
	}

	public function gainiandel()
	{
		$id    = I('get.id');
		$model = M('Safety_xwlb');
		if ($model->where("id='$id'")->delete()) {
			$this->show("
                <script>
                    alert('操作成功!');
                    window.location.href='/index/Safety/gainian';
                </script>");
			exit;
		} else {
			$this->show("
                <script>
                    alert('添加失败：" . $this->model->getError() . "');
                    window.location.href='/index/Safety/gainian';
                </script>");
			exit;
		}
	}

	/**
	 * 教育安全
	 */
	public function jiaoyu()
	{
		$where = array();
		if ($key = I('get.key')) {
			$where['concat(title,content,time)'] = array('like', "%$key%");
		}
		$where['childid'] = 184;
		$model            = M('Safety_xwlb');
		$data             = $model->where($where)->order('id desc')->select();
		$this->assign('data', $data);
		$this->display();
	}

	public function jiaoyuxq()
	{
		$id    = I('get.id');
		$model = M('Safety_xwlb');
		$data  = $model->find($id);
		$this->assign('data', $data);
		$this->display();
	}

	public function jiaoyuadd()
	{
		if (IS_POST) {
			$data['time']    = I('post.time');
			$data['childid'] = I('post.childid');
			$data['title']   = I('post.title');
			$data['content'] = I('post.content');
			$model           = M('Safety_xwlb');
			if ($model->add($data)) {
				$this->show("
                    <script>
                        alert('操作成功!');
                        window.location.href='/index/Safety/jiaoyu';
                    </script>");
				exit;
			} else {
				$this->show("
                    <script>
                        alert('添加失败：" . $this->model->getError() . "');
                        window.location.href='/index/Safety/jiaoyu';
                    </script>");
				exit;
			}
		}
		$this->display();
	}

	public function jiaoyuedit()
	{
		$id    = I('get.id');
		$model = M('Safety_xwlb');
		$data  = $model->find($id);
		$this->assign('data', $data);
		if (I('post.title')) {
			$eData['title'] = I('post.title');
		}
		if (I('post.content')) {
			$eData['content'] = I('post.content');
		}
		if (IS_POST) {
			if ($model->where("id='$id'")->save($eData)) {
				$this->show("
                <script>
                    alert('操作成功!');
                    window.location.href='/index/Safety/jiaoyu';
                </script>");
				exit;
			} else {
				$this->show("
                <script>
                    alert('添加失败：" . $this->model->getError() . "');
                    window.location.href='/index/Safety/jiaoyu';
                </script>");
				exit;
			}
		}
		$this->display();
	}

	public function jiaoyudel()
	{
		$id    = I('get.id');
		$model = M('Safety_xwlb');
		if ($model->where("id='$id'")->delete()) {
			$this->show("
                <script>
                    alert('操作成功!');
                    window.location.href='/index/Safety/jiaoyu';
                </script>");
			exit;
		} else {
			$this->show("
                <script>
                    alert('添加失败：" . $this->model->getError() . "');
                    window.location.href='/index/Safety/jiaoyu';
                </script>");
			exit;
		}
	}

	/**
	 * 食品安全
	 */
	public function shipin()
	{
		$where = array();
		if ($key = I('get.key')) {
			$where['concat(title,content,time)'] = array('like', "%$key%");
		}
		$where['childid'] = 185;
		$model            = M('Safety_xwlb');
		$data             = $model->where($where)->order('id desc')->select();
		$this->assign('data', $data);
		$this->display();
	}

	public function shipinxq()
	{
		$id    = I('get.id');
		$model = M('Safety_xwlb');
		$data  = $model->find($id);
		$this->assign('data', $data);
		$this->display();
	}

	public function shipinadd()
	{
		if (IS_POST) {
			$data['time']    = I('post.time');
			$data['childid'] = I('post.childid');
			$data['title']   = I('post.title');
			$data['content'] = I('post.content');
			$model           = M('Safety_xwlb');
			if ($model->add($data)) {
				$this->show("
                    <script>
                        alert('操作成功!');
                        window.location.href='/index/Safety/shipin';
                    </script>");
				exit;
			} else {
				$this->show("
                    <script>
                        alert('添加失败：" . $this->model->getError() . "');
                        window.location.href='/index/Safety/shipin';
                    </script>");
				exit;
			}
		}
		$this->display();
	}

	public function shipinedit()
	{
		$id    = I('get.id');
		$model = M('Safety_xwlb');
		$data  = $model->find($id);
		$this->assign('data', $data);
		if (I('post.title')) {
			$eData['title'] = I('post.title');
		}
		if (I('post.content')) {
			$eData['content'] = I('post.content');
		}
		if (IS_POST) {
			if ($model->where("id='$id'")->save($eData)) {
				$this->show("
                <script>
                    alert('操作成功!');
                    window.location.href='/index/Safety/shipin';
                </script>");
				exit;
			} else {
				$this->show("
                <script>
                    alert('添加失败：" . $this->model->getError() . "');
                    window.location.href='/index/Safety/shipin';
                </script>");
				exit;
			}
		}
		$this->display();
	}

	public function shipindel()
	{
		$id    = I('get.id');
		$model = M('Safety_xwlb');
		if ($model->where("id='$id'")->delete()) {
			$this->show("
                <script>
                    alert('操作成功!');
                    window.location.href='/index/Safety/shipin';
                </script>");
			exit;
		} else {
			$this->show("
                <script>
                    alert('添加失败：" . $this->model->getError() . "');
                    window.location.href='/index/Safety/shipin';
                </script>");
			exit;
		}
	}

	/**
	 * 交通安全
	 */
	public function jiaotong()
	{
		$where = array();
		if ($key = I('get.key')) {
			$where['concat(title,content,time)'] = array('like', "%$key%");
		}
		$where['childid'] = 186;
		$model            = M('Safety_xwlb');
		$data             = $model->where($where)->order('id desc')->select();
		$this->assign('data', $data);
		$this->display();
	}

	public function jiaotongxq()
	{
		$id    = I('get.id');
		$model = M('Safety_xwlb');
		$data  = $model->find($id);
		$this->assign('data', $data);
		$this->display();
	}

	public function jiaotongadd()
	{
		if (IS_POST) {
			$data['time']    = I('post.time');
			$data['childid'] = I('post.childid');
			$data['title']   = I('post.title');
			$data['content'] = I('post.content');
			$model           = M('Safety_xwlb');
			if ($model->add($data)) {
				$this->show("
                    <script>
                        alert('操作成功!');
                        window.location.href='/index/Safety/jiaotong';
                    </script>");
				exit;
			} else {
				$this->show("
                    <script>
                        alert('添加失败：" . $this->model->getError() . "');
                        window.location.href='/index/Safety/jiaotong';
                    </script>");
				exit;
			}
		}
		$this->display();
	}

	public function jiaotongedit()
	{
		$id    = I('get.id');
		$model = M('Safety_xwlb');
		$data  = $model->find($id);
		$this->assign('data', $data);
		if (I('post.title')) {
			$eData['title'] = I('post.title');
		}
		if (I('post.content')) {
			$eData['content'] = I('post.content');
		}
		if (IS_POST) {
			if ($model->where("id='$id'")->save($eData)) {
				$this->show("
                <script>
                    alert('操作成功!');
                    window.location.href='/index/Safety/jiaotong';
                </script>");
				exit;
			} else {
				$this->show("
                <script>
                    alert('添加失败：" . $this->model->getError() . "');
                    window.location.href='/index/Safety/jiaotong';
                </script>");
				exit;
			}
		}
		$this->display();
	}

	public function jiaotongdel()
	{
		$id    = I('get.id');
		$model = M('Safety_xwlb');
		if ($model->where("id='$id'")->delete()) {
			$this->show("
                <script>
                    alert('操作成功!');
                    window.location.href='/index/Safety/jiaotong';
                </script>");
			exit;
		} else {
			$this->show("
                <script>
                    alert('添加失败：" . $this->model->getError() . "');
                    window.location.href='/index/Safety/jiaotong';
                </script>");
			exit;
		}
	}

	/**
	 * 居家安全
	 */
	public function jujia()
	{
		$where = array();
		if ($key = I('get.key')) {
			$where['concat(title,content,time)'] = array('like', "%$key%");
		}
		$where['childid'] = 187;
		$model            = M('Safety_xwlb');
		$data             = $model->where($where)->order('id desc')->select();
		$this->assign('data', $data);
		$this->display();
	}

	public function jujiaxq()
	{
		$id    = I('get.id');
		$model = M('Safety_xwlb');
		$data  = $model->find($id);
		$this->assign('data', $data);
		$this->display();
	}

	public function jujiaadd()
	{
		if (IS_POST) {
			$data['time']    = I('post.time');
			$data['childid'] = I('post.childid');
			$data['title']   = I('post.title');
			$data['content'] = I('post.content');
			$model           = M('Safety_xwlb');
			if ($model->add($data)) {
				$this->show("
                    <script>
                        alert('操作成功!');
                        window.location.href='/index/Safety/jujia';
                    </script>");
				exit;
			} else {
				$this->show("
                    <script>
                        alert('添加失败：" . $this->model->getError() . "');
                        window.location.href='/index/Safety/jujia';
                    </script>");
				exit;
			}
		}
		$this->display();
	}

	public function jujiaedit()
	{
		$id    = I('get.id');
		$model = M('Safety_xwlb');
		$data  = $model->find($id);
		$this->assign('data', $data);
		if (I('post.title')) {
			$eData['title'] = I('post.title');
		}
		if (I('post.content')) {
			$eData['content'] = I('post.content');
		}
		if (IS_POST) {
			if ($model->where("id='$id'")->save($eData)) {
				$this->show("
                <script>
                    alert('操作成功!');
                    window.location.href='/index/Safety/jujia';
                </script>");
				exit;
			} else {
				$this->show("
                <script>
                    alert('添加失败：" . $this->model->getError() . "');
                    window.location.href='/index/Safety/jujia';
                </script>");
				exit;
			}
		}
		$this->display();
	}

	public function jujiadel()
	{
		$id    = I('get.id');
		$model = M('Safety_xwlb');
		if ($model->where("id='$id'")->delete()) {
			$this->show("
                <script>
                    alert('操作成功!');
                    window.location.href='/index/Safety/jujia';
                </script>");
			exit;
		} else {
			$this->show("
                <script>
                    alert('添加失败：" . $this->model->getError() . "');
                    window.location.href='/index/Safety/jujia';
                </script>");
			exit;
		}
	}

	/**
	 * 社会安全
	 */
	public function shehui()
	{
		$where = array();
		if ($key = I('get.key')) {
			$where['concat(title,content,time)'] = array('like', "%$key%");
		}
		$where['childid'] = 188;
		$model            = M('Safety_xwlb');
		$data             = $model->where($where)->order('id desc')->select();
		$this->assign('data', $data);
		$this->display();
	}

	public function shehuixq()
	{
		$id    = I('get.id');
		$model = M('Safety_xwlb');
		$data  = $model->find($id);
		$this->assign('data', $data);
		$this->display();
	}

	public function shehuiadd()
	{
		if (IS_POST) {
			$data['time']    = I('post.time');
			$data['childid'] = I('post.childid');
			$data['title']   = I('post.title');
			$data['content'] = I('post.content');
			$model           = M('Safety_xwlb');
			if ($model->add($data)) {
				$this->show("
                    <script>
                        alert('操作成功!');
                        window.location.href='/index/Safety/shehui';
                    </script>");
				exit;
			} else {
				$this->show("
                    <script>
                        alert('添加失败：" . $this->model->getError() . "');
                        window.location.href='/index/Safety/shehui';
                    </script>");
				exit;
			}
		}
		$this->display();
	}

	public function shehuiedit()
	{
		$id    = I('get.id');
		$model = M('Safety_xwlb');
		$data  = $model->find($id);
		$this->assign('data', $data);
		if (I('post.title')) {
			$eData['title'] = I('post.title');
		}
		if (I('post.content')) {
			$eData['content'] = I('post.content');
		}
		if (IS_POST) {
			if ($model->where("id='$id'")->save($eData)) {
				$this->show("
                <script>
                    alert('操作成功!');
                    window.location.href='/index/Safety/shehui';
                </script>");
				exit;
			} else {
				$this->show("
                <script>
                    alert('添加失败：" . $this->model->getError() . "');
                    window.location.href='/index/Safety/shehui';
                </script>");
				exit;
			}
		}
		$this->display();
	}

	public function shehuidel()
	{
		$id    = I('get.id');
		$model = M('Safety_xwlb');
		if ($model->where("id='$id'")->delete()) {
			$this->show("
                <script>
                    alert('操作成功!');
                    window.location.href='/index/Safety/shehui';
                </script>");
			exit;
		} else {
			$this->show("
                <script>
                    alert('添加失败：" . $this->model->getError() . "');
                    window.location.href='/index/Safety/shehui';
                </script>");
			exit;
		}
	}

	/**
	 * 安全培训
	 */
	public function peixun()
	{
		$where = array();
		if ($key = I('get.key')) {
			$where['concat(title,content,time)'] = array('like', "%$key%");
		}
		$where['childid'] = 190;
		$model            = M('Safety_xwlb');
		$data             = $model->where($where)->order('id desc')->select();
		$this->assign('data', $data);
		$this->display();
	}

	public function peixunxq()
	{
		$id    = I('get.id');
		$model = M('Safety_xwlb');
		$data  = $model->find($id);
		$this->assign('data', $data);
		$this->display();
	}

	public function peixunadd()
	{
		if (IS_POST) {
			$data['time']    = I('post.time');
			$data['childid'] = I('post.childid');
			$data['title']   = I('post.title');
			$data['content'] = I('post.content');
			$model           = M('Safety_xwlb');
			if ($model->add($data)) {
				$this->show("
                    <script>
                        alert('操作成功!');
                        window.location.href='/index/Safety/peixun';
                    </script>");
				exit;
			} else {
				$this->show("
                    <script>
                        alert('添加失败：" . $this->model->getError() . "');
                        window.location.href='/index/Safety/peixun';
                    </script>");
				exit;
			}
		}
		$this->display();
	}

	public function peixunedit()
	{
		$id    = I('get.id');
		$model = M('Safety_xwlb');
		$data  = $model->find($id);
		$this->assign('data', $data);
		if (I('post.title')) {
			$eData['title'] = I('post.title');
		}
		if (I('post.content')) {
			$eData['content'] = I('post.content');
		}
		if (IS_POST) {
			if ($model->where("id='$id'")->save($eData)) {
				$this->show("
                <script>
                    alert('操作成功!');
                    window.location.href='/index/Safety/peixun';
                </script>");
				exit;
			} else {
				$this->show("
                <script>
                    alert('添加失败：" . $this->model->getError() . "');
                    window.location.href='/index/Safety/peixun';
                </script>");
				exit;
			}
		}
		$this->display();
	}

	public function peixundel()
	{
		$id    = I('get.id');
		$model = M('Safety_xwlb');
		if ($model->where("id='$id'")->delete()) {
			$this->show("
                <script>
                    alert('操作成功!');
                    window.location.href='/index/Safety/peixun';
                </script>");
			exit;
		} else {
			$this->show("
                <script>
                    alert('添加失败：" . $this->model->getError() . "');
                    window.location.href='/index/Safety/peixun';
                </script>");
			exit;
		}
	}

	/**
	 * 安委会
	 */
	public function anweihui()
	{
		$this->display();
	}

	/**
	 * 安委会
	 */
	public function chufa()
	{
		$this->display();
	}

	/**
	 * 检查详情设置提醒列表页
	 */
	public function anquanmubiaocheckwarn()
	{
		$pid   = I('get.id');
		$model = M('Safety_aqmb_checkwarn');
		$data  = $model->where("pid = '$pid'")->order("id desc")->select();
		$this->assign('data', $data);
		$this->display();
	}

	/**
	 * 检查详情设置提醒添加页
	 */
	public function anquanmubiaocheckwarnadd()
	{
		if (IS_POST) {
			$rules = array(
				array('pid', 'require', '公司ID必须', 1),
				array('time', 'require', '公司ID必须', 1),
				array('content', 'require', '公司ID必须', 1),
			);
			$model = M('Safety_aqmb_checkwarn');
			if ($model->field('pid,time,content')->validate($rules)->create(I('post.'), 1)) {
				if ($model->add()) {
					$this->show("
                        <script>
                            alert('添加成功');
                            window.location.href='/index/Safety/anquanmubiaocheckwarn/id/" . I('get.id') . "';
                        </script>");
					exit;
				}
			} else {
				$this->show("
                    <script>
                        alert('操作失败：" . $model->getError() . "');
                        window.location.href='/index/Safety/anquanmubiaocheckwarn/id/" . I('get.id') . "';
                    </script>");
				exit;
			}
		}
		$this->display();
	}

	/**
	 * ajax查询当天的检查提醒
	 */
	public function ajaxfun()
	{
		$id            = I('post.warnid');
		$model         = M('Safety_aqmb_checkwarn');
		$where         = array();
		$where['pid']  = $id;
		$where['time'] = date("Y-m-d");
		$data          = $model->where($where)->find();
		echo json_encode($data['content']);
	}

	/**
	 * 任务公示
	 */
	public function renwugongshi()
	{
		$where = array();
		if ($key = I('get.key')) {
			$where['concat(title,content,time)'] = array('like', "%$key%");
		}
		$where['childid'] = 196;
		$model            = M('Safety_xwlb');
		$data             = $model->where($where)->order('id desc')->select();
		$this->assign('data', $data);
		$this->display();
	}

	public function renwugongshixq()
	{
		$id    = I('get.id');
		$model = M('Safety_xwlb');
		$data  = $model->find($id);
		$this->assign('data', $data);
		$this->display();
	}

	public function renwugongshiadd()
	{
		if (IS_POST) {
			$data['time']        = I('post.time');
			$data['childid']     = I('post.childid');
			$data['title']       = I('post.title');
			$data['maindep']     = I('post.maindep');
			$data['maincontent'] = I('post.maincontent');
			$data['content']     = I('post.content');
			$model               = M('Safety_xwlb');
			if ($model->add($data)) {
				$this->show("
                    <script>
                        alert('操作成功!');
                        window.location.href='/index/Safety/renwugongshi';
                    </script>");
				exit;
			} else {
				$this->show("
                    <script>
                        alert('添加失败：" . $this->model->getError() . "');
                        window.location.href='/index/Safety/renwugongshi';
                    </script>");
				exit;
			}
		}
		$this->display();
	}

	public function renwugongshiedit()
	{
		$id    = I('get.id');
		$model = M('Safety_xwlb');
		$data  = $model->find($id);
		$this->assign('data', $data);
		if (I('post.title')) {
			$eData['title'] = I('post.title');
		}
		if (I('post.maindep')) {
			$eData['maindep'] = I('post.maindep');
		}
		if (I('post.maincontent')) {
			$eData['maincontent'] = I('post.maincontent');
		}
		if (I('post.content')) {
			$eData['content'] = I('post.content');
		}
		if (IS_POST) {
			if ($model->where("id='$id'")->save($eData)) {
				$this->show("
                <script>
                    alert('操作成功!');
                    window.location.href='/index/Safety/renwugongshi';
                </script>");
				exit;
			} else {
				$this->show("
                <script>
                    alert('添加失败：" . $this->model->getError() . "');
                    window.location.href='/index/Safety/renwugongshi';
                </script>");
				exit;
			}
		}
		$this->display();
	}

	public function renwugongshidel()
	{
		$id    = I('get.id');
		$model = M('Safety_xwlb');
		if ($model->where("id='$id'")->delete()) {
			$this->show("
                <script>
                    alert('操作成功!');
                    window.location.href='/index/Safety/renwugongshi';
                </script>");
			exit;
		} else {
			$this->show("
                <script>
                    alert('添加失败：" . $this->model->getError() . "');
                    window.location.href='/index/Safety/renwugongshi';
                </script>");
			exit;
		}
	}

	/**
	 * 重大危险源
	 */
	public function zdwxy()
	{
		$this->display();
	}

	public function zdwxybd()
	{
		$model           = M('Safety_aqmb');
		$where           = array();
		$where['target'] = array('eq', '重大危险源');
		$data            = $model->field('name,target,lng,lat')->where($where)->select();
		$this->assign('data', json_encode($data));
		$this->display();
	}

	/**
	 * 危险化学品
	 */
	public function wxhxp()
	{
		$this->display();
	}

	public function wxhxpbd()
	{
		$model           = M('Safety_aqmb');
		$where           = array();
		$where['target'] = array('eq', '危险化学品');
		$data            = $model->field('name,target,lng,lat')->where($where)->select();
		$this->assign('data', json_encode($data));
		$this->display();
	}

	/**
	 * 九小场所
	 */
	public function jxcs()
	{
		$this->display();
	}

	public function jxcsbd()
	{
		$model           = M('Safety_aqmb');
		$where           = array();
		$where['target'] = array('eq', '九小场所');
		$data            = $model->field('name,target,lng,lat')->where($where)->select();
		$this->assign('data', json_encode($data));
		$this->display();
	}
}