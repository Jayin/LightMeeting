<?php

namespace Admin\Controller;

use Common\Controller\BaseController;

class MeetController extends BaseController {
    

    public function index(){
    	$this->display();
    }
    
    /**
     * 添加会议
     *
     *   */
    public function createmeet(){
        $this->display();
    }
}