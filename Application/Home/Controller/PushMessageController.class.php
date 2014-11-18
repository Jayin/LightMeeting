<?php

namespace Home\Controller;

use Common\Controller\BaseController;
/** 
 * 推送消息接口
 * @author zjien
 * @author Jayin Ton
 */
class PushMessageController extends BaseController{
    /** 
     * 创建一推送消息
     */
    public function create(){
        $this->reqPost(array('to','content'))->reqLogin();
        
        $this->ajaxReturn(qc_json_success(D('PushMessage')->createMessage(I('post.'))));
    }
    /** 
     * 删除推送消息
     */
    public function delete(){
        $this->reqPost(array('id'))->reqLogin();
        
        $this->ajaxReturn(qc_json_success(D('PushMessage')->deleteMessage(I('post.id'))));
    }
    /**
     * 获得推送消息列表
     */
    public function lists($page = 1, $limit = 10){
    	$this->reqLogin();
    	 
    	$res = D('PushMessage')->lists($page,$limit);
    	$this->ajaxReturn(qc_json_success($res));
    }
}