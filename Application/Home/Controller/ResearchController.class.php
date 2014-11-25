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
     * muti_options是一个数组
     * "muti_options":
     * "[{"type":1， "options":"json字符串"},{"type":1， "options":"json字符串"}]"
     * ```
     */
    public function createQuestionMulti(){
    	$this->reqPost(array('researchid','title','muti_options'))->reqLogin();
    	$researchid = I('post.researchid');
    	$title = I('post.title');
    	$muti_options = I('post.muti_options','','');
    	$data = array();
    	foreach ($muti_options as $o){
    		$data[]  = array(
    				'researchid' => I('post.researchid'),
    				'title' 	 => I('post.title'),
    				'options'    => $o['options'],
    				'option_type'=> $o['option_type']
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
     * 回答一调查问题
     */
    public function answer(){
        $this->reqPost(array('questionid','optionid','option_content'))->reqLogin();
        $data = I('post.');
        $data['author'] = qc_getLoginUser()['id'];
        $this->ajaxReturn(D('ResearchAnswer')->createAnswer($data));
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