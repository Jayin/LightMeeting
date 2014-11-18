<?php

namespace Home\Controller;

use Common\Controller\BaseController;
use JPush\Model as M;
use JPush\JPushClient;

use JPush\Exception\APIConnectionException;
use JPush\Exception\APIRequestException;
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
    //simple send message
    public function sendMessage($msg,$extras = null){
        vendor('JPushSDK.autoload');

        $client = new JPushClient(C('JPUSH_APP_KEY'), C('JPUSH_MASTER_SECRET'));
        try {
            $result = $client->push()
            ->setPlatform(M\all)
            ->setAudience(M\all)
            ->setMessage(M\message('msg content', null, null, array('key'=>'value')))
            ->send();
            $this->ajaxReturn(qc_json_success('发送成功'));
        }catch (APIRequestException $e) {
            $this->ajaxReturn(qc_json_error($e->message,$e->code));
        } catch (APIConnectionException $e) {
            $this->ajaxReturn(qc_json_error($e->getMessage()));
        }
                
    }
}