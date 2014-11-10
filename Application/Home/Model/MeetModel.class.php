<?php
namespace Home\Model;
use Think\Model;
class MeetModel extends Model{
    
    
    //时间格式进行判断
    protected $_validate = array(
        array("starttime",'checktime','starttime error',self::EXISTS_VALIDATE,'callback'),
        array("endtime",'checktime','endtime error',self::EXISTS_VALIDATE,'callback')
    );
    public function checktime($starttime){
        if($starttime==NULL){
            return false;
        }
        return true;
    }
    
	public function addmeet($data){
			
		$data["starttime"]=strtotime($data["starttime"]);//将格式化时间转化成时间戳
		$data["endtime"]=strtotime($data["endtime"]);

		$res=$this->add($data);
		
		if($res){
		   return  qc_json_success(); //添加会议成功
		}else{
		    return qc_json_error(); //添加会议失败
		}
	}
	
	public function updatemeet($data){
		//更新会议资料

	    $data["starttime"]=strtotime($data["starttime"]); //将格式化时间转化成时间戳
		$data["endtime"]=strtotime($data["endtime"]);
		
		if(!$this->create($data)){
		    return qc_json_error($this->getError());
		}
		
		$res=$this->save();
		if($res){
		    return qc_json_success();
		}else{
		   return qc_json_error("no data update");
		}
		
	}
	
	
	
	
	public function deletemeet($meetid){
	    if($meetid){
	        $res=$this->where("id=".$meetid)->delete();
	        if($res){
	            return qc_json_success();
	        }else{
	            return qc_json_error();
	        }
	    }else{    
	        return qc_json_error("post error");
	    }	    
	}
	
	
	
	
}