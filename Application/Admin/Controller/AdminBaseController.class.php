<?php

namespace Admin\Controller;

use Common\Controller\BaseController;

class AdminBaseController extends BaseController {
    
    public function reqLogin(){
        $member=session("member");
		if($member==NULL){
			$this->redirect('Admin/Member/login');
		}else{
			return $this;
		}
    }
   
}