<?php
namespace Home\Controller;

use Common\Controller\BaseController;

/**
 * Ration controller for Home
 * @author zhlhuang
 *
 */
class RelationController extends BaseController {
	/**
	 * 添加人脉名片
	 * @param int $vicememberid  被添加人的id
	 * */
	public function create($vicememberid=NULL){
		//$vicememberid  被添加人的id
		$this->reqLogin();
	
		$member=qc_getLoginUser();
		
		$data["hostmemberid"]=$member["id"];
		$data["vicememberid"]=$vicememberid;
		
		$RelationModel=D("Relation");
		$res=$RelationModel->createRelation($data);
		$this->ajaxReturn($res);
		
	}

    /**
     * 删除人脉关系
     */
	public  function delete(){
		$this->reqPost(array("relationid"))->reqLogin();
		
		$relationid=I("post.relationid");
		$RelationModel=D("Relation");
		$res=$RelationModel->deleteRelation($relationid);
		
		$this->ajaxReturn($res);
	}

    /**
     * 获得登陆用户的人脉关系
     */
	public function lists($page = 1,$limit = 10){
		$this->reqLogin();
		
		$member=qc_getLoginUser();
		
		$RelationModel=D("Relation");
		
		$res=$RelationModel->lists($member["id"],$page,$limit);
		
		$this->ajaxReturn($res);
	}
}