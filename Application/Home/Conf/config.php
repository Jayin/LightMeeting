<?php
//参考_server_config.php来写一个server_config.php文件即可配置本机的配置

$common_config = array(
		//公共配置
		'TMPL_TEMPLATE_SUFFIX' => '.html',
		'db_type' => 'mysql', // 数据库类型
		'db_host' => 'localhost',
		'db_name' => 'qcdatabase', // 数据库名称
		'db_prefix' => 'qc_'  // 表前缀
		//数据库密码不一样可以在server_config.php中配置
// 		'db_user' => 'root', // 主机名
// 		'db_pwd' => 'root', // 密码
);
$_Server_Config_File = APP_PATH.MODULE_NAME.'/Conf/server_config.php';
if(file_exists($_Server_Config_File)){
	$config = require($_Server_Config_File);
	return array_merge($common_config,$config);
}

return array_merge($common_config,array(
	//'配置项'=>'配置值'
	
));