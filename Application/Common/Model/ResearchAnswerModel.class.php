<?php
namespace Common\Model;

use Common\Model\BaseModel;
/**
 * 调查回答模型
 * @author Jayin Ton
 */
class ResearchAnswerModel extends BaseModel{

    protected $_validate = array(
         array('questionid','require','缺少所属调查问题id',self::MUST_VALIDATE,'regex',self::MODEL_INSERT),
         array('optionid','require','缺少所属调查选项id',self::MUST_VALIDATE,'regex',self::MODEL_INSERT),
         array('option_content','require','缺少调查问题内容',self::MUST_VALIDATE,'regex',self::MODEL_INSERT),
         array('author','require','缺少发布人id',self::MUST_VALIDATE,'regex',self::MODEL_INSERT),
    );

    protected $_auto = array(
            //创建时间
            array('ctime',NOW_TIME,self::MODEL_INSERT),
    );
    /**
     *  创建答案
     * @param  array $data [description]
     * @return json
     */
    public function createAnswer($data){
        $data['memberid'] = session('member')['id'];
        if($this->create($data)){
            if($this->add()){
                return qc_json_success();
            }
            return qc_json_error("can't not create a answer");
        }
        return qc_json_error($this->getError());
    }
    /**
     *  更新答案
     * @param  array $data [description]
     * @return json
     */
    public function updateAnswer($data){
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
     *  删除答案
     * @param  int $answerid  答案id
     * @return json
     */
    public function deleteAnswer($answerid){
        $this->where('id=%d',$answerid)->delete();
        //delete relate..
        return qc_json_success('删除成功');
    }
}