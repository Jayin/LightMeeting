<?php

namespace Admin\Controller;

use Think\Controller;

class MeetController extends Controller {
    

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