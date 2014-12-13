<?php

namespace Common\Model;
/**
 * Class CommentModel
 * @author Jayin Ton
 * @package Common\Model
 */
class CommentModel extends BaseModel {
	
	protected $_validate = array(
			array('discussid','require','缺少关联的讨论id',self::MUST_VALIDATE,'regex',self::MODEL_INSERT),
			array('author','require','缺少回复(评论)人',self::MUST_VALIDATE,'regex',self::MODEL_INSERT),
			array('content','require','缺少评论内容',self::MUST_VALIDATE,'regex',self::MODEL_INSERT),
	);
	
	protected $_auto = array(
			array('ctime',NOW_TIME,self::MODEL_INSERT),
			array('cip','get_client_ip',self::MODEL_INSERT,'function'),
			array('reply_member','0',self::MODEL_INSERT),
	);
	protected $readonlyField = array('discussid','reply_member','author','ctime','cip');
	
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
	 * @param int page 页码
	 * @param int 返回数
	 * @return json
	 */
	public function lists($discussid,$page = 1,$limit = 10){
		if($page <= 0){
			$page = 1;
		}
		if($limit <= 0){
			$limit = 10;
		}
		$res = $this->where("discussid=%s",$discussid)->limit(($page-1)*$limit,$limit)->order('ctime desc')->select();
		if($res){
			return qc_json_success($res);
		}
		return qc_json_success(array());
	}
	
	
	/**
	 * 获得一讨论的所有评论
	 * @param array $discussid
	 * @param int page 页码
	 * @param int 返回数
	 * @return json
	 */
	public function lists_with_member($discussid,$page = 1,$limit = 10){
	    if($page <= 0){
	        $page = 1;
	    }
	    if($limit <= 0){
	        $limit = 10;
	    }
	    $res = $this->field("c.*,m.nickname")
	    ->table("qc_comment c,qc_member m")
	    ->where("m.id=c.author and c.discussid=%s",$discussid)
	    ->limit(($page-1)*$limit,$limit)
	    ->order('ctime desc')->select();
	    if($res){
	        return qc_json_success($res);
	    }
	    return qc_json_success(array());
	}
}

