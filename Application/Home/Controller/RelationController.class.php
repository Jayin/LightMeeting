<?php
namespace Home\Controller;

use Common\Controller\BaseController;

/**
 * Ration controller for Home
 * @author zhlhuang
 *
 */
class RelationController extends BaseController {
	public function index(){
		echo "ok";
	}
	
	/**
	 * 添加人脉名片
	 * @param unknown $vicememberid  被添加人的id
	 * */
	public function create(){
		
		$this->reqPost(array("vicememberid"))->reqLogin();
		$vicememberid=I("post.vicememberid");
		$member=qc_getLoginUser();
		
		$data["hostmemberid"]=$member["id"];
		$data["vicememberid"]=$vicememberid;
		
		$RelationModel=D("Relation");
		$res=$RelationModel->createRelation($data);
		$this->ajaxReturn($res);
		
	}
	
	public  function delete(){
		$this->reqPost(array("relationid"))->reqLogin();
		
		$relationid=I("post.relationid");
		$RelationModel=D("Relation");
		$res=$RelationModel->deleteRelation($relationid);
		
		$this->ajaxReturn($res);
		
	}
	
	public function lists(){
		$this->reqLogin();
		
		$member=qc_getLoginUser();
		
		$RelationModel=D("Relation");
		
		$res=$RelationModel->lists($member["id"]);
		
		$this->ajaxReturn($res);
		
		
	}
}