<?php

namespace Home\Controller;

use Common\Controller\BaseController;


class MemberController extends BaseController {
	
	
	public function hello(){
		$res=D("Member")->getloginmember();
		echo "<pre>";
		print_r($res);
		echo "</pre>";
	}
	/*
	 *
	* 通过传入一个memberid值，获得一个会员资料
	* 需要传入会员资料有：
	*       [username] => zhlhuang
            [nickname] => 黄振炼
            [password] => 123
            [sex] => m
            [company] => 0
            [position] => 0
            [phone] => 15088132444
            [email] => 364626853@qq.com
            [birth] => 2014-10-31
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
	
	/*
	 * 通过传入一个memberid值，获得一个会员资料
	 * 需要传入会员资料有：
	 [id]=>2
	 [nickname] => 黄振炼
	 [sex] => m
	 [company] => 0
	 [position] => 0
	 [phone] => 15088132444
	 [email] => 364626853@qq.com
	 [birth] => 2014-10-31
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
	
	/*
	 *
	 * 这是用户密码修改
	 *  id 用户id
	 *  password  旧密码 
	 *  newpassword  新密码
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
	
	/*
	 *
	* 这里是会员的登录界面
	*  所需数据，username password
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
	
	/*
	 *
	 *退出登录
	 */
	public function logout(){
	    session("member",null);
	    if(session("member")==NULL){
	        $this->ajaxReturn(qc_json_success());
	    }else{
	        $this->ajaxReturn(qc_json_error());
	    }
	}
	

	/*
	 *
	* 获取会员相应资料
	*Param id 是用户的指定id（默认为空从session）  key  就是我们要查找会员属性
	*
	*返回
	*{
    "code": 20000,
    "response": {
        "username": "zhlhuang"
    }
     }
	*/
	

	public function  getfield(){
		
		    $key=I("get.key");
		    $member=session("member");
		    if($member==NULL){
		    	$this->ajaxReturn(qc_json_error());
		    }else{
// 		    	echo  $member[$key];
		    	
		    	$this->ajaxReturn(qc_json_success(array($key=>$member[$key])));
		    	
		    }
	}
	
	
	/*
	 *
	 * 获取登录会员资料
	 *
	 */
	public function getloginmember(){
	   
	   
	    $this->reqLogin();
	  
	    $member=$this->reqLoginmember();
	 
	    $this->ajaxReturn(qc_json_success($member));
	}
	
	/*
	 *
	* 获取全部会员资料
	*
	*/
	
	
	function getallmember(){
		$membermodel=M("member");
		$res=$membermodel->select();
      $this->ajaxReturn(qc_json_success($res));
	}
	
	/*
	 * 
	 * 通过传入一个memberid值，获得一个会员资料
	 *   
	 */
	function getonemember(){
		
		
		$this->reqLogin();
		
		
		$memberid=I("post.memberid");//通过post方式获取会员id
		if($memberid==NULL){
			$memberid=$this->reqLoginmember()["id"];// 如果传入会议id为空，默认登录会员id
		}
		
		$membermodel=D("Member");
		
		$res=$membermodel->getMemberInfo($memberid);
		
       $this->ajaxReturn(qc_json_success($res));
		
	}
	
	
}