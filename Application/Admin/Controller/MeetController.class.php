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
}