<?php

namespace Home\Controller;

use Think\Controller;

/**
 * defalut controller for Home
 * @author Jayin Ton
 *
 */
class IndexController extends Controller {
	
	
	public function test(){
		$this->display();
	}

	public function test_mutiPost(){
		$this->ajaxReturn(qc_json_success(I('post.')));
	}
}