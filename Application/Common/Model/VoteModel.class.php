<?php

namespace Common\Model;

/**
 * 投票
 * @author Jayin Ton
 *
 */
class VoteModel extends BaseModel {
	
	protected $_auto = array(
			//创建时间
			array('ctime',NOW_TIME,self::MODEL_INSERT)
	);
	/**
	 * 创建一投票
	 * @param array $data
	 * @return json
	 */
	public function createVote($data){
		if($this->create($data)){
			if($this->add()){
				return qc_json_success();
			}
			return qc_json_error("can't not create a vote");
		}
		return qc_json_error($this->getError());
	}
	/**
	 * 更新投票信息
	 * @param array $data
	 * @return json
	 */
	public function updateVote($data){
		if($this->create($data)){
			$res = $this->save();
			if($res === false){
				return qc_json_error($this->getError());
			}
			if($res){
				return qc_json_success('更新成功');
			}
			return qc_json_success('操作成功,数据没有任何更新');
		}
	}
	/**
	 * 删除已投票项目
	 * @param int $voteid
	 * @return json
	 */
	public function deleteVote($voteid){
		$this->where('id=%d',$voteid)->delete();
		M('VoteOption')->where("voteid='%s'",$voteid)->delete();
		return qc_json_success('删除成功');
	}



	public function info($vote_id){
		
	}
}

