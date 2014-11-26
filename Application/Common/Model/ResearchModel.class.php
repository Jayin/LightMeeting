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

    protected $readonlyField = array('meetid');
    /** 
     * 创建一调查
     * @param array $data 
     * @return json  
     */
    public function createResearch($data){
        if($this->create($data)){
        	$researchid=$this->add();
            if($researchid){
                return qc_json_success(array('researchid'=>$researchid));
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
        $Model = M();
        $Model->startTrans();
        $res = D('ResearchQuestion')->lists($researchid);
        if(isset($res['code'])){
            $questions = $res['response'];
        }
        if($questions == null){
            $questions = array();
        }
        foreach($questions as $q){
            M('ResearchAnswer')->where("questionid=%s",$q['id'])->delete();
            M('ResearchQuestion')->where("id=%s",$q['id'])->limit(1)->delete();
        }
        if($this->where("id=%s",$researchid)->delete()){
            $Model->commit();
            return qc_json_success("删除成功");
        }
        $Model->rollback();
        return qc_json_error("删除失败");
        
    }
    /**
     * 获得一调查的信息
     * @param int $researchid 调查id
     * @return json
     */
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
    
    /** 
     * 获得会议的调查表列表
     * @param  int  $meetid 会议id
     * @param  integer $page  页码
     * @param  integer $limit  返回数
     * @return json         
     */
    public function lists($meetid,$page = 1,$limit = 10){
        if($page <= 0){
            $page = 1;
        }
        if($limit <= 0){
            $limit = 10;
        }
    	$res = $this->where("meetid=%s",$meetid)->limit(($page-1)*$limit,$limit)->select();
    	if(empty($res)){
    		$res = array();
    	}
    	return qc_json_success($res);
    }
}






