<?php

namespace Home\Controller;

use Think\Controller;
use Common\Controller\BaseController;




class CompanyController extends BaseController {
	public function index(){
		echo "hello ";
	}
	
	/*  
	 * 添加公司
	 * 
	 [cname] => 袂卓工作室1
    [cintro] => 五邑大学袂卓工作室1
    [caddress] => 五邑大学北主楼1608
    [ctime] => 1415344643
	*/
	
	
	public function addcompany(){
		
		$postdata=array("cname");
		$this->reqPost($postdata)->getlogin();
		
		$data=I("post.");
		$data["ctime"]=time(); //添加该数据的时间
		$data["createmember"]=session("member")["id"];  //创建人的id就是当前登录人的id'
		
		
		//print_r($data);
		$member=D("company");
		$res=$member->add($data);
		if($res){
			$this->ajaxReturn(qc_json_success());
		}else{
			$this->ajaxReturn(qc_json_error());
		}
	}
	
	
	/*
	 * 更新公司信息
	*
	[id]=>1
	[cname] => 袂卓工作室1
	[cintro] => 五邑大学袂卓工作室1
	[caddress] => 五邑大学北主楼1608
	*/
	
	
	public function updatecompany(){
		$this->getlogin();
		$data=I("post.");
		$member=session("member"); //得到当前登录用户
		$companymodel=D("company");
		$memberid=$companymodel->getvalue($data[id],"createmember"); //获得此公司的建立的人
		
		if($member["id"]==$memberid){ //建立人和当前登录的人一致，可以修改
			$res=$companymodel->save($data); 
			if($res){
				$this->ajaxReturn(qc_json_success()); //修改成功
			}else{
				$this->ajaxReturn(qc_json_error());
			}
		}else{
			$this->ajaxReturn(qc_json_error("member illegal"));
		}
		
		//print_r($data);
		
	}
	
	/*
	 * 删除公司信息
	*   
	*/
	
	
	
	public function deletecompany(){
		$this->getlogin();
		$companyid=I("post.companyid");
		$member=session("member"); //得到当前登录用户
		$companymodel=D("company");
		$memberid=$companymodel->getvalue($companyid,"createmember"); //获得此公司的建立的人
		
		
		if($member["id"]==$memberid){
			$res=$companymodel->where("id=".$companyid)->delete();
			if($res){
				$this->ajaxReturn(qc_json_success()); //删除成功
			}else{
				$this->ajaxReturn(qc_json_error());
			}
		}else{
			$this->ajaxReturn(qc_json_error("member illegal"));
		}
		
	}
	
	/*
	 * 添加公司的职位信息
	*
	*/
	
	
	public function addposition(){
		
	}
	
	
	
	
	
}