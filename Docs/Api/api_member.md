api_member
===
> 会员管理  
> By zhlhuang

**NOTE 注意检查权限**

###会员注册
`POST /home/member/addmember`

字段  |描述 |  是否必须 |数据类型
------------ | -------------| -------------| -------------
username | 用户名     | Y|varchar（32）
nickname|  昵称      | Y|varchar（32）
password  | 密码不需要加密   | Y|varchar（32）
sex  | 性别 | Y|char （f，m）
email  | 电子邮箱  | Y|varchar（64）
company|公司名称|N|int
position|公司职位|N|int
birth|出生日期|N|2014-10-30


**Response**  

```json
{
    "code":20000,
    "response"："operate successfully"
}
```



###更新会员资料
`POST /home/member/updatemember`

字段  |描述 |  是否必须 |数据类型
------------ | -------------| -------------| -------------
nickname|  昵称      | N|varchar（32）
sex  | 性别 | N|char （f，m）
email  | 电子邮箱  | N|varchar（64）
company|公司名称|N|int
position|公司职位|N|int
birth|出生日期|N|2014-10-30

```json
{
    "code":20000,
    "response"："operate successfully"
}
```


###修改密码
`POST /home/member/updatepassword`  

字段  |描述 |  是否必须 |数据类型
------------ | -------------| -------------| -------------
id|用户id|Y|varchar(32)
password|原密码|Y|varchar（32）
newpassword|新密码|Y|varchar（32）

```json
{
    "code":20000,
    "response"："operate successfully"
}
```


###用户登录
`POST /home/member/login`  
  
字段  |描述 |  是否必须 |数据类型
------------ | -------------| -------------| -------------
username|用户名|Y|varchar（32）
password|用户密码|Y|varchar（32）



```json
{
    "code":20000,
    "response"："operate successfully"
}
```


###退出登录
`POST /home/member/logout`  

```json
{
    "code":20000,
    "response"："operate successfully"
}
```





