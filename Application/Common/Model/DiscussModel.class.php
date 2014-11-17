<?php

namespace Common\Model;
/**
 * 讨论模型
 * @author Jayin Ton
 *
 */
class DiscussModel extends BaseModel {
	
	protected $_validate = array(
			array('meetid','require','缺少所属会议id',self::MUST_VALIDATE,'regex',self::MODEL_INSERT),
			array('memberid','require','缺少发布人id',self::MUST_VALIDATE,'regex',self::MODEL_INSERT),
			array('title','require','缺少讨论标题',self::MUST_VALIDATE,'regex',self::MODEL_INSERT),
			array('content','require','缺少讨论内容',self::MUST_VALIDATE,'regex',self::MODEL_INSERT),
	);
	
	protected $_auto = array(
			array('ctime',NOW_TIME,self::MODEL_INSERT),
	);
	/**
	 * 创建一个讨论
	 * @param array $data
	 * @return json
	 */
	public function createDiscuss($data){
		$data['memberid'] = session('member')['id'];
		if($this->create($data)){
			if($this->add()){
				return qc_json_success();
			}
			return qc_json_error("can't not create a discuss");
		}
		return qc_json_error($this->getError());
	}
	/**
	 * 更新讨论信息
	 * @param unknown $data
	 * @return Ambigous <multitype:number, multitype:number string >|Ambigous <multitype:number, multitype:number unknown >
	 */
	public function updateDiscuss($data){
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
	 * 删除讨论
	 * @param unknown $discussid
	 * @return Ambigous <multitype:number, multitype:number unknown >
	 */
	public function deleteDiscuss($discussid){
		$this->where("id=%s",$discussid)->delete();
		M('Comment')->where('discussid=%s',$discussid)->delete();
		return qc_json_success('删除成功');
	}
	/**
	 * 获得讨论信息
	 * @param unknown $discussid 讨论id 
	 * @param number $withComments 是否需要返回评论列表(0不需要 1需要) 
	 * @return unknown|Ambigous <multitype:number, multitype:number string >
	 */
	public function info($discussid,$withComments = 0){
		$res = $this->where("id=%s",$discussid)->limit(1)->select();
		if($res){
			$ret = $res[0];
			if($withComments){
				$ret['comments'] = D('Comment')->lists($discussid)['response'];
				if(empty($ret['comments'])){
					$ret['comments'] = array();
				}
			}
			//评论数
			$ret['comment_count'] = M('Comment')->where("discussid=%s",$discussid)->count();
			return $ret;
		}
		return qc_json_error('找不到该讨论信息');
	}
	/**
	 * 获得会议的讨论列表
	 * @return Ambigous <multitype:number, multitype:number unknown >
	 */
	public function lists($meetid){
		$res = $this->where("meetid=%s",$meetid)->select();
		if(empty($res)){
			$res = array();
		}
		return qc_json_success($res);
	}
}

