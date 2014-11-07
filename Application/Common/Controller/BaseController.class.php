<?php

namespace Common\Controller;

use Think\Controller;

class BaseController extends Controller {
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
	
	
	protected function getlogin(){
		$member=session("member");
		if($member==NULL){
			$this->ajaxReturn(qc_json_error("no login"));
		}else{
			return $this;
		}
	}
}