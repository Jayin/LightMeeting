<?php

namespace Admin\Controller;

use Common\Controller\BaseController;

class AdminBaseController extends BaseController {
    /**
     * 需要登录，没有登录则跳转到登录页
     */
    public function reqLogin(){
        $member=session("member");
		if($member==NULL){
			$this->redirect('Admin/Member/login');
		}else{
			return $this;
		}
    }
   
}