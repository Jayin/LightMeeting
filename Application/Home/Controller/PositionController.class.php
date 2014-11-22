<?php
namespace Home\Controller;

use Common\Controller\BaseController;

/**
 * 职位操作
 * @author zjien
 *
 */
class PositionController extends BaseController{
    /**
     * 创建一职位
     */
    function createPosition(){
        $data=array('cid','name','intro','power');
        $this->reqPost($data)->reqLogin();

        $PositionModel=D("Position");
        $res=$PositionModel->createPosition(I('post.'));
        
        $this->ajaxReturn($res);
    }
    
    /**
     * 修改职位信息
     */
    function updatePosition(){
        $this->reqPost(array('id'))->reqLogin();
        $data=I('post.');
        $PositionModel=D("Position");
        $res=$PositionModel->updatePosition($data);
        
        $this->ajaxReturn($res);
    }
    
    /**
     * 删除一职位
     */    
    function deletePosition(){
        $this->reqPost(array('id'))->reqLogin();
        
        $PositionModel=D('Position');
        $res=$PositionModel->deletePosition(I('post.id'));
        
        $this->ajaxReturn($res);
    }
    
    /**
     * 显示职位信息
     */
    function listsPosition($page=1,$limit=10){
        $this->reqLogin();
        
        $res=D('Position')->listsPosition($page,$limit);
        $this->ajaxReturn($res);
    }
    
    
}
