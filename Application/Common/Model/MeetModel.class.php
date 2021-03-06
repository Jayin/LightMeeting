<?php
namespace Common\Model;

use Common\Model\BaseModel;

/**
 * Class MeetModel
 * 会议模型
 * @author Zhlhuang
 * @package Common\Model
 */
class MeetModel extends BaseModel{
    protected $readonlyField = array("id","createmember");
    
    //时间格式进行判断
    protected $_validate = array(
        array("title",'','主题不能为空',self::EXISTS_VALIDATE,'notequal'),
        array("starttime",'checktime','起始时间格式错误',self::EXISTS_VALIDATE,'callback'),
        array("endtime",'checktime','结束时间格式错误',self::EXISTS_VALIDATE,'callback')
    );
    public function checktime($starttime){
        //时间不能小于当前时间
        if($starttime==NULL||$starttime<time()){
            return false;
        }
        return true;
    }

    /**
     * 创建会议
     * @param $data
     * @return \multitype
     */
	public function addmeet($data){
		$data["starttime"]=strtotime($data["starttime"]);//将格式化时间转化成时间戳
		$data["endtime"]=strtotime($data["endtime"]);
	
		if(!$this->create($data)){
			return qc_json_error($this->getError()); 
		}
		$res=$this->add();
		if($res){
		    $joindata=array("meetid"=>$res,"memberid"=>$data["createmember"]);
		    $joinmodel=D("Joinmeet"); //实例化一个参加会议表
		    $joinmodel->addjoin($joindata);
		    
		   return  qc_json_success(); //添加会议成功
		}else{
		    return qc_json_error("添加失败"); //添加会议失败
		}
	}

    /**
     * 更新会议
     * @param $data
     * @return \multitype
     */
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
		   return qc_json_error("没有更新数据");
		}
		
	}

    /**
     * 删除会议
     * @param $meetid
     * @param $memberid
     * @return \multitype
     */
	public function deletemeet($meetid,$memberid){
	    if($meetid){
	        
	        $res=$this->where("createmember='%s' and id='%d'",$memberid,$meetid)->delete();
	        if($res){
	            return qc_json_success();
	        }else{
	            return qc_json_error("删除失败");
	        }
	    }else{    
	        return qc_json_error("数据错误");
	    }	    
	}

    /**
     * 获得(查询)会议
     * @param $id
     * @return \multitype|null
     */
	public function findmeet($id){
	    $res=$this->where("id=".$id)->find();
	    
	    if($res){
	       return qc_json_success($res);
	    }
	    
	    
	    return NULL;
	}
	
	
}