<?php
namespace Common\Model;

class CompanyModel extends BaseModel{
	public function getvalue($id,$key){
		$where="id=".$id;
		$res=$this->where($where)->find();
		
		if($res){
			return $res[$key];
		}else{
			return NULL;
		}
		
	}
}