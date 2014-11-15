<?php
namespace Common\Model;

use Common\Model\BaseModel;

/** 
 * 调查表模型
 * @author Jayin Ton
 */
class ResearchModel extends BaseModel {

    protected $_validate = array(
        array('meetid','require','缺少所属会议id',self::MUST_VALIDATE,'regex',self::MODEL_INSERT),
        array('title','require','缺少调查表标题',self::MUST_VALIDATE,'regex',self::MODEL_INSERT),
        array('intro','require','缺少调查简介',self::MUST_VALIDATE,'regex',self::MODEL_INSERT),
        array('stime','require','缺少起始时间',self::MUST_VALIDATE,'regex',self::MODEL_INSERT),
        array('etime','require','缺少结束时间',self::MUST_VALIDATE,'regex',self::MODEL_INSERT),
    );

    protected $_auto = array();

    /** 
     * 创建一调查
     * @param array $data 
     * @return json  
     */
    public function createResearch($data){
        if($this->create($data)){
            if($this->add()){
                return qc_json_success();
            }
            return qc_json_error("can't create a research");
        }
        return qc_json_error($this->getError());
    }
    /** 
     * 更新调查信息
     * @param array $data 
     * @return json
     */
    public function updateResearch($data){
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
     * 删除一调查
     * @param array $researchid 
     * @return json
     */
    public function deleteResearch($researchid){
        $this->where("id=%s",$researchid)->delete();
        M('ResearchQuestion')->where("researchid=%s",$researchid)->delete();
        //TODO 还要删除ResearchAnswer的数据
        return qc_json_success("删除成功");

    }

    public function info($researchid){
        $research = $this->find($researchid);
        if($research){
            $ret = $research;
            $questions = D('ResearchQuestion')->lists($researchid);
            if(isset($questions['code'])){
                $ret['questions'] = $questions['response'];    
            }else{
                $ret['questions'] = array();
            }
            
            return qc_json_success($ret);
        }
        return qc_json_error('找不到该调查');
    }
}






