<?php
namespace Home\Model;

use Common\Model\BaseModel;
/** 
 * 推送消息模型
 * @author zjien
 * @author Jayin Ton
 */
class PushMessageModel extends BaseModel{

    protected $_auto = array(
        array('sendtime',NOW_TIME,self::MODEL_INSERT)
    );
    /** 
     * 创建
     * @param array $data 
     * @return json
     */
    public function createMessage($data){
        if($this->create($data)){
            $res = $this->add();
            if($res){
            	return qc_json_success();
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
     * 查看所有推送的消息
     * @param $page=1 当前页数默认为1
     * @param $limit=10 每页大小默认为10
     */
    public function lists($page = 1,$limit = 10){
    	if($page <= 0){
    		$page = 1;
    	}
    	if($limit <= 0){
    		$limit = 10;
    	}
    	$res = $this->limit(($page-1)*$limit,$limit)->select();
    	return qc_json_success($res);
    }
    
}