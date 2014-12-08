<?php

namespace Admin\Controller;

use Admin\Controller\AdminBaseController;
use Common\Model\PushMessageModel;

/**
 * 会议控制器
 *
 * @author Jayin Ton
 * @author zhlhuang
 *
 */
class MeetController extends AdminBaseController {
	public function index() {
		$this->redirect('member/index');
	}

	/**
	 * 添加会议
	 */
	public function createmeet() {
        $this->reqLogin();
		$this->display();
	}

	/**
	 * 会议更新
	 */
	public function updatemeet($id) {
		// echo $id;
		$this->reqLogin();

		$MeetModel = D("Meet");
		$res = $MeetModel->findmeet($id);
		$data = $res["response"];
		if ($res["code"] == 20000) {
			$starttime = $data["starttime"];
			$data["starttime"] = date("Y-m-d", $starttime);
			$data["starttime-h"] = date("H", $starttime);
			$data["starttime-i"] = date("i", $starttime);

			$endtime = $data["endtime"];
			$data["endtime"] = date("Y-m-d", $endtime);
			$data["endtime-h"] = date("H", $endtime);
			$data["endtime-i"] = date("i", $endtime);

			$this->assign("Meet", $data);
			$this->assign("id", $id);
		}

		$this->display();
	}

	/**
	 * 会议详情
	 */
	public function detail($id = 0) {
		$this->reqLogin();
		$Meetmodel = D("Meet");

		$LoginMember = $this->reqLoginmember();// 获取登录用户
		$res = $Meetmodel->findmeet($id);// 查找对应meet

		if (isset($res["code"])) {
			$meet = $res["response"];

			$Membermodel = D("Member");// 获取相关联的会议创建人
			$resMember = $Membermodel->getMemberInfo($meet["createmember"])["response"];
			$listmembermodel = D("Joinmeet");

			$listmember = $listmembermodel->getjoinmember($id)["response"];//获取参加会议人员
			/* 			echo "<pre>";
			print_r($listmember);
			echo "</pre>";
			exit; */
			$this->assign("Meet", $meet);
			$this->assign("LoginMemberid", $LoginMember["id"]);// 分配登录id
			$this->assign("Member", $resMember);
			$this->assign("listmember", $listmember);
		} else {
			$this->error("查不到此会议");
		}

		$this->display();
	}

	/**
	 * 会议文档
	 *
	 * @param int $id 文档id
	 */
	public function document($id) {
		$this->reqLogin();
		$Meet["id"] = $id;// 将会议id分配前端页面显示
		$this->assign("Meet", $Meet);

		$DocModel = D("Document");
		$LoginMember = $this->reqLoginmember();// 获取登录用户

		$res = $DocModel->listmeetdoc_with_member($id);
		if (isset($res["code"])) {
			$doc = $res["response"];

			$this->assign("doc", $doc);
			$this->assign("LoginMemberid", $LoginMember["id"]);// 分配登录id
		}

		$this->display();
	}

	/**
	 * 创建会议文档
	 *
	 * @param int $id
	 *        	所属会议id
	 */
	public function createdocument($id) {
		$this->reqLogin();
		$Meet["id"] = $id;// 将会议id分配前端页面显示
		$this->assign("Meet", $Meet);
		$this->display();
	}

	/**
	 * 文档更新
	 *
	 * @param int $id
	 *        	所属文档id
	 */
	public function updatedocument($id) {
		$this->reqLogin();
		$DocModel = D("Document");
		$res = $DocModel->listdoc($id);

		if ($res) {
			$doc = $res["response"];
			$Meet["id"] = $doc["meetid"];// 将会议id分配前端页面显示
			$this->assign("Meet", $Meet);
			$this->assign("doc", $doc);
		}

		$this->display();
	}
	/**
	 * 创建会议讨论
	 *
	 * @param int $id
	 *        	所属会议id
	 */
	Public function creatediscuss($id) {
		$this->reqLogin();
		$Meet["id"] = $id;// 将会议id分配前端页面显示
		$this->assign("Meet", $Meet);
		$this->display();
	}
	/**
	 * 查看会议讨论
	 *
	 * @param int $id
	 *        	所属会议id
	 */
	public function discuss($id, $page = 1) {
		$this->reqLogin();
		if ($page <= 0) {
			$page = 1;
		}

		$Meet["id"] = $id;// 将会议id分配前端页面显示
		$this->assign("Meet", $Meet);

		$DisModel = D("Discuss");

		$LoginMember = $this->reqLoginmember();// 获取登录用户
		$res = $DisModel->lists_m($id, $page, 5);

		$showpage = $DisModel->ShowPage("meetid=" . $id, "discuss", $page, 5);//调用分页
		$this->assign('Page', $showpage);

		if ($res) {

			$dis = $res["response"];
			$this->assign("dis", $dis);
			$this->assign("LoginMemberid", $LoginMember["id"]);// 分配登录id
		}

		$this->display();
	}
	/**
	 * 更新会议讨论
	 *
	 * @param unknown $id
	 *        	讨论id
	 */
	public function updatediscuss($id) {
		$this->reqLogin();

		$DisModel = D("Discuss");
		$res = $DisModel->info($id);
		if (isset($res["code"])) {
			$dis = $res["response"];

			$Meet["id"] = $dis["meetid"];// 将会议id分配前端页面显示
			$this->assign("Meet", $Meet);

			$this->assign("dis", $dis);
		} else {
			$this->error("找不到该记录");
		}

		$this->display();
	}

	/**
	 * 创建调查
	 *
	 * @param int $id
	 *        	会议id
	 */
	public function createResearch($id) {
		$this->reqLogin();
		$Meet["id"] = $id;// 将会议id分配前端页面显示
		$this->assign("Meet", $Meet);
		// TODO handle not research
		$this->assign('meetid', $id);
		$this->display();
	}
	/**
	 * 更新调查(未完成交互功能)
	 *
	 * @param unknown $id
	 * @param unknown $researchid
	 */
	public function updateResearch($id, $researchid) {
		$this->reqLogin();
		$Meet["id"] = $id;// 将会议id分配前端页面显示
		$this->assign("Meet", $Meet);

		$resResearch = D('Research')->info($researchid);
		if (isset($resResearch['code'])) {
			// questions
			$resResearch['response']['questions'] = D('ResearchQuestion')->listsAll($researchid)['response'];
			$this->assign('Research', $resResearch['response']);
			$this->display();
		} else {
			$this->error('找不到该调查', 'Admin/Meet/research');
		}
	}
	/**
	 * 查看调查列表
	 *
	 * @param int $id
	 *        	调查id
	 */
	public function research($id, $page = 1) {

		if ($page <= 0) {
			$page = 1;
		}

		$this->reqLogin();
		$Meet["id"] = $id;// 将会议id分配前端页面显示
		$this->assign("Meet", $Meet);
		// TODO handle not research
		$res = D('Research')->lists($id, $page, 5);

		$pageshow = D('Research')->ShowPage("meetid=" . $id, "research", $page, 5);
		$this->assign('Page', $pageshow);

		if (isset($res['code'])) {
			$this->assign('Researchs', $res['response']);
		}
		$this->display();
	}

	/**
	 * 会议投票
	 *
	 * @param int $id
	 *  会议id
	 */

	public function createvote($id) {

		$this->reqLogin();
		$Meet["id"] = $id;// 将会议id分配前端页面显示
		$this->assign("Meet", $Meet);

		$this->display();
	}

	/**
	 * 显示会议投票
	 *
	 * @param int $id
	 *  会议id
	 *
	 *   */

	public function vote($id, $page = 1) {

		if ($page <= 0) {
			$page = 1;
		}

		$this->reqLogin();
		$Meet["id"] = $id;// 将会议id分配前端页面显示
		$this->assign("Meet", $Meet);

		$VoteModel = D("Vote");
		$res = $VoteModel->lists($id, $page, 5);

		$pageshow = D('Vote')->ShowPage("meetid=" . $id, "vote", $page, 5);
		$this->assign('Page', $pageshow);

		if (isset($res["code"])) {
			$this->assign("vote", $res["response"]);
		}

		/* 		echo "<pre>";
		print_r($res);
		echo "</pre>";
		exit();
		 */

		$this->display();
	}

	/**
	 * 创建推送消息
	 * @param int $id 会议id
	 */
	public function createMessage($id) {
		$this->reqLogin();
		$Meet["id"] = $id;// 将会议id分配前端页面显示
		$this->assign("Meet", $Meet);
		$this->display();
	}

	/**
	 * 查看推送消息列表
	 * @param $id
	 */
	public function message($id, $page = 1) {

		if ($page < 0) {
			$page = 1;
		}

		$this->reqLogin();
		$Meet["id"] = $id;// 将会议id分配前端页面显示
		$this->assign("Meet", $Meet);

		$resPushMessage = D('PushMessage')->lists(PushMessageModel::MSG_TYPE_MEET, $id, $page, 10);

		$pageshow = D('PushMessage')->ShowPage("meetid=" . $id, "message", $page, 10);
		$this->assign('Page', $pageshow);

		$this->assign("Messages", $resPushMessage['response']);
		$this->display();
	}

	/**
	 *关于我们
	 */
	public function about() {
		$this->reqLogin();
		$this->display();
	}

}
