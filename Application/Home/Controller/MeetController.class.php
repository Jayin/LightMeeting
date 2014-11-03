<?php

namespace Home\Controller;

use Think\Controller;

class MeetController extends Controller {
	public function index(){
		echo "hello";
	}
	
	/*
	 *
	* 获取相应的会议
	*
	*/
	
	public function getmeet(){
		$meetid=I("get.meetid");//获取相应的id
		
	}
	
	
	
}
	