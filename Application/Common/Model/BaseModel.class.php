<?php

namespace Common\Model;

use Think\Model;

/**
 * 
 * @author Jayin Ton
 *
 */
class BaseModel extends Model {
	//自动验证 //默认,验证条件：0存在字段就进行验证 , 验证时间：1新增/编辑 数据时候验证
	protected $_validate = array();
	//自动填充 //默认 新增数据的时候处理
	protected $_auto = array();
}

