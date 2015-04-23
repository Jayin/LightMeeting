<?php

namespace Home\Controller;

use Common\Controller\BaseController;

/**
 * 操作微信的控制器
 * @author zhlhuang
 *
 */
class WxTokenController extends BaseController {
     /**
     * 返回access_token
     * 
     */
    public function getToken(){
         print_r( D("WxToken")->getToken());
    }
}