<?php

namespace Home\Controller;

use Common\Controller\BaseController;

/**
 * defalut controller for Home
 * @author Jayin Ton
 *
 */
class IndexController extends BaseController {
	
	public function index(){
        $this->redirect('Admin/Member/Login');
    }
	public function test(){
		$this->display();
	}

	public function test_mutiPost(){
		$this->ajaxReturn(qc_json_success(I('post.')));
	}

    public function req_get_test(){
        $this->reqGet(array('id','ruby'));
        $this->ajaxReturn(I('id'));
    }
	
}