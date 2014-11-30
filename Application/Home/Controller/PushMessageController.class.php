<?php

namespace Home\Controller;

use Common\Controller\BaseController;
use JPush\Model as M;
use JPush\JPushClient;
use JPush\Exception\APIConnectionException;
use JPush\Exception\APIRequestException;
use Common\Model\PushMessageModel;

/**
 * 推送消息接口
 * 
 * @author zjien
 * @author Jayin Ton
 */
class PushMessageController extends BaseController {
	/**
	 * 创建一推送消息
	 */
	public function create() {
		$this->reqPost ( array (
				'to',
				'content', 
				'type' 
		) )->reqLogin ();
		$data = I ( 'post.' );
		$resPushMessage = D ( 'PushMessage' )->createMessage ( $data );
		if (isset ( $resPushMessage ['code'] )) {
			$id = $resPushMessage ['response'];
			$res = qc_json_error ( '发送对象无效' );
			if (I ( 'post.type' ) == PushMessageModel::MSG_TYPE_ALL) {
				$res = $this->sendToAll(I('post.content'));
			}
			if (I ( 'post.type' ) == PushMessageModel::MSG_TYPE_MEET) {
				$res = $this->sendToMeet ( I ( 'post.to' ), I ( 'post.content' ) );
			}
			if (I ( 'post.type' ) == PushMessageModel::MSG_TYPE_PERSON) {
				$res = $this->sendToPerson(I ( 'post.to' ), I ( 'post.content' ) );
			}
			if(isset($res['code'])){
				//ok
				D ( 'PushMessage' )->addMsgId($id,$res['response']['msg_id']);
			}
			$this->ajaxReturn ( $res );
		}
		$this->ajaxReturn ( qc_json_error ( $resPushMessage ['msg'] ) );
	}
	public function send() {
		$this->reqPost(array('id'))->reqLogin ();
		$PushMessage = D ( 'PushMessage' );
		$PushMessage->find(I('post.id'));
		if(!$PushMessage){
			$this->ajaxReturn ( qc_json_error ( '找不到该信息' ) );
		}
		$res = $this->pushMsg($PushMessage->to, $PushMessage->content);
		if (isset ( $res ['code'] )) {
			// ok
			D ( 'PushMessage' )->addMsgId ( I('post.id'), $res ['response'] ['msg_id'] );
			$this->ajaxReturn(qc_json_success());
		}
		$this->ajaxReturn ( $res );
		
	}
	/**
	 * 删除推送消息
	 */
	public function delete() {
		$this->reqPost ( array (
				'id' 
		) )->reqLogin ();
		
		$this->ajaxReturn ( D ( 'PushMessage' )->deleteMessage ( I ( 'post.id' ) ) );
	}
	/**
	 * 获得推送消息列表
	 */
	public function lists($page = 1, $limit = 10) {
		$this->reqLogin ();
		
		$res = D ( 'PushMessage' )->lists ( $page, $limit );
		$this->ajaxReturn ( $res );
	}
	/**
	 * 推动给会议群组所有人
	 * 
	 * @param int $meetid
	 *        	会议id
	 * @param string $content
	 *        	发送内容
	 * @return [type] [description]
	 */
	private function sendToMeet($meetid, $content) {
		$tag = 'm_' . $meetid;
		return $this->pushMsg ( $tag, $content );
	}
	/**
	 * 发送给全部人
	 * 
	 * @param string $content
	 *        	发送内容
	 * @return [type] [description]
	 */
	private function sendToAll($content) {
		$tag = 'a';
		return $this->pushMsg ( $tag, $content );
	}
	/**
	 * 发送到个人
	 * 
	 * @param int $memberid
	 *        	用户id
	 * @param string $content
	 *        	发送内容
	 * @return [type] [description]
	 */
	private function sendToPerson($memberid, $content) {
		$tag = 'p_' . $memberid;
		return $this->pushMsg ( $tag, $content );
	}
	/**
	 * 推送消息
	 * 
	 * @param string $tag
	 *        	推动标签，发送对象(a:全部,p_xx个人,，m_xx会议群组)
	 * @param string $msg_content
	 *        	额外的k-v 信息
	 * @return json
	 */
	private function pushMsg($tag, array $msg_content) {
		vendor ( 'JPushSDK.autoload' );
		
		$client = new JPushClient ( C ( 'JPUSH_APP_KEY' ), C ( 'JPUSH_MASTER_SECRET' ) );
		try {
			$result = $client->push ()->setPlatform ( M\all )
									  ->setAudience ( M\tag ( array ($tag)))
									  ->setMessage ( M\message ( $msg_content, null, null, null ) )
// 									  ->printJSON ()
									   ->send();
			return qc_json_success ( array (
					'msg_id' => $result->msg_id,
					'sendno' => $result->sendno 
			) );
		} catch ( APIRequestException $e ) {
			return qc_json_error (array('msg'=> $e->message,'code' => $e->code) );
		} catch ( APIConnectionException $e ) {
			return qc_json_error ( array('msg' =>$e->getMessage (),'code' =>40000) );
		}
	}
}