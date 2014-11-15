<?php
namespace Home\Controller;

use Common\Controller\BaseController;
/** 
 *  调查表接口
 * @author Jayin Ton
 */
class ResearchController extends BaseController{
   //注意权限
    public function create(){
        $this->reqPost(array('meetid','title','intro','stime','etime'))->reqLogin();
        $data = I('post.');
        $data['stime'] = strtotime($data['stime']);
        $data['etime'] = strtotime($data['etime']);
        $this->ajaxReturn(D('Research')->createResearch($data));

    }

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

    public function delete(){
        $this->reqPost(array('researchid'))->reqLogin();
        $this->ajaxReturn(D('Research')->deleteResearch(I('post.researchid')));
    }

    public function createQuestion(){
        $this->reqPost(array('researchid','title','options'))->reqLogin();
        $this->ajaxReturn(D('ResearchQuestion')->createQuestion(I('post.')));
    }

    public function updateQuestion(){
        $this->reqPost(array('questionid'))->reqLogin();
        $data = I('post.');
        $data['id'] = I('post.questionid');
        $this->ajaxReturn(D('ResearchQuestion')->updateQuestion($data));
    }

    public function deleteQuestion(){
        $this->reqPost(array('questionid'))->reqLogin();
        $this->ajaxReturn(D('ResearchQuestion')->deleteQuestion(I('post.questionid')));
    }

    public function listQuestion($researchid){
        $this->reqLogin();
        $this->ajaxReturn(D('ResearchQuestion')->lists($researchid));
    }


    public function answer(){
        $this->reqPost(array('questionid','optionid','option_content'))->reqLogin();
        $data = I('post.');
        $data['author'] = qc_getLoginUser()['id'];
        $this->ajaxReturn(D('ResearchAnswer')->createAnswer($data));
    }

    public function info($researchid){
        $this->reqLogin();
        $this->ajaxReturn(D('Research')->info($researchid));
    }


}