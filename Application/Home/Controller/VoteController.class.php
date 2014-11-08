<?php

namespace Home\Controller;

use Common\Controller\BaseController;

/**
 * 投票api
 * @author Jayin Ton
 *
 */
class VoteController extends BaseController {
	/**
	 * 创建(发起)投票项
	 */
	public function create(){
		$this->reqPost(array('meetid','title','intro','stime','etime'))->reqLogin();
		$data = I('post.');
		$data['stime'] = strtotime($data['stime']);
		$data['etime'] = strtotime($data['etime']);
		$this->ajaxReturn(D('Vote')->createVote($data));
	}
	/**
	 * 更新投票项
	 */
	public function update(){
		$this->reqPost(array('id'))->reqLogin();
		$data = I('post.');
		if(isset($data['stime'])){
			$data['stime'] = strtotime($data['stime']);
		}
		if(isset($data['etime'])){
			$data['etime'] = strtotime($data['etime']);
		}
		$this->ajaxReturn(D('Vote')->updateVote($data));
	}
	/**
	 * 删除投票项
	 */
	public function delete(){
		$this->reqPost(array('voteid'))->reqLogin();
		$this->ajaxReturn(D('Vote')->deleteVote(I('post.voteid')));
	}
}

