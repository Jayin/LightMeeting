<?php
namespace Home\Model;
use Think\Model;
class MemberModel extends Model{
	
	public function geton(){
		return $this->select();
	}
	
	public function chklogin($username,$password){
		//检测用户登录
		$where="username='%s' and password='%s'";
		
		$res=$this->where($where,$username,$password)->find();
		
		if($res){
			session(array('name'=>session_id(),'expire'=>20));//设置session过期的时间
			session("member",$res);//将登录成功会员数据存在session中
			return true;
		}else{
			return false;
		}
		
	}
	
	

	/*
	 *
	* 查看是否有登录用户
	*
	*/
	public function getloginmember(){
		$res=session('member');

		return $res;
	}
}