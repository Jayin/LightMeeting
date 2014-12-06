<?php

namespace Common\Model;

use Think\Model\AdvModel;

/**
 *
 * @author Jayin Ton
 *
 */
class BaseModel extends AdvModel {
	//自动验证 //默认,验证条件：0存在字段就进行验证 , 验证时间：1新增/编辑 数据时候验证
	protected $_validate = array();
	//自动填充 //默认 新增数据的时候处理
	protected $_auto = array();
	//只读字段，插入后不能通过save更新
	protected $readonlyField = array();

	/**
	 * 调用分页
	 * @param unknown $where  对该表的条件限制
	 * @param unknown $goUrl  跳转的页面，一般是本页面
	 * @param number $pagenow  当前页面
	 * @param number $pagecount  每页数据
	 * @return string   前端显示数据
	 */
	public function ShowPage($where, $goUrl, $pagenow = 1, $pagecount = 10) {
		$count = count($this->where($where)->select());//拿到查询总的条目

		$pageall = (ceil($count / $pagecount));

		$data = I("get.");
		unset($data["page"]);

		$url = "?";
		foreach ($data as $k => $v) {
			$url .= $k . "=" . $v . "&";
		}
		$url .= "page=";

		$showPage .= "<div class='text-center'><div class='pagination'><ul><li class='previous active' style='margin-right:0px'><a id='btn-previous' href='" . $goUrl . $url . ($pagenow - 1) . "'>上一页</a></li>";
		for ($i = 1; $i <= $pageall && $i <= 10; $i++) {

			$showPage .= "<li class='active'><a href='" . $goUrl . $url . $i . "' >" . $i . "</a></li>";
		}
		$showPage .= "<li class='next active'><a id='btn-next' href='" . $goUrl . $url . ($pagenow + 1) . "'>下一页</a></li></ul></div></div>";

		return $showPage;
	}
}
