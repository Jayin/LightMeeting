<?php
namespace Home\Model;
use Think\Model;
class JoinmeetModel extends Model{
	
	
	public function addjoin($data){
		$data["stime"]=time();
		$where="meetid=".$data["meetid"]." and memberid=".$data["memberid"];
		$res=$this->where($where)->find();
		if($res){
			return false;
		}
		return $this->add($data);
	}
	
	
	public function getjoinmember($meetid){
		//通过会议id查找参加会议人员
		$sql="select m.id,m.username,m.nickname,m.sex,m.company,m.position,j.stime from qc_joinmeet j,qc_member m where m.id=j.memberid and j.meetid=".$meetid;
		$res=$this->query($sql);
		return $res;
	}
	
	public function getjoinmeet($memberid){
		$sql="select m.* from qc_joinmeet j,qc_meet m where j.meetid=m.id and j.memberid=".$memberid." order by starttime desc";
		//echo $sql;
		$res=$this->query($sql);
		return $res;
		
	}
}