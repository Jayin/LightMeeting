<?php
namespace Common\Model;

use Common\Model\BaseModel;
/**
 * 推送消息模型
 * @author zjien
 * @author Jayin Ton
 */
class PushMessageModel extends BaseModel{
    const MSG_TYPE_ALL = 1;
    const MSG_TYPE_MEET = 2;
    const MSG_TYPE_PERSON = 3;

    protected $_auto = array(
        array('ctime',NOW_TIME,self::MODEL_INSERT)
    );
    /**
     * 创建
     * @param array $data
     * @return json
     */
    public function createMessage($data){
        if($data['type'] == self::MSG_TYPE_ALL){
            $data['to'] = 'a';
        }else if($data['type'] == self::MSG_TYPE_MEET){
            $data['to'] = 'm_' . $data['to'] ;
        }else if($data['type'] == self::MSG_TYPE_PERSON ){
            $data['to'] = 'p_' . $data['to'];
        }else{
        	return qc_json_error('没有该发送对象');
        }
        //创建人
        $data['author'] = qc_getLoginUser()['id'];
        if($this->create($data)){
            $id = $this->add();
            if($id){
            	return qc_json_success($id);
            }
            return qc_json_error();
        }
        return qc_json_error($this->getError());
    }
    /**
     * 删除
     * @param  int $id 消息id
     * @return json
     */
    public function deleteMessage($id){
        $res = $this->where("id=%s",$id)->limit(1)->delete();
        if($res){
        	return qc_json_success('删除成功');
        }
        return qc_json_error('删除失败');
    }
    /**
     * 发送成功，添加msg_id
     * @param int $id
     * @param int $msg_id
     * @return json
     */
    public function addMsgId($id,$msg_id){
    	$this->id = $id;
    	$this->msg_id = $msg_id;
    	if($this->save()){
    		return qc_json_success();
    	}
    	return qc_json_error();
    }

    /**
     * 查看所有推送的消息
     * @param int $page 当前页数默认为1
     * @param int $limit  每页大小默认为10
     * @param int $type 消息类型 MSG_TYPE_ALL by default
     * @param int $id 对应类型的
     * @return json
     */
    public function lists($type = self::MSG_TYPE_ALL,$id = 0,$page = 1,$limit = 10){
    	if($page <= 0){
    		$page = 1;
    	}
    	if($limit <= 0){
    		$limit = 10;
    	}
        $map['type'] = $type;
        if($type == self::MSG_TYPE_ALL){
            $map['to'] = 'a';
        }else if($type == self::MSG_TYPE_MEET){
            $map['to'] = 'm_' . $id;
        }else if($type == self::MSG_TYPE_PERSON){
            $map['to'] = 'p_' . $id;
        }else{
            return qc_json_error('消息类型不支持: '.$type);
        }
    	$res = $this->where($map)->limit(($page-1)*$limit,$limit)->select();
        if($res){
            return qc_json_success($res);
        }
        return qc_json_success(array());
    }
}