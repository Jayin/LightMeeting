<?php
namespace Home\Model;

use Common\Model\BaseModel;
use Org\Util\ArrayList;

class PushMessageModel extends BaseModel{
    public function createMessage($data){
        $data['sendtime']=time();
        if($this->create($data)){
            $res=$this->add();
            if($res) 
                return qc_json_success();
            
             return qc_json_error();
        }
        return qc_json_error($this->getError());
    }
    
    /**
     * 查看所有推送的消息
     * @param $pageNow=1 当前页数默认为1
     * @param $pageSize=10 每页大小默认为10
     */
    public function lists($pageNow=1,$listRows=10){
        $start=($pageNow-1)*$listRows;
        $res=$this->limit($start,$listRows)->select();
        return qc_json_success($res);
    }
    
    
    public function deleteMessage($id){
        $where="id in(%s)";
        $res=$this->where($where,$id)->delete();
        if($res)
            return qc_json_success();
        
        return qc_json_error();
    }
    
}