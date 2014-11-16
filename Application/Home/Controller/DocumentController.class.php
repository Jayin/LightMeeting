<?php
namespace Home\Controller;


use Common\Controller\BaseController;



class DocumentController extends BaseController {
    /**
     * 增加文档
     * @param
     * meetid 所属会议id
     * title  文档标题
     * content 文档html
     */
    
    public function createdoc(){
        $postdata=array("meetid","title","content");
        $this->reqPost($postdata)->reqLogin();
        $data=I("post.");
        $documentmodel=D("document");
        $member=$this->reqLoginmember();
        $res=$documentmodel->createdoc($data,$member);
        
        $this->ajaxReturn($res);
    }
    
    /**
     * 更新文档
     * @param
     * id 文档id
     * title  文档标题
     * content 文档html
     */
    
    
    public function updatedoc(){
        $postdata=array("id","title","content");
        $this->reqPost($postdata)->reqLogin();
        
        $data=I("post.");
        unset($data["meetid"]);
        $member=$this->reqLoginmember();
        $documentmodel=D("document");
        $res=$documentmodel->updatedoc($data,$member);
        
        $this->ajaxReturn($res);
        
    }
    
    /**
     * 删除文档
     * @param
     * id 文档id
     */
    
    
    public function deletedoc(){
        $postdata=array("id");
        $this->reqPost($postdata)->reqLogin();
        $id=I("post.id");
        $member=$this->reqLoginmember();
        $documentmodel=D("document");
        
        $res=$documentmodel->deletedoc($id,$member);
        
        $this->ajaxReturn($res); 
        
    }
    
    /**
     * 根据会议id获取文档
     * @param
     * meetid 所属会议id
     */
    public function listmeetdoc(){
        $postdata=array("meetid");
        $this->reqPost($postdata)->reqLogin();
    
        $meetid=I("post.meetid");
        $page=I("post.page");
        $limit=I("post.limit");
        $documentmodel=D("Document");
    
        $res=$documentmodel->listmeetdoc($meetid,$page,$limit);
    
        $this->ajaxReturn($res);
    
         
    }
    
    
    
    /**
     * 查看文档
     * @param
     * id 文档id
     * 伪静态访问 /home/document/listdoc/1.html
     */
    
    public function listdoc($id){
        $this->reqLogin();
        $documentmodel=D("Document");
        
        $res=$documentmodel->listdoc($id);
        
        $this->ajaxReturn($res);
        
    }
    
}