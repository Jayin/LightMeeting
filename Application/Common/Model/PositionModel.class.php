<?php
namespace Common\Model;

use Think\Model;

class PositionModel extends Model{
    /**
     * 
     * @param array $data 职位的信息
     * @return json
     */
    function createPosition($data){
        $data['add_time']=time();
        
        if($this->create($data)){
            $res=$this->add();
            if($res){
                return qc_json_success();
            }
            return qc_json_error('添加失败');
        }
        
        return qc_json_error($this->getError());
    }
    
    /**
     * 
     * @param array $data 需要更新的信息
     * @return json
     */
    
    function updatePosition($data){
        if($this->create($data)){
            $res=$this->save();
            if($res){
                return qc_json_success('更改成功');
            }
            return qc_json_error('更改失败');
        }
        return qc_json_error($this->getError());
    }
    
    /**
     * 
     * @param int $id 职位的id号
     * @return json
     */
    
    function deletePosition($id){
        $res=$this->where("id=%s",$id)->limit(1)->delete();
        if($res){
            return qc_json_success('删除成功');
        }
        return qc_json_error('删除失败');
    }
    
    /**
     * @param int $page=1,当前默认页面为1
     * @param int $limit=10,当前默认每页显示10条记录
     * @return json
     */
    function listsPosition($page=1,$limit=10){
        if($page <= 0){
            $page = 1;
        }
        if($limit <= 0){
            $limit = 10;
        }
        $res = $this->limit(($page-1)*$limit,$limit)->select();
        if($res){
            return qc_json_success($res);
        }
        return qc_json_error('NULL list');
    }
    
    
}