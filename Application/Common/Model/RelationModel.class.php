<?php
namespace Common\Model;

use Common\Model\BaseModel;

class RelationModel extends BaseModel{
	protected $readonlyField = array("id","ctime");
	protected $_validate = array(
			array("vicememberid",'','添加人不能为空',self::EXISTS_VALIDATE,'notequal')
	);

    /**
     * 创建人脉关系
     * @param $data
     * @return json
     */
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

    /**
     * 删除人脉关系
     * @param $id 人脉id
     * @return json
     */
	public function deleteRelation($id){
		$res=$this->where("id=".$id)->delete();
		if($res){
		    return qc_json_success();
		}else {
			return qc_json_error("删除失败");
		}
			
	}

    /**
     * 获得某人得人脉关系
     * @param $hostmemberid 用户id
     * @param $page 页码
     * @param $limit  返回数
     * @return json
     */
	public function lists($hostmemberid, $page = 1, $limit = 10){
        if($page <= 0 ){
            $page = 1;
        }
        if($limit <= 0){
            $limit = 10;
        }
		$res=$this->table("qc_member m,qc_relation r")
		->field("r.id as relationid,m.id,m.nickname,m.sex,m.company,m.position")
		->where("r.vicememberid=m.id and hostmemberid='%s'",$hostmemberid)->limit(($page-1)*$limit,$limit)->select();
		if($res){
			return qc_json_success($res);
		}else{
			return qc_json_success(array());//没有数据直接返回空数组
		}
		
		
	}
	
}