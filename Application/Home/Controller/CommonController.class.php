<?php

namespace Home\Controller;

use Common\Controller\BaseController;
/**
 * 常用接口
 * @author Jayin Ton
 *
 */
class CommonController extends BaseController {
	
	public function createQRcode($text = '轻会议'){
		vendor('QRcode.phpqrcode');
		\QRcode::png($text);
	}
}

