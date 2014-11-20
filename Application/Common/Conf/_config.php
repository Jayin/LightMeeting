<?php
// '配置项'=>'配置值'
return array (
		'LOG_RECORD' => true, // 开启日志记录
		'LOG_TYPE' => 'File', // 日志记录类型 默认为文件方式
		'TMPL_TEMPLATE_SUFFIX' => '.html',
		//'SESSION_TYPE' => 'Db', // 用数据库的形式存储session
		'URL_HTML_SUFFIX' => 'html|phtml', // 伪静态后缀名设置
		'LOAD_EXT_FILE' => 'functions',
		'URL_CASE_INSENSITIVE' =>true, //不区分URL大小写
        //JPush 
        'JPUSH_APP_KEY' => 'aba9dfd2ab6d4a7e061b95b5',
        'JPUSH_MASTER_SECRET' => '3c7e5d499b69f81675384a66'
)
;

