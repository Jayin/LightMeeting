<?php

namespace Home\Controller;

use Think\Controller;




class MemberController extends Controller {
	
	
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
			echo $res;
		}else{
			echo $res; 
		}
		
	}
	
	
	/*
	 *
	* 这里是会员的登录界面
	*
	*/
	
	public function login(){
		
	 	$username=I("post.username");
		$password=md5(I("post.password"));
		
		$membermodel=D("member");
		$res=$membermodel->chklogin($username,$password); //返回一个bool  true登录成功
		
		if($res){
			echo session("member")["username"]."  ok";
		}else{
			echo "error";
		}
	}
	

	/*
	 *
	* 获取会员相应资料
	*Param id 是用户的指定id（默认为空从session）  key  就是我们要查找会员属性
	*/
	

	public function  getfield(){
		
		    $key=I("get.key");
		    $member=session("member");
		    if($member==NULL){
		    	echo "errror";
		    }else{
		    	echo  $member[$key];
		    	
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
		echo "<pre>";
		print_r($res);
		echo "</pre>";
	}
	
	/*
	 * 
	 * 通过传入一个memberid值，获得一个会员资料
	 *   
	 */
	function getonemember(){
		$memberid=I("get.memberid");//通过get方式获取会员id
		if($memberid==NULL){
			return NULL;
		}
		
		$membermodel=M("member");
		
		$res=$membermodel->where("id=".$memberid)->find();
		
		echo "<pre>";
		print_r($res);
		echo "</pre>";
		
	}
	
	
	
	
	
}