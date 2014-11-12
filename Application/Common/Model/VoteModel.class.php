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
		return qc_json_error($this->getError());
	}
	/**
	 * 删除已投票项目
	 * @param int $voteid
	 * @return json
	 */
	public function deleteVote($voteid){
		$this->where('id=%d',$voteid)->delete();
		M('VoteOption')->where("voteid=%s",$voteid)->delete();
		M('VoteRecord')->where("voteid=%s",$voteid)->delete();
		return qc_json_success('删除成功');
	}
	/**
	 * 查看一投票项
	 * @param unknown $voteid  投票id 
	 * @return json
	 */
	public function info($voteid){
		$res = $this->where("id=%s",$voteid)->limit(1)->select();
		if($res){
			$ret = $res[0];
			$ret['option'] = D('VoteOption')->lists($voteid)['response'];
			for($i = 0; $i< count($ret['option']);$i++){
				$ret['option'][$i]['count'] = M('VoteRecord')->where("voteid=%s AND optionsid=%s",$ret['option'][$i]['voteid'],$ret['option'][$i]['id'])
															 ->count();
			}
			return qc_json_success($ret);
		}
		return qc_json_error('找不到该投票项');
	}
}
