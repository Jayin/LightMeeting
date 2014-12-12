<?php

namespace Home\Controller;

use Common\Controller\BaseController;

/**
 * Class MemberController
 * 会员接口
 * @author zhlhuang
 * @package Home\Controller
 */
class MemberController extends BaseController {
    /**
     * 创建用户
     */
	public function addmember(){
		//一下数据必须不能为空   公司职位可以为空
		$postdata=array('username','nickname','password','sex');
		$this->reqPost($postdata); 
		
		$data=I("post.");
			
		$membermodel=D("Member");

		
		$res=$membermodel->addmember($data);
		$this->ajaxReturn($res);
		
	}
    /**
     * 更新会员信息
     */
	public function updatemember(){
	    //以上信息是允许更新的。
	    $this->getlogin();  //修改用户时要有用户的id
	    
	    $data=I("post.");
	    unset($data["password"],$data["username"]); //出去传进的值中password 还有username
	    
	    $member=$this->reqLoginmember();
	    $membermodel=D("Member");
	    
	    $data["id"]=$member["id"]; //修改用户的id为登录id
	    $res=$membermodel->updatemember($data);
	    
	    $this->ajaxReturn($res);
	   // print_r($data);
	   
	}
    /**
     * 更新密码
     */
	public function updatepassword(){
	    $this->reqPost(array('password','newpassword'))->getlogin();
	   
	    $password=md5(I("post.password")); //密码经过md5 加密
	    $newpassword=md5(I("post.newpassword"));
	    $member=session("member");
	    $membermodel=D("Member");
	    
	    $id=$member["id"];
	    $res=$membermodel->updatepassword($id,$password,$newpassword);
	    $this->ajaxReturn($res);
	    
	    
	    print_r($member);
	    
	}
    /**
     * 登陆
     */
	public function login(){
		$postdata=array("username","password");
		$this->reqPost($postdata);
		
	 	$username=I("post.username");
		$password=md5(I("post.password"));
		
		$membermodel=D("Member");
		$res=$membermodel->chklogin($username,$password); //返回一个bool  true登录成功

		$this->ajaxReturn($res);
	}
    /**
     * 退出登陆
     */
	public function logout(){
	    session("member",null);
	    if(session("member")==NULL){
	        $this->ajaxReturn(qc_json_success());
	    }else{
	        $this->ajaxReturn(qc_json_error());
	    }
	}
    /**
     * 获取登录会员资料
     */
	public function getloginmember(){
	   
	   
	    $this->reqLogin();
	  
	    $member=$this->reqLoginmember();
	 
	    $this->ajaxReturn(qc_json_success($member));
	}
    /**
     * 获取全部会员资料
     */
	function getallmember(){
		$membermodel=M("member");
		$res=$membermodel->select();
      $this->ajaxReturn(qc_json_success($res));
	}
    /**
     * 获得一用户的信息(给定的id)
     */
	function getonemember(){
		$this->reqLogin();

		$memberid=I("post.memberid");//通过post方式获取会员id
		if($memberid==NULL){
			$memberid=$this->reqLoginmember()["id"];// 如果传入会议id为空，默认登录会员id
		}
		$membermodel=D("Member");

		$res=$membermodel->getMemberInfo($memberid);

        $this->ajaxReturn($res);
	}

	
}