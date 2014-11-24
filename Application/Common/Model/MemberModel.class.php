<?php
namespace Common\Model;

class MemberModel extends BaseModel{
    protected $readonlyField = array("id","username","ctime","cIP");
    protected $_validate = array(
        array("username",'','用户名必须唯一',self::EXISTS_VALIDATE,'unique'),
        array("username",'',"用户名不能为空",self::EXISTS_VALIDATE,'notequal'),
        array("password",'',"密码不能为空",self::EXISTS_VALIDATE,'notequal'),
        array("nickname",'',"昵称不能为空",self::EXISTS_VALIDATE,'notequal'),
        array("sex",'checkSex','性别不仔细',self::EXISTS_VALIDATE,'callback'),
        array("email",'email',"email 不合法")
    );
    
    public function checkSex($sex){
        if($sex =='f' || $sex =='m'){
            return true;
        }
        return false;
    }
    
	
	public function geton(){
		return $this->select();
	}
	
	
	
	public function addmember($data){
	    
	    $data["ctime"]=time(); //注册时间
	    $data["cIP"]=$_SERVER['REMOTE_ADDR'];//加入注册IP
	    
	    $data["lasttime"]=time(); //登录时间
	    $data["lastIP"]=$_SERVER['REMOTE_ADDR'];//登录IP
	    
	    $data["password"]=md5($data["password"]);
	    
	    
	    $data["birth"]=strtotime($data["birth"]); //将时间转化成时间戳
	    //echo date("Y/m/d",$data["birth"]);
// 	    $this->create($data);
	    
	    if($this->create($data)){
	        $res=$this->add();
	        if($res){
	            // 			echo "success";
	            return qc_json_success();
	        }else{
	            return qc_json_error("添加错误");
	        }
	    } 
	        return qc_json_error($this->getError());
	        
	    
	}
	
	public function updatemember($data){
	    //修改用户资料
	    
	    $data["birth"]=strtotime($data["birth"]); //将时间转化成时间戳
	    if($this->create($data)){
	        $res=$this->save($data);
	        if($res){
	            return qc_json_success();
	        }else{
	            return  qc_json_success();
	        }
	    }else {
	        return qc_json_error($this->getError());
	    }
	}
	
	
	public function updatepassword($id,$password,$newpassword){ //$password 旧密码
	    //修改密码
	    
	    if($this->chkpassword($id, $password)){
	        //密码验证成功
	        $this->create(array('id'=>$id,'password'=>$newpassword));
	        $res=$this->save();
	        if($res){
	            return qc_json_success();
	        }else{
	            return qc_json_error("更新失败");
	        }
	    }else {
	        return qc_json_error("密码错误");
	    }
	    
	}
	
	public function chkpassword($id,$password){
	    //这个是原始密码检测
	   $where="id=%d and password='%s'";
	   $res=$this->where($where,$id,$password)->find();
	   
	   if($res){
	       return true;
	   }
	   
	   return false;
	   
	}
	
	public function chklogin($username,$password){
		//检测用户登录
		$where="username='%s' and password='%s'";
		
		$res=$this->where($where,$username,$password)->find();
		
		if($res){
			session(array('name'=>session_id(),'expire'=>20));//设置session过期的时间
			
			unset($res['password']); //session不存入密码这属性
			
			session("member",$res);//将登录成功会员数据存在session中
			return qc_json_success();
		}else{
			return qc_json_error("密码错误");
		}
		
	}
	
	
	public function getMemberInfo($id){
	    $res=$this->field("password",true)->where("id='%d'",$id)->find();
	    if($res){
	        return qc_json_success($res);
	    }
	    return qc_json_error("查不到该用户");
	}

}