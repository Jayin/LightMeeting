<?php

namespace Home\Controller;

use Common\Controller\BaseController;
/**
 * 讨论接口
 * @author Jayin Ton
 *
 */
class DiscussController extends BaseController {
	 //注意权限..
	
	 public function create(){
	 	$this->reqPost(array('meetid','title','content'));
	 	$this->ajaxReturn(D('Discuss')->createDiscuss(I('post.')));
	 }
	 
	 public function update(){
	 	$this->reqPost(array('discussid'));
	 	$data = I('post.');
	 	$data['id'] = I('post.discussid');
	 	$this->ajaxReturn(D('Discuss')->updateDiscuss($data));
	 }
	 
	 public function delete(){
	 	$this->reqPost(array('discussid'));
	 	$this->ajaxReturn(D('Discuss')->deleteDiscuss(I('post.discussid')));
	 }
	 
	 public function createComment(){
	 	$this->reqPost(array('discussid','content'));
	 	$this->ajaxReturn(D('Comment')->createComment(I('post.')));
	 }
	 
	 public function deleteComment(){
	 	$this->reqPost(array('commentid'));
	 	$this->ajaxReturn(D('Comment')->deleteComment(I('post.commentid')));
	 }
	 //$withComments 1
	 public function info($discussid,$withComments = 0){
	 	$this->ajaxReturn(D('Discuss')->info($discussid,$withComments));
	 }
	 
	 public function listComment($discussid){
	 	$this->ajaxReturn(D('Discuss')->lists($discussid));
	 }
	 
}

