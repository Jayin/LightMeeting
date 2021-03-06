<?php
namespace Home\Controller;

use Common\Controller\BaseController;
/** 
 *  调查表接口
 * @author Jayin Ton
 */
class ResearchController extends BaseController{
    /**
     * 创建调查
     */
    public function create(){
        $this->reqPost(array('meetid','title','intro','stime','etime'))->reqLogin();
        $data = I('post.');
        $data['stime'] = strtotime($data['stime']);
        $data['etime'] = strtotime($data['etime']);
        $this->ajaxReturn(D('Research')->createResearch($data));

    }
    /**
     * 更新调查
     */
    public function update(){
        $this->reqPost(array('id'))->reqLogin();
        $data = I('post.');
        if(isset($data['stime'])){
            $data['stime'] = strtotime($data['stime']);
        }
        if(isset($data['etime'])){
            $data['etime'] = strtotime($data['etime']);
        }
        $this->ajaxReturn(D('Research')->updateResearch($data));   
    }
    /**
     * 删除调查
     */
    public function delete(){
        $this->reqPost(array('researchid'))->reqLogin();
        $this->ajaxReturn(D('Research')->deleteResearch(I('post.researchid')));
    }
    /**
     * 创建调查问题
     */
    public function createQuestion(){
        $this->reqPost(array('researchid','title','options'))->reqLogin();
        $data = I('post.');
        $data['options'] = I('post.options','','');
        $this->ajaxReturn(D('ResearchQuestion')->createQuestion($data));
    }
    /**
     * 创建调查问题
     * ```json
     * muti_questions是一个数组
     * "muti_questions":
     * "[{title:"Do you like?","type":1， "options":"json字符串"},{title:"Do you like?","type":1， "options":"json字符串"}]"
     * ```
     */
    public function createQuestionMulti(){
    	$this->reqPost(array('researchid','muti_questions'))->reqLogin();
    	$researchid = I('post.researchid');
    	$title = I('post.title');
    	$muti_questions = I('post.muti_questions','','');
    	$data = array();
    	foreach ($muti_questions as $q){
    		$data[]  = array(
    				'researchid' => I('post.researchid'),
    				'title' 	 => $q['title'],
    				'options'    => $q['options'],
    				'option_type'=> $q['option_type']
    		);
    	}
    	$this->ajaxReturn(D('ResearchQuestion')->createQuestionMulti($data));
    }
    /**
     * 更新调查问题
     */
    public function updateQuestion(){
        $this->reqPost(array('questionid'))->reqLogin();
        $data = I('post.');
        $data['id'] = I('post.questionid');
        if(isset($data['options'])){
        	$data['options'] = I('post.options','','');
        }
        $this->ajaxReturn(D('ResearchQuestion')->updateQuestion($data));
    }
    /**
     * 删除调查问题
     */
    public function deleteQuestion(){
        $this->reqPost(array('questionid'))->reqLogin();
        $this->ajaxReturn(D('ResearchQuestion')->deleteQuestion(I('post.questionid')));
    }
    /**
     * 获得一调查的调查问题列表
     * @param int $researchid 调查id
     * @param int $page 页码
     * @param int $limie 返回数
     */
    public function listQuestion($researchid,$page = 1,$limit = 10){
        $this->reqLogin();
        $this->ajaxReturn(D('ResearchQuestion')->lists($researchid,$page ,$limit ));
    }
    /**
     * 回答调查问题(单选)
     */
    public function answer(){
        $this->reqPost(array('questionid','optionid','option_content'))->reqLogin();
        $data = I('post.');
        $data['author'] = qc_getLoginUser()['id'];
        $this->ajaxReturn(D('ResearchAnswer')->createAnswer($data));
    }
    /** 
     * 回答调查问题(多选)
     */
    public function answerMulti(){
        $this->reqPost(array('questionid','multi_option'))->reqLogin();
        //json_decode出来的都是stdObject,因此要强制转换
        $data = (array)json_decode(I('post.multi_option','',''));
        for($i = 0;$i < count($data);$i++){
             $data[$i] = (array)$data[$i];
             $data[$i]['author'] =  qc_getLoginUser()['id'];
             $data[$i]['questionid'] =I('post.questionid');
        }
        $this->ajaxReturn(D('ResearchAnswer')->createAnswerMulti($data));
    }
    /**
     * 获得一调查的详细信息
     * @param int $researchid 调查id
     */
    public function info($researchid){
        $this->reqLogin();
        $this->ajaxReturn(D('Research')->info($researchid));
    }
    /**
     * 获得会议的讨论列表
     * @param unknown $meetid 会议id
     */
    public function lists($meetid,$page = 1,$limit = 10){
    	$this->reqLogin();
    	$this->ajaxReturn(D('Research')->lists($meetid,$page ,$limit));
    }
}