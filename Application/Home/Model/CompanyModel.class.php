<?php
namespace Home\Model;
use Think\Model;
class CompanyModel extends Model{
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