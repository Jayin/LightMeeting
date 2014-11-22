<?php

namespace Admin\Controller;

use Admin\Controller\AdminBaseController;

class MeetController extends AdminBaseController {
    

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
    
    /**
     * 会议更新
     *
     *   */
    public function updatemeet($id){
        //echo $id;
        $this->reqLogin();

        $MeetModel=D("Meet");
        $res=$MeetModel->findmeet($id);
        $data=$res["response"];
        if($res["code"]==20000){
            $starttime=$data["starttime"];
            $data["starttime"]=date("Y-m-d",$starttime);
            $data["starttime-h"]=date("H",$starttime);
            $data["starttime-i"]=date("i",$starttime);
            
            $endtime=$data["endtime"];
            $data["endtime"]=date("Y-m-d",$endtime);
            $data["endtime-h"]=date("H",$endtime);
            $data["endtime-i"]=date("i",$endtime);
            
            $this->assign("Meet",$data);
            $this->assign("id",$id);
        }
       
        $this->display();
    }
    
    
    /**
     * 会议详情
     *
     *   */
    
    public function detail($id=0){
        $this->reqLogin();
        $Meetmodel=D("Meet");
       
        $LoginMember=$this->reqLoginmember(); //获取登录用户
        $res=$Meetmodel->findmeet($id);  //查找对应meet
         
        
        if(isset($res["code"])){
            $meet=$res["response"];
            
            $Membermodel=D("Member"); //获取相关联的会议创建人
            $resMember=$Membermodel->getMemberInfo($meet["createmember"])["response"];
 
            $this->assign("Meet",$meet);
            $this->assign("LoginMemberid",$LoginMember["id"]); //分配登录id
            $this->assign("Member",$resMember);
            
        }else{
            $this->error("查不到此会议");
        }
       

        
         $this->display();
        
        
    }
    
    
    /**
     * 会议文档
     *
     *   */
    
    
    public function document($id){
        $this->reqLogin(); 
        $Meet["id"]=$id;  //将会议id分配前端页面显示
        $this->assign("Meet",$Meet);
        
        
        $DocModel=D("Document");
        $LoginMember=$this->reqLoginmember(); //获取登录用户
        
        $res=$DocModel->listmeetdoc1($id);
        if(isset($res["code"])){
            $doc=$res["response"];
            
            $this->assign("doc",$doc);
            $this->assign("LoginMemberid",$LoginMember["id"]); //分配登录id
           
        }
        
        $this->display();
    }
    
    
    /**
     * 创建会议文档
     *@param
     *所属会议id
     *   */
    
    public function createdocument($id){
        $Meet["id"]=$id;  //将会议id分配前端页面显示
        $this->assign("Meet",$Meet);
        $this->display();
    }
    
    /**
     * 文档更新
     *@param
     *所属文档id
     *   */
    
    public function updatedocument($id){
        
        $this->reqLogin();
        $DocModel=D("Document");
        $res=$DocModel->listdoc($id);
        
        if($res){
            $doc=$res["response"];
            $Meet["id"]=$doc["meetid"];  //将会议id分配前端页面显示
            $this->assign("Meet",$Meet);
            $this->assign("doc",$doc);

        }
        
        
        
        
        
        $this->display();
    }
    
    /**
     * 创建会议讨论
     *@param
     *所属会议id
     *   */
    
    Public function creatediscuss($id){
        $this->reqLogin();
        $Meet["id"]=$id;  //将会议id分配前端页面显示
        $this->assign("Meet",$Meet);
        $this->display();
    }
    
    
}