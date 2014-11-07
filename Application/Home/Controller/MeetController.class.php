<?php

namespace Home\Controller;

use Think\Controller;
use Common\Controller\BaseController;

class MeetController extends BaseController {
	public function index(){
		echo "hello";
	}
	/*
	 *
	* 添加会议
	*   
	"title": "袂卓第二次会议",
    "intro": "这是我们第二次全体例会",
    "address": "北主楼1608",
    "weight": "20",
    "starttime": "Y-m-d H:i:s", eg 2014-09-25 21:30:25
    "endtime": "Y-m-d H:i:s"
	*/
	
	public  function addmeet(){
		
		$postdata=array("title","address","starttime");
		$this->reqPost($postdata)->getlogin();
		
		
		
		$data=I("post.");
		$member=session("member");
			if(!$data){ //post 数据为空  真返回错误提示
				echo "post error";
				exit;
			}
			$data["createmember"]=$member["id"];//创建会议人
			$meetmodel=D("meet");
			$res=$meetmodel->addmeet($data);
			
			if($res){
				$this->ajaxReturn(qc_json_success()); //添加会议成功
			}else{
				$this->ajaxReturn(qc_json_error()); //添加会议失败
			}

		
	//	echo date("Y/m/d H:i:s",$data["endtime"]);
	}
	
	/*
	 *
	* 更新会议
	*
	"id":2
	"title": "袂卓第二次会议",
	"intro": "这是我们第二次全体例会",
	"address": "北主楼1608",
	"createmember": "2",   //可以从客户端传过来
	"weight": "20",
    "starttime": "Y-m-d H:i:s", eg 2014-09-25 21:30:25
    "endtime": "Y-m-d H:i:s"
	* 上面是我们需要修改的数据
	*/
	public function updatemeet(){
		$data=I("post.");
		$meetmodel=D("meet"); //实例化一个model
		if($data){
			$res=$meetmodel->updatemeet($data);
			if($res){
				$this->ajaxReturn(qc_json_success());
			}else{
				$this->ajaxReturn(qc_json_error("no data update"));
			}
		}else{
			$this->ajaxReturn(qc_json_error("post NULL"));
		}
		
		
	}
	
	
	/*
	 *
	* 删除相应的会议
	* meetid 会议的id
	*/
	
	public function deletemeet(){
		
		$postdata=array("meetid");
		$this->reqPost($postdata)->getlogin();
		
		
		$meetid=I("post.meetid");
		$meetmodel=D("meet");
		if($meetid){
		 $res=$meetmodel->where("id=".$meetid)->delete();
		 if($res){
		 	$this->ajaxReturn(qc_json_success());
		 }else{
		 	$this->ajaxReturn(qc_json_error());
		 }
		}else{
			echo "post error";
		}
		
	}
	
	/*
	 *
	* 获取相应的会议
	*meetid 指定查找id  为空是获得全部会议
	*field 是json 格式 {"0":"title","1":"address"}
	*/
	
	public function getmeet(){
		
		$postdata=array("meetid");
		$this->reqPost($postdata)->getlogin();
		
		$meetid=I("post.meetid");//获取相应的id
		$field=I("post.field",'',''); //拿到想要获得的字段  用json的格式传送   不做任何格式转化
		
		if($field){//如果指定了想要的字段，则要通过json的格式输入
			$field=json_decode($field,1);
		}
		
		$meetmodel=D("meet");
		
		
		
		if($meetid==NULL){
			$res=$meetmodel->select();
		}else{
			$res=$meetmodel->field($field)->where("id=".$meetid)->find();
		}
		$this->ajaxReturn(qc_json_success($res));
	}
	
	/*
	 *
	* 会议添加成员
	*meetid 会议id
	*memberid 成员id
	*/
	
	public function addjoin(){
		
		$postdata=array("meetid","memberid");
		$this->reqPost($postdata);		
		
		$data=I("post.");
		$joinmodel=D("joinmeet");

			$res=$joinmodel->addjoin($data);
			if($res){
				$this->ajaxReturn(qc_json_success());
			}else{
				$this->ajaxReturn(qc_json_error());
			}		
	}
	
	
	/*
	 *
	*查看会议成员
	*meetid 会议id
	*return json
	* [{
        "id": "2",
        "username": "zhlhuang",
        "nickname": "黄振炼",
        "sex": "m",
        "company": "1",
        "position": "1",
        "stime": "1415080561"
      }]
	*
	*/
	
	public function getjoinmember(){
		$meetid=I("post.meetid"); //通过post 传入会议id
		$joinmodel=D("joinmeet");
		$res=$joinmodel->getjoinmember($meetid);
		
		if($res){
			$this->ajaxReturn(qc_json_success($res));
		}else{
			$this->ajaxReturn(qc_json_error());
		}
	}
	
	
	
	/*
	 *
	*查看会议列表
	*memberid 会员的id（查找该会员相关的会议）
	*
	[
    {
        "id": "1",
        "title": "袂卓第一次会议",
        "intro": "这是我们第一次全体例会",
        "address": "北主楼1608",
        "createmember": "2",
        "weight": "20",
        "starttime": "1411039823",
        "endtime": "1411047056"
    }
    ]
	*/
	
	public function getjoinmeet(){
		$memberid=I("post.memberid"); //根据会员的id 查看参加会议列表
		$joinmodel=D("joinmeet");
		$res=$joinmodel->getjoinmeet($memberid);
		if($res){
			$this->ajaxReturn(qc_json_success($res));
		}else{
			$this->ajaxReturn(qc_json_error());
		}
		
		
	}
	
	
}
	