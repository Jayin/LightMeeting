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
         array('title','require','缺少调查问题标题',self::MUST_VALIDATE,'regex',self::MODEL_INSERT),
         array('options','require','缺少选项组',self::MUST_VALIDATE,'regex',self::MODEL_INSERT),
    );

    protected $_auto = array(

    );
    /**
     * 创建调查问题
     * @param array $data
     * @return json
     */
    public function createQuestion($data){
        if($this->create($data)){
            if($this->add()){
                return qc_json_success();
            }
            return qc_json_error("can't not create a question");
        }
        return qc_json_error($this->getError());
    }
    /**
     * 更新调查问题
     * @param array $data
     * @return json
     */
    public function updateQuestion($data){
        //过滤不要的更新的字段
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
     * 删除调查问题
     * @param int $questionid
     * @return json
     */
    public function deleteQuestion($questionid){
        $Model = M();
        $Model->startTrans();
        M('ResearchAnswer')->where("questionid=%s",$questionid)->delete();
        if($this->where('id=%d',$questionid)->delete()){
            $Model->commit();
            return qc_json_success('删除成功');
        }
        $Model->rollback();
        return qc_json_error("删除失败");
    }
    /**
     * 获得调查下的调查问题
     * @param int $researchid 调查id
     * @return json
     */
    public function lists($researchid){
        $res = $this->where("researchid=%s",$researchid)->select();
        if($res){
            return qc_json_success($res);
        }
        return qc_json_error('找不到该调查表');
    }

}