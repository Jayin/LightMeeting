<?php

namespace Home\Controller;

use Common\Controller\BaseController;

class PushMessageController extends BaseController{
    public function create(){
        $this->reqPost(array('to','content'))->reqLogin();
        
        $this->ajaxReturn(D('PushMessage')->createMessage(I('post.')));
    }
    
    public function lists(){
        $this->reqPost(array('pageNow','pageSize'))->reqLogin();
     
        $res=D('PushMessage')->lists(I('post.pageNow'),I('post.pageSize'));
        $this->ajaxReturn($res);
    }
    
    public function deleteMessage(){
        $this->reqPost(array('id'))->reqLogin();
        
        $id=I('post.id');
        $this->ajaxReturn(D('PushMessage')->deleteMessage($id));
    }
}