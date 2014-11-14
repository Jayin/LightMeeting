<?php
namespace Common\Model;

use Common\Model\BaseModel;
/** 
 * 调查问题模型
 * @author Jayin Ton
 */
class ResearchQuestionModel extends BaseModel{

    protected $_validate = array(
         array('researchid','require','缺少所属调查id',self::MUST_VALIDATE,'regex',self::MODEL_INSERT),
         array('meetid','require','缺少所属会议id',self::MUST_VALIDATE,'regex',self::MODEL_INSERT),
         array('title','require','缺少调查问题标题',self::MUST_VALIDATE,'regex',self::MODEL_INSERT),
         array('options：text','require','缺少选项组',self::MUST_VALIDATE,'regex',self::MODEL_INSERT),
    );

    protected $_auto = array(

    );

    public function createQuestion($data){
        if($this->create($data)){
            if($this->add()){
                return qc_json_success();
            }
            return qc_json_error("can't not create a question");
        }
        return qc_json_error($this->getError());
    }

    public function updateQuestion($data){
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

    public function deleteQuestion($questionid){
        $this->where('id=%d',$questionid)->delete();
        //delete releate ...
        return qc_json_success('删除成功');
    }


}