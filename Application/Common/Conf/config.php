<?php
//参考_server_config.php来写一个server_config.php文件即可配置本机的配置

//线上与线下的公共配置
$common_config = array(
		//公共配置
		'URL_MODEL' => 2, //URL模式 REWRITE模式
		'LOG_RECORD' => true, // 开启日志记录
		'LOG_TYPE' => 'File', // 日志记录类型 默认为文件方式
		'TMPL_TEMPLATE_SUFFIX' => '.html',
		//'SESSION_TYPE' => 'Db', // 用数据库的形式存储session
		'URL_HTML_SUFFIX' => 'html|phtml', // 伪静态后缀名设置
		'LOAD_EXT_FILE' => 'functions',
		'URL_CASE_INSENSITIVE' =>true, //不区分URL大小写
		//数据库
		'db_type' => 'mysql', // 数据库类型
		'db_host' => 'localhost',
		'db_name' => 'qcdatabase', // 数据库名称
		'db_prefix' => 'qc_',  // 表前缀
		//数据库密码不一样可以在server_config.php中配置
		// 'db_user' => 'root', // 主机名
		// 'db_pwd' => 'root', // 密码
		
		//JPush
		'JPUSH_APP_KEY' => 'aba9dfd2ab6d4a7e061b95b5',
		'JPUSH_MASTER_SECRET' => '3c7e5d499b69f81675384a66',
);
//CONF_PATH公共配置路径 :APP_PATH . 'Common/' . 'Conf/' 
$_Server_Config_File = CONF_PATH .'server_config.php';

//本机的配置
if(file_exists($_Server_Config_File)){
	$config = require($_Server_Config_File);
	return array_merge($common_config,$config);
}

//默认的配置，若有本机的配置则忽略
return array_merge($common_config,array(
	//'配置项'=>'配置值'
	
));