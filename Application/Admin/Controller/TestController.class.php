<?php

namespace Admin\Controller;

use Think\Controller;

class TestController extends Controller {
    

    public function index(){
        $this->display();
    }
    
    public function get1(){
    	$this->ajaxReturn(qc_json_success());
    }
    
    public function  get2($name=1,$id=2){
    	$this->ajaxReturn(qc_json_success(array('name'=>$name,'id'=>$id)));
    }
    
    public function post(){
    	$this->ajaxReturn(qc_json_success(I('post.')));
    }
    public function post1(){
    	$this->ajaxReturn(qc_json_error(I('post.')));
    }
    
    function createQRcode($text){
    	vendor('QRcode.phpqrcode');
    	\QRcode::png($text);
    }
}