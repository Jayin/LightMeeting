<?php

namespace Common\Model;

use Common\Model\BaseModel;
/**
 * 投票记录
 * @author Jayin Ton
 *
 */
class VoteRecordModel extends BaseModel {
	
	protected $_validate = array(
			array('voteid','require','缺少关联的投票表id',self::MUST_VALIDATE,'regex',self::MODEL_INSERT),
			array('optionsid','require','缺少关联的投票选项id',self::MUST_VALIDATE,'regex',self::MODEL_INSERT),
			array('memberid','require','缺少关联的用户id',self::MUST_VALIDATE,'regex',self::MODEL_INSERT),
	);
	protected $_auto = array(
			array('ip','qc_getRoteIP',self::MODEL_INSERT,'function'),
			array('ctime',NOW_TIME,self::MODEL_INSERT),
	);
	/**
	 * 新增一次投票
	 */
	public function addVote($data){
		 $data['memberid'] = session('member')['id'];
		 //检查是否已投票
		 $is_voted = $this->where("voteid=%s AND memberid=%s",$data['voteid'],$data['memberid'])
		 				  ->limit(1)
		 				  ->select();
		 if($is_voted){
		 	return qc_json_error('用户已投票，不能重复投票');
		 }
		 if($this->create($data)){
		 	if($this->add()){
		 		return qc_json_success();
		 	}
		 	return qc_json_error("can't not add a vote member");
		 }
		 return qc_json_error($this->getError());
	}
}

