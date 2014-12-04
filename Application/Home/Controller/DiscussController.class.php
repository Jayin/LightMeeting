<?php

namespace Home\Controller;

use Common\Controller\BaseController;
/**
 * 讨论接口
 * @author Jayin Ton
 *
 */
class DiscussController extends BaseController {
	 /**
	  * 需要对该讨论有编辑权限
	  * @param unknown $discussid
	  * @return \Home\Controller\DiscussController
	  */
	 public function reqEditable($discussid){
	 	$o = M('Discuss')->find($discussid);
	 	if($o['memberid'] != qc_getLoginUser()['id']){
	 		$this->ajaxReturn(qc_json_error('没有修改的权限'));
	 	}
	 	return $this;
	 }
	 /**
	  * 创建(发起)讨论
	  */
	 public function create(){
	 	$this->reqPost(array('meetid','title','content'))->reqLogin();
	 	$this->ajaxReturn(D('Discuss')->createDiscuss(I('post.')));
	 }
	 /**
	  * 更新讨论信息
	  */
	 public function update(){
	 	$this->reqPost(array('discussid'))->reqLogin()->reqEditable(I('post.discussid'));
	 	$data = I('post.');
	 	$data['id'] = I('post.discussid');
	 	$this->ajaxReturn(D('Discuss')->updateDiscuss($data));
	 }
	 /**
	  * 删除讨论信息
	  */
	 public function delete(){
	 	$this->reqLogin();
	 	$this->reqPost(array('discussid'))->reqEditable(I('post.discussid'));
	 	$this->ajaxReturn(D('Discuss')->deleteDiscuss(I('post.discussid')));
	 }
	 /**
	  * 评论一讨论
	  */
	 public function createComment(){
	 	//TODO QC::检查是否有评论权限
	 	$this->reqPost(array('discussid','content'))->reqLogin();
	 	$this->ajaxReturn(D('Comment')->createComment(I('post.')));
	 }
	 /**
	  * 删除评论
	  */
	 public function deleteComment(){
	 	//TODO QC::检查是否有删除评论权限
	 	$this->reqPost(array('commentid'))->reqLogin();
	 	$this->ajaxReturn(D('Comment')->deleteComment(I('post.commentid')));
	 }
	 /**
	  * 获得一讨论的信息
	  * @param unknown $discussid 讨论id
	  * @param number $withComments 是否需要返回评论列表(0不需要 1需要)
	  */
	 public function info($discussid,$withComments = 0){
	 	$this->reqLogin();
	 	$this->ajaxReturn(D('Discuss')->info($discussid,$withComments));
	 }
	 /**
	  * 
	  * @param unknown $discussid 讨论id
	  */
	 /**
	  * 获得一讨论的评论的列表
	  * @param unknown $discussid 讨论id
	  * @param int $with_member 是否返回发布者昵称 0否1是，默认0
	  * @param int $page
	  * @param int $limit
	  */
	 public function listComment($discussid,$with_member = 0,$page = 1 ,$limit = 10){
	 	$this->reqLogin();
	 	if($with_member==0){
	 	    $this->ajaxReturn(D('Comment')->lists($discussid,$page,$limit));
	 	}else{
	 	    $this->ajaxReturn(D('Comment')->lists_with_member($discussid,$page,$limit));
	 	}
	 	
	 }
	 /**
	  * 获得会议的讨论列表
	  * @param int $meetid 会议id
	  */
	 public function lists($meetid, $page = 1 ,$limit = 10){
	 	$this->reqLogin();
	 	$this->ajaxReturn(D('Discuss')->lists($meetid,$page,$limit));
	 }
}

