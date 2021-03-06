<?php

namespace Admin\Controller;

use Admin\Controller\AdminBaseController;

class MemberController extends AdminBaseController {
	/**
	 * 会员登录
	 */
	public function index($page = 1) {
		if ($page <= 0) {
			$page = 1;
		}
		
		$this->reqLogin ();
		$Member = $this->reqLoginmember ();
		$Meetmodel = D ( "Joinmeet" );
		// $this->Member=$Member;
		$Meet = $Meetmodel->getjoinmeet ( $Member ["id"], $page, 10 );
		
		$pageshow = D ( 'Joinmeet' )->ShowPage ( "memberid=" . $Member ["id"], "index", $page, 10 );
		$this->assign ( 'Page', $pageshow );
		
		$this->assign ( 'Member', $Member );
		$this->assign ( "Meet", $Meet ["response"] );
		$this->display ();
	}
	/**
	 * 会员登录
	 */
	public function login() {
		$this->display ();
	}
	
	/**
	 * 会员注册
	 */
	public function register() {
		$this->display ();
	}
	
	/**
	 * 会员信息修改
	 *
	 * @param
	 *        	会员的id
	 *        	
	 */
	public function info() {
		$this->reqLogin ();
		$member = qc_getLoginUser ();
		$id = $member ["id"]; // 获取当前登录用户id
		$MemberModel = D ( "Member" );
		
		$res = $MemberModel->getMemberInfo ( $id );
		
		if (isset ( $res ["code"] )) {
			$this->assign ( "Info", $res ["response"] );
			$this->display ();
		} else {
			$this->error ( "资料获取失败" );
		}
	}
}