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
	/**
	 * 添加一选项
	 */
	public function addOption(){
		$this->reqPost(array('voteid','meetid','vpintro'))->reqLogin();
		$this->ajaxReturn(D('VoteOption')->addOption(I('post.')));

	} 
	/**
	 * 更新一选项
	 */
	public function updateOption(){
		$this->reqPost(array('vpotionsid','vpintro'))->reqLogin();	
		$data = I('post.');
		$data['id'] = I('post.vpotionsid');
		$this->ajaxReturn(D('VoteOption')->updateOption($data));
	}
	/**
	 * 删除一选项
	 */
	public function deleteOption(){
		$this->reqPost('vpotionsid')->reqLogin();
		$this->ajaxReturn(D('VoteOption')->deleteOption(I('post.vpotionsid')));
	}
	/**
	 * 获得选项列表
	 * @param number $voteid
	 */
	public function listOption($voteid = 0){
		$this->reqLogin();
		$this->ajaxReturn(D('VoteOption')->lists($voteid));
	}
	/**
	 * 用户投票
	 */
	public function vote(){
		$this->reqPost(array('voteid','optionsid'))->reqLogin();
		$this->ajaxReturn(D('VoteMember')->addVote(I('post.')));
	}
	/**
	 * 查看一投票项 信息
	 * @param int $voteid
	 */
	public function info($voteid){
		$this->reqLogin();
		$this->ajaxReturn(D('Vote')->info($voteid));
	}
	
}

