<?php
namespace Common\Model;

/** 
 * 投票选项
 * @author  Jayin Ton
 */
class VoteOptionModel extends BaseModel{
	
	protected $_validate = array(
		array('voteid','require','缺少关联的投票表id',self::MUST_VALIDATE,'regex',self::MODEL_INSERT),
		array('meetid','require','缺少关联的会议id',self::MUST_VALIDATE,'regex',self::MODEL_INSERT),
		array('vpintro','require','缺少选项描述',self::MUST_VALIDATE,'regex',self::MODEL_INSERT),
	);
	
	protected $readonlyField = array('voteid', 'meetid');
    /** 
     * 添加一个投票选项
     * @param array $data 
     */
    public function addOption($data){
        if($this->create($data)){
            if($this->add()){
                return qc_json_success();
            }
            return qc_json_error("can't not add a vote option");
        }
        return qc_json_error($this->getError());
    }
	/**
	 * 更新一选项
	 * @param array $data
	 */
    public function updateOption($data){
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
     * 删除一选项
     * @param int $vpotionsid
     */
    public function deleteOption($vpotionsid){
    	if($this->where("id=%s",$vpotionsid)->delete()){
    		return qc_json_success('删除成功');
    	}
    	return qc_json_error('删除失败');
    }
    /**
     * 获得选项列表
     * @param array $voteid
     */
    public function lists($voteid){
    	$res = $this->where("voteid=%s",$voteid)->select();
    	if($res){
    		return qc_json_success($res);
    	}
    	return qc_json_error($res);
    	 
    }
}