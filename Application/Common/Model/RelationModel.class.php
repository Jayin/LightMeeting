<?php
namespace Common\Model;

use Common\Model\BaseModel;

class RelationModel extends BaseModel{
	protected $readonlyField = array("id","ctime");
	protected $_validate = array(
			array("vicememberid",'','添加人不能为空',self::EXISTS_VALIDATE,'notequal')
	);
	
	public function createRelation($data){
		$data["ctime"]=time();
		$res=$this->where("hostmemberid='%s' and vicememberid='%s'",$data["hostmemberid"],$data["vicememberid"])
		->find();
		if($res){
			return qc_json_error("已经添加名片了");
		}
		
		if($this->create($data)){
			if($this->add()){
				return qc_json_success();
			}else{
				return  qc_json_error("添加失败");
			}
		}else{
			return qc_json_error($this->getError());
		}
	}
	
	
	public function deleteRelation($id){
		$res=$this->where("id=".$id)->delete();
		if($res){
		    return qc_json_success();
		}else {
			return qc_json_error("删除失败");
		}
			
	}
	
	public function lists($hostmemberid){
		
		$res=$this->table("qc_member m,qc_relation r")
		->field("r.id as relationid,m.id,m.nickname,m.sex,m.company,m.position")
		->where("r.vicememberid=m.id and hostmemberid='%s'",$hostmemberid)->select();
		if($res){
			return qc_json_success($res);
		}else{
			return qc_json_success(array());//没有数据直接返回空数组
		}
		
		
	}
	
}