<?php
// '配置项'=>'配置值'
return array (
		'LOG_RECORD' => true, // 开启日志记录
		'LOG_TYPE' => 'File', // 日志记录类型 默认为文件方式
		'URL_PARAMS_BIND' => true,
		'URL_PARAMS_BIND_TYPE' => 1, // 设置参数绑定按照变量顺序绑定
		'TMPL_TEMPLATE_SUFFIX' => '.html',
		//'SESSION_TYPE' => 'Db', // 用数据库的形式存储session
		'URL_HTML_SUFFIX' => 'html|phtml', // 伪静态后缀名设置
		'LOAD_EXT_FILE' => 'functions',
		'URL_CASE_INSENSITIVE' =>true, //不区分URL大小写
)
;

