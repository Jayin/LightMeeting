Getting Start
===
* 在Applica/Common/Conf里面配置你的新建一个server_config.php,配置
数据库账号密码
example:
```
//server_config.php
<?php
return array(
		//可以参考这个配置项
		'db_user' => 'root', // 主机名
		'db_pwd' => 'root', // 密码
);
```

若有server_config.php 文件，最终的配置为通用配置+server_config的配置（即本机配置）

若没有，则最终的配置是通用配置+默认配置

>是不是晕了？ 是的话尽量都放在通用配置，少一点本机配置