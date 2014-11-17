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
	 	$this->reqPost(array('meetid','title','content'));
	 	$this->ajaxReturn(D('Discuss')->createDiscuss(I('post.')));
	 }
	 /**
	  * 更新讨论信息
	  */
	 public function update(){
	 	$this->reqPost(array('discussid'))->reqEditable(I('post.discussid'));
	 	$data = I('post.');
	 	$data['id'] = I('post.discussid');
	 	$this->ajaxReturn(D('Discuss')->updateDiscuss($data));
	 }
	 /**
	  * 删除讨论信息
	  */
	 public function delete(){
	 	$this->reqPost(array('discussid'))->reqEditable(I('post.discussid'));
	 	$this->ajaxReturn(D('Discuss')->deleteDiscuss(I('post.discussid')));
	 }
	 /**
	  * 评论一讨论
	  */
	 public function createComment(){
	 	//TODO QC::检查是否有评论权限
	 	$this->reqPost(array('discussid','content'));
	 	$this->ajaxReturn(D('Comment')->createComment(I('post.')));
	 }
	 /**
	  * 删除评论
	  */
	 public function deleteComment(){
	 	//TODO QC::检查是否有删除评论权限
	 	$this->reqPost(array('commentid'));
	 	$this->ajaxReturn(D('Comment')->deleteComment(I('post.commentid')));
	 }
	 /**
	  * 获得一讨论的信息
	  * @param unknown $discussid 讨论id
	  * @param number $withComments 是否需要返回评论列表(0不需要 1需要)
	  */
	 public function info($discussid,$withComments = 0){
	 	$this->ajaxReturn(D('Discuss')->info($discussid,$withComments));
	 }
	 /**
	  * 获得一讨论的评论的列表
	  * @param unknown $discussid 讨论id
	  */
	 public function listComment($discussid){
	 	$this->ajaxReturn(D('Comment')->lists($discussid));
	 }
}

