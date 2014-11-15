<?php
namespace Home\Model;

use Think\Model;

class DocumentModel extends Model
{

    protected $_validate = array(
        array(
            "meetid",
            'checkmeetid',
            '没有此会议',
            self::EXISTS_VALIDATE,
            'callback'
        )
    );

    public function checkmeetid($meetid)
    {
        $res = $this->where("id=" . $meetid)
            ->table("qc_meet")
            ->find();
        if ($res) {
            return true;
        }
        
        return false;
    }

    /**
     * 创建文档
     * 
     * @param 文档数据 $data            
     * @param 登录会员 $member            
     */
    public function createdoc($data, $member)
    {
        $memberid = $member["id"];
        $data["memberid"] = $memberid;
        $data["ctime"]=time();
        if (! $this->create($data)) {
            return qc_json_error($this->getError());
        }
        
        $res = $this->add();
        if ($res) {
            return qc_json_success();
        } else {
            return qc_json_error();
        }
    }

    /**
     * 更新文档
     * 
     * @param 文档数据 $data            
     * @param 登录会员 $member            
     */
    public function updatedoc($data, $member)
    {
        $id = $data["id"];
        $memberid = $this->field("memberid")
            ->where("id=" . $id)
            ->find()["memberid"]; // 获取创建人id
        if ($memberid == $member["id"]) { // 不是文档创建人 没有权限
            if ($this->create($data) && $this->save()) {
                return qc_json_success();
            }
            
            return qc_json_error();
        }
        
        return qc_json_error("没有权限修改");
    }

    public function deletedoc($id, $member)
    {
        $memberid = $this->field("memberid")
            ->where("id=" . $id)
            ->find()["memberid"]; // 获取创建人id
        
        if ($memberid == $member["id"]) { // 不是文档创建人 没有权限
            
            if ($this->where("id=" . $id)->delete()) {
                return qc_json_success();
            }
            
            return qc_json_error();
        }
        
        return qc_json_error("没有权限删除");
    }
    
    /**
     * 获取会议id
     *   */
    
    
    public function listmeetdoc($meetid,$page,$limit=5){
        if($page==NULL||intval($page)<=0){
            $page=1;
        }
         
        if($limit==NULL||intval($limit)<=0){
            $limit=5;
        }
         
        $res=$this->where("meetid=".$meetid)->page($page,$limit)->select();
         
        if($res){
            return qc_json_success($res);
        }
         
        return qc_json_error("查无数据");
    
    }
}