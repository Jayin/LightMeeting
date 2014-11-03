<?php
namespace Home\Model;
use Think\Model;
class MeetModel extends Model{
	public function addmeet($data){
			
		$data["starttime"]=strtotime($data["starttime"]);
		$data["endtime"]=strtotime($data["endtime"]);	
		
		return $this->add($data);
	}
	
	public function updatemeet($data){
		

		$data["starttime"]=strtotime($data["starttime"]);
		$data["endtime"]=strtotime($data["endtime"]);
		
		return $this->save($data);
	}
}