<?php

namespace Common\Model;

class CommentModel extends BaseModel {
	
	protected $_validate = array(
			array('discussid','require','缺少关联的讨论id',self::MUST_VALIDATE,'regex',self::MODEL_INSERT),
			array('author','require','缺少回复(评论)人',self::MUST_VALIDATE,'regex',self::MODEL_INSERT),
			array('content','require','缺少评论内容',self::MUST_VALIDATE,'regex',self::MODEL_INSERT),
	);
	
	protected $_auto = array(
			array('ctime',NOW_TIME,self::MODEL_INSERT),
			array('cip','qc_getRoteIP',self::MODEL_INSERT,'function'),
			array('reply_member','0',self::MODEL_INSERT),
	);
	
	/**
	 * 创建一评论
	 * @param array $data
	 * @return json
	 */
	public function createComment($data){
		$data['author'] = session('member')['id'];
		if($this->create($data)){
			if($this->add()){
				return qc_json_success();
			}
			return qc_json_error("can't not create a comment");
		}
		return qc_json_error($this->getError());
	}
	/**
	 * 删除评论
	 * @param array $commentid
	 * @return json
	 */
	public function deleteComment($commentid){
		if($this->where("id=%s AND author=%s",$commentid,qc_getLoginUser()['id'])->delete()){
			return qc_json_success('删除成功');
		}
		return qc_json_error('删除失败');
	}
	/**
	 * 获得一讨论的所有评论
	 * @param array $discussid
	 * @return json
	 */
	public function lists($discussid){
		$res = $this->where("discussid=%s",$discussid)->order('ctime asc')->select();
		if($res){
			return qc_json_success($res);
		}
		qc_json_success(array());
	}
}
