<?php

namespace Common\Controller;

use Think\Controller;

class BaseController extends Controller {
	/**
	 * 对应控制器下没有方法就会执行该方法
	 */
	protected function _empty(){
		$this->ajaxReturn(qc_json_error("No interface for this."));
	}
	/**
	 * 需要Post的字段
	 * @param array $require_data
	 * @return \Common\Controller\BaseController
	 */
	protected function reqPost(array $require_data = null) {
		if (! IS_POST) {
			$this->ajaxReturn(qc_json_error_request());
		}
		if ($require_data) {
			foreach ($require_data as $key) {
				$_k = I('post.' . $key,null);
				if(is_null($_k)){
					$this->ajaxReturn(qc_json_error("require params: " . $key));
				}
			}
		}
		return $this;
	}
	
	/**
	 * 获得登陆信息
	 * @return \Common\Controller\BaseController
	 */
	protected function getlogin(){
		$member=session("member");
		if($member==NULL){
			$this->ajaxReturn(qc_json_error("no login"));
		}else{
			return $this;
		}
	}
	/**
	 * 需要登录
	 */
	protected  function reqLogin(){
		return $this->getlogin();
	}
}