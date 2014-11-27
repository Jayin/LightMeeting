<?php

namespace Home\Controller;

use Think\Controller\RestController;

/**
 * defalut controller for Home
 * @author Jayin Ton
 *
 */
class IndexController extends RestController {
	
	
	public function test(){
		$this->display();
	}

	public function test_mutiPost(){
		$this->ajaxReturn(qc_json_success(I('post.')));
	}
	
}