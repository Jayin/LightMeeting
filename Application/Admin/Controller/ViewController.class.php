<?php

namespace Admin\Controller;

use Admin\Controller\AdminBaseController;
/**
 * 查看
 * @author Jayin Ton
 *
 */
class ViewController extends AdminBaseController {
	/**
	 * 查看一会议的详情
	 * @param number $id 会议id
	 */
	public function meeting($id = 0){
		$this->reqLogin();
        $Meetmodel=D("Meet");
       
        $LoginMember=$this->reqLoginmember(); //获取登录用户
        $res=$Meetmodel->findmeet($id);  //查找对应meet
         
        
        if(isset($res["code"])){
            $Meet=$res["response"];
            
            $Membermodel=D("Member"); //获取相关联的会议创建人
            $resMember=$Membermodel->getMemberInfo($Meet["createmember"])["response"];
            
            $starttime=$Meet["starttime"];
            $Meet["starttime"]=date("Y-m-d",$starttime);
            $Meet["starttime-h"]=date("H",$starttime);
            $Meet["starttime-i"]=date("i",$starttime);
            
            $endtime=$Meet["endtime"];
            $Meet["endtime"]=date("Y-m-d",$endtime);
            $Meet["endtime-h"]=date("H",$endtime);
            $Meet["endtime-i"]=date("i",$endtime);
 
            $this->assign("Meet",$Meet);
            $this->assign("LoginMemberid",$LoginMember["id"]); //分配登录id
            $this->assign("Member",$resMember);
            
        }else{
            $this->error("查不到此会议");
        }
         $this->display();
	}
	/**
	 * 加入文章详情页面
	 * @param number $id 文档id
	 */
	public function document($id = 0){
		$this->reqLogin();
		$resDocument = D("Document")->listdoc($id);
		if(isset($resDocument['code'])){
			$Document = $resDocument['response'];
			$Document['ctime'] = date("Y-m-d",$Document['ctime']);
			
		}else{
			$Document = array('title' =>'找不到该文档');
		}
		$this->assign("Document",$Document);
		$this->display();
	}
}

