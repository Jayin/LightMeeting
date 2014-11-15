<?php
namespace Home\Model;
use Think\Model;
class JoinmeetModel extends Model{
	
	
	public function addjoin($data){
		$data["stime"]=time();
		$where="meetid=".$data["meetid"]." and memberid=".$data["memberid"];
		$res=$this->where($where)->find();
		if($res){
			return qc_json_error("已经加入会议");
		}
		
		$res=$this->add($data);
		
		if($res){
		   return qc_json_success();
		}else{
		    return qc_json_error('加入失败');
		}
		
		
	}
	
	
	public function outjoin($meetid){
	    $member=session("member"); //获取当前登录用户
	    $memberid=$member["id"];  //获取当前登录用户id
	    if($member){
	        $where="meetid=".$meetid." and memberid=".$memberid;
	        $res=$this->where($where)->delete();
	        if($res){
	            return qc_json_success();
	        }else{
	            return qc_json_error('退出失败');
	        }
	    }else{
	        return qc_json_error("没有登录");
	    }
	    
	}
	
	
	public function getjoinmember($meetid){
		//通过会议id查找参加会议人员
	
		$res=$this->field("m.id,m.username,m.nickname,m.sex,m.company,m.position,j.stime")
		->table("qc_joinmeet j,qc_member m")
		->where("m.id=j.memberid and j.meetid=".$meetid)
		->select();
		
		if($res){
		    return qc_json_success($res);
		}else{
		    return qc_json_error('没有参会人员');
		}
		
	}
	
	public function getjoinmeet($memberid,$page=1,$limit=5){
	    
	    if($page==NULL){
	        $page=1;
	    }
	    
	    if($limit==NULL){
	        $limit=5;
	    }
	    
	    
		$res=$this->field("m.*")
		->table("qc_joinmeet j,qc_meet m")
		->where("j.meetid=m.id and j.memberid=".$memberid)->order("starttime desc")
		->page($page,$limit)
		->select();
		
		$i=0;
		foreach ($res as $value){
		    $res[$i]["starttime"]= date("Y-m-d H-i-s",$value["starttime"]);
		    $res[$i++]["endtime"]= date("Y-m-d H-i-s",$value["endtime"]);
		}
		
		
		
		
	    if($res){
			return qc_json_success($res);
		}
		return qc_json_error('没有参加会议');
		
	}
}