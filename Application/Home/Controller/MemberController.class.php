<?php

namespace Home\Controller;

use Think\Controller;
use Common\Controller\BaseController;


class MemberController extends BaseController {
	
	
	public function hello(){
		$res=D("member")->getloginmember();
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
            [company] => 1
            [position] => 1
            [phone] => 15088132444
            [email] => 364626853@qq.com
            [birth] => 2014-10-31
	*/
	public function addmember(){
		//一下数据必须不能为空
		$postdata=array('username','nickname','password','sex','company','position');
		$this->reqPost($postdata); 
		
		$data=I("post.");
		
		
		$data["ctime"]=time(); //注册时间
		$data["cIP"]=$_SERVER['REMOTE_ADDR'];//加入注册IP
		
		$data["lasttime"]=time(); //登录时间
		$data["lastIP"]=$_SERVER['REMOTE_ADDR'];//登录IP
		
		$data["password"]=md5($data["password"]);
		
	
		$data["birth"]=strtotime($data["birth"]); //将时间转化成时间戳
		//echo date("Y/m/d",$data["birth"]);
		
		$membermodel=D("Member");

		
		$res=$membermodel->add($data);

		if($res){
// 			echo "success";
			$this->ajaxReturn(qc_json_success());;
		}else{
			$this->ajaxReturn(qc_json_error());; 
		}
		
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
		
		$membermodel=D("member");
		$res=$membermodel->chklogin($username,$password); //返回一个bool  true登录成功
		
		if($res){
			session("member")["username"]."  ok";
			$this->ajaxReturn(qc_json_success());
		}else{
			$this->ajaxReturn(qc_json_error());;
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
		
		$postdata=array("memberid");
		$this->reqPost($postdata);
		
		
		$memberid=I("post.memberid");//通过get方式获取会员id
		if($memberid==NULL){
			return NULL;
		}
		
		$membermodel=M("member");
		
		$res=$membermodel->where("id=".$memberid)->find();
		
       $this->ajaxReturn(qc_json_success($res));
		
	}
	
	
	
	
	
}