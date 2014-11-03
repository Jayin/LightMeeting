<?php

namespace Home\Controller;

use Think\Controller;




class IndexController extends Controller {
	
	
	function test(){
		$this->display();
	}
	
	
	
	/*
	 *
	* 获取全部会员资料
	*
	*/
	
	
	function getallmember(){
		$membermodel=M("member");
		$res=$membermodel->select();
		echo "<pre>";
		print_r($res);
		echo "</pre>";
	}
	
	/*
	 * 
	 * 通过传入一个memberid值，获得一个会员资料
	 *   
	 */
	function getonemember(){
		$memberid=I("get.memberid");//通过get方式获取会员id
		if($memberid==NULL){
			return NULL;
		}
		
		$membermodel=M("member");
		
		$res=$membermodel->where("id=".$memberid)->find();
		
		echo "<pre>";
		print_r($res);
		echo "</pre>";
		
	}
	
}