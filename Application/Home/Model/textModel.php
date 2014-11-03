<?php
namespace Home\Model;
use Think\Model;
class textModel extends Model{
     protected $fields=array('URL',
	 'ToUserName',
	 'FromUserName',
	 'CreateTime',
	 'MsgType',
	 'Conten',
	 'MsgId',
	 '_pk'=>'MsgId'); //字段定义
	 
/*	 通常每个模型类是操作某个数据表，在大多数情况下，系统会自动获取当前数据表的字段信息。

系统会在模型首次实例化的时候自动获取数据表的字段信息（而且只需要一次，以后会永久缓存字段信息，除非设置不缓存或者删除），如果是调试模式则不会生成字段缓存文件，则表示每次都会重新获取数据表字段信息。
*/

}