<?php

namespace Admin\Controller;

use Common\Controller\BaseController;


class MemberController extends BaseController {
    /**
     * 会员登录
     *
     *   */
    
    public function index(){
        $this->reqLogin();
        $Member=$this->reqLoginmember();
        $Meetmodel=D("Joinmeet");
       // $this->Member=$Member;
         $Meet=$Meetmodel->getjoinmeet($Member["id"]);
       
        $this->assign('Member',$Member);
        $this->assign("Meet",$Meet["response"]);
        $this->display();
    }
    /**
     * 会员登录
     * 
     *   */
    public function login(){
        $this->display();
    }
    
    /**
     * 会员会员注册
     *
     *   */
    
    
    public function register(){
        $this->display();
    }
}