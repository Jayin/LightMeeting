<?php
namespace Common\Model;
/**
 * Class DocumentModel
 * 文档模型
 * @author Zhlhuang
 * @package Common\Model
 */
class DocumentModel extends BaseModel {
	protected $readonlyField = array("id", "meetid", "memberid");

	protected $_validate = array(
		array("title", '', "标题不能为空", self::EXISTS_VALIDATE, 'notequal'),
		array("meetid", '', "所属会议不能为空", self::EXISTS_VALIDATE, 'notequal'),
		array("memberid", '', "创建人不能为空", self::EXISTS_VALIDATE, 'notequal'),
		array(
			"meetid",
			'checkmeetid',
			'没有此会议',
			self::EXISTS_VALIDATE,
			'callback',
		),
	);

	public function checkmeetid($meetid) {
		$res = $this->where("id=" . $meetid)
		            ->table("qc_meet")
		            ->find();
		if ($res) {
			return true;
		}

		return false;
	}
    /**
     * 创建文档
     * @param $data
     * @param $member
     * @return json
     */
	public function createdoc($data, $member) {
		$memberid = $member["id"];
		$data["memberid"] = $memberid;
		$data["ctime"] = time();
		if (!$this->create($data)) {
			return qc_json_error($this->getError());
		}

		$res = $this->add();
		if ($res) {
			return qc_json_success();
		} else {
			return qc_json_error();
		}
	}
    /**
     * 更新文档
     * @param $data 文档信息
     * @param $member 登陆会员
     * @return json
     */
	public function updatedoc($data, $member) {
		$id = $data["id"];
		$memberid = $this->field("memberid")
		                 ->where("id=" . $id)
		                 ->find()["memberid"];// 获取创建人id
		if ($memberid == $member["id"]) {
			// 不是文档创建人 没有权限
			if ($this->create($data) && $this->save()) {
				return qc_json_success();
			}

			return qc_json_error();
		}

		return qc_json_error("没有权限修改");
	}

    /**
     * 删除文档
     * @param $id
     * @param $member
     * @return json
     */
	public function deletedoc($id, $member) {
		$memberid = $this->field("memberid")
		                 ->where("id=" . $id)
		                 ->find()["memberid"];// 获取创建人id

		if ($memberid == $member["id"]) {
			// 不是文档创建人 没有权限

			if ($this->where("id=" . $id)->delete()) {
				return qc_json_success();
			}

			return qc_json_error();
		}

		return qc_json_error("没有权限删除");
	}

    /**
     * 获取会议列表
     * @param $meetid 会议id
     * @param int $page
     * @param int $limit
     * @return json
     */
	public function listmeetdoc($meetid, $page = 1, $limit = 5) {
		if (intval($page) <= 0) {
			$page = 1;
		}

		if (intval($limit) <= 0) {
			$limit = 5;
		}

		$res = $this->where("meetid=" . $meetid)->order("ctime DESC")->page($page, $limit)->select();

		if ($res) {
			return qc_json_success($res);
		}

		return qc_json_error("查无数据");

	}
	/**
	 *获取会议列表，附带发布人的nickname
	 * @param $meetid 会议id
	 * @param $page
	 * @param int $limit
	 * @return \multitype
	 */
	public function listmeetdoc_with_member($meetid, $page = 1, $limit = 5) {
		if (intval($page) <= 0) {
			$page = 1;
		}

		if (intval($limit) <= 0) {
			$limit = 5;
		}

		$res = $this->table("qc_document d,qc_member m")
		            ->where("m.id=d.memberid and d.meetid='%d'", $meetid)
                    ->field("d.*,m.nickname")
		            ->order("d.ctime DESC")
		            ->page($page, $limit)
		            ->select();

		if ($res) {
			return qc_json_success($res);
		}

		return qc_json_error("查无数据");

	}
	/**
	 * 获取文档
	 * @param $id 文档id
	 * @return json
	 */
	public function listdoc($id) {
		$where = "id=" . $id;
		$res = $this->where($where)->find();
		if ($res) {
			return qc_json_success($res);
		}
		return qc_json_error("查不到该文档");
	}
}