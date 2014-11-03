<?php

namespace Admin\Controller;

use Think\Controller;

class IndexController extends Controller {
	public function _before_indexAction() {
		// 前置调用函数
		echo "before hello</br>";
	}
	public function indexAction() {
		echo "hello</br>";
		// $this->display();
	}
	public function _after_indexAction() {
		// 后置调用函数
		echo "before hello<br>";
	}
	public function helloAction($id = 0) {
		echo $id . "<br/>";
		echo I ( "get.kk", "hello", "validate_email" ); // 获取url传来的参数，若为空，则默认为hello validate_email 是过滤条件
		$a = array (
				"a" => 111,
				"b" => 2222 
		);
		/*
		 * if($id>100){ redirect("../success",5,"页面跳转中……"); //页面重新定向 }else{ $this->error("失败！！！","../error"); }
		 */
		// $this->ajaxReturn($a); //这是返回一个ajax json数据
		// echo "hello 1~~";
	}
	public function successAction() {
		echo "you are success";
	}
	public function errorAction() {
		echo "you are error";
	}
	public function getmodelAction() {
		// $res=$text=M('text')->where("FromUserName='oT2a9t7vJIY0ItTvCC2H823siOaU'")->select();
		// 单表实例化查询
		// $res2=M()->table(array('wx_word'=>'w','wx_fanyi'=>'f'))->where("w.id=f.wid")->select();
		// 多表关联查询
		// $res3=M('word')->field(array('word','explain','remember'=>"r"))->select();
		// 查找特定的字段。
		
		// $res4=M('text')->group('FromUserName')->having('count(CreateTime)>1')->select();
		// group 和 having功能的实现
		
		// $res5=M('word')->join('wx_fanyi on wx_fanyi.wid=wx_word.id')->select();
		$data = array (
				'URL' => 'www111222',
				'ToUserName' => 'gh_437ffb562bd0',
				'FromUserName' => 'oT2a9t7vJIY0ItTvCC2H823siOaU',
				'CreateTime' => time (),
				'MsgType' => 'text',
				'Content' => '1111',
				'MsgId' => '22222221' 
		);
		
		$res6 = M ( 'text' );
		// $r=$res6->add($data); // $r=$res6->data($data)->add();
		
		// 增加数据库中的一条数据
		
		// $r=$res6->where('MsgId=22222221')->save($data);
		// $r=$res6->save($data); 也成立 更新数据
		
		$r = $res6->delete ( 22222221 ); // 删除数据
		                            // $r=$res6->delete('1,2,3,4'); 删除多条数据 或者使用where连贯语句
		echo "<pre>";
		print_r ( $r );
		echo "</pre>";
	}
	public function getviewAction() {
		$str = "hello world";
		$this->str = $str; // 像视图传变量
		$this->display (); // 想模板渲染出来
	}
	
	public function testsessionAction(){
	//这是一个session数据库驱动
	$session= new \Think\Session\Driver\Db();
	}
}