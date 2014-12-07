<?php

namespace Home\Controller;

use Common\Controller\BaseController;

class MeetController extends BaseController {
	public function index() {
		echo "hello";
	}
	/**
	 * 添加会议
	 * Note
	 * 时间格式有Y-m-d转化为时间戳
	 */
	public function addmeet() {

		$postdata = array("title", "address", "starttime", "endtime");
		$this->reqPost($postdata)->getlogin();

		$data = I("post.");
		$member = session("member");
		$data["createmember"] = $member["id"];//创建会议人
		$meetmodel = D("Meet");
		$res = $meetmodel->addmeet($data);

		$this->ajaxReturn($res);

		//	echo date("Y/m/d H:i:s",$data["endtime"]);
	}
	/**
	 * 更新会议
	 * Note
	 * 时间格式有Y-m-d转化为时间戳
	 *
	 */
	public function updatemeet() {

		$this->reqPost(array("id"));//更细腻会议的id必须有
		$data = I("post.");
		$meetmodel = D("Meet");//实例化一个model

		$res = $meetmodel->updatemeet($data);
		$this->ajaxReturn($res);

	}

	/**
	 * 删除相应的会议
	 * meetid 会议的id
	 */
	public function deletemeet() {

		$postdata = array("meetid");
		$this->reqPost($postdata)->getlogin();
		$memberid = qc_getLoginUser()["id"];

		$meetid = I("post.meetid");
		$meetmodel = D("Meet");
		$res = $meetmodel->deletemeet($meetid, $memberid);
		$this->ajaxReturn($res);

	}

	/**
	 * 获取相应的会议
	 *meetid 指定查找id  为空是获得全部会议
	 *field 是json 格式 {"0":"title","1":"address"}
	 */
	public function getmeet() {

		$postdata = array("meetid");
		$this->reqPost($postdata)->getlogin();

		$meetid = I("post.meetid");//获取相应的id
		$field = I("post.field", '', '');//拿到想要获得的字段  用json的格式传送   不做任何格式转化

		if ($field) {
			//如果指定了想要的字段，则要通过json的格式输入
			$field = json_decode($field, 1);
		}

		$meetmodel = D("Meet");

		$res = $meetmodel->field($field)->where("id=" . $meetid)->find();
		$this->ajaxReturn(qc_json_success($res));
	}

	/**
	 * 会议添加成员
	 *@param
	 *meetid 会议id
	 *memberid 成员id
	 */
	public function addjoin() {

		$postdata = array("meetid");
		$this->reqPost($postdata)->reqLogin();

		$member = $this->reqLoginmember();
		$data = I("post.");
		if ($data["memberid"] == NULL) {
			$data["memberid"] = $member["id"];
		}

		$joinmodel = D("Joinmeet");

		$res = $joinmodel->addjoin($data);

		$this->ajaxReturn($res);

	}
	/**
	 * 用get的方法加入(以后要加密)
	 * @param unknown $meetid
	 */
	public function addjoinClient($meetid) {
		$this->reqLogin();

		$member = $this->reqLoginmember();
		$data = array('meetid' => $meetid);
		if ($data["memberid"] == NULL) {
			$data["memberid"] = $member["id"];
		}

		$joinmodel = D("Joinmeet");

		$res = $joinmodel->addjoin($data);

		$this->ajaxReturn($res);
	}
	/**
	 * 用get的方法加入(以后要加密)
	 * @param int $meetid 会议id
	 */
	public function checkIn($meetid) {
		$this->reqLogin();

		$member = $this->reqLoginmember();
		$data = array('meetid' => $meetid);
		if ($data["memberid"] == NULL) {
			$data["memberid"] = $member["id"];
		}

		$joinmodel = D("Joinmeet");

		$res = $joinmodel->checkIn($data);

		$this->ajaxReturn($res);
	}

	/**
	 *
	 * 退出会议
	 * @param
	 * meetid 退出会议的id
	 *
	 */
	public function outjoin() {
		$postdata = array("meetid");
		$this->reqPost($postdata)->reqLogin();
		$meetid = I("post.meetid");
		$joinmodel = D("Joinmeet");

		$res = $joinmodel->outjoin($meetid);

		$this->ajaxReturn($res);

	}

	/**
	 *查看会议成员
	 *@param
	 *meetid 会议id
	 */
	public function getjoinmember() {
		$meetid = I("post.meetid");//通过post 传入会议id
		$joinmodel = D("Joinmeet");
		$res = $joinmodel->getjoinmember($meetid);

		$this->ajaxReturn($res);
	}

	/**
	 *查看会议列表
	 *memberid 会员的id（查找该会员相关的会议）
	 *page 页码
	 *limit 返回数
	 */
	public function getjoinmeet() {
		$this->reqLogin();
		$page = I("post.page");
		$limit = I("post.limit");
		$member = session("member");
		$memberid = $member["id"];

		$joinmodel = D("Joinmeet");
		$res = $joinmodel->getjoinmeet($memberid, $page, $limit);
		$this->ajaxReturn($res);

	}

}
