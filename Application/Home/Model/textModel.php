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
	 '_pk'=>'MsgId'); //�ֶζ���
	 
/*	 ͨ��ÿ��ģ�����ǲ���ĳ�����ݱ��ڴ��������£�ϵͳ���Զ���ȡ��ǰ���ݱ���ֶ���Ϣ��

ϵͳ����ģ���״�ʵ������ʱ���Զ���ȡ���ݱ���ֶ���Ϣ������ֻ��Ҫһ�Σ��Ժ�����û����ֶ���Ϣ���������ò��������ɾ����������ǵ���ģʽ�򲻻������ֶλ����ļ������ʾÿ�ζ������»�ȡ���ݱ��ֶ���Ϣ��
*/

}