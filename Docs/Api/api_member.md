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
phone|电话号码|N|varchar(64)
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

`ps: 该接口需要用户登录`


字段  |描述 |  是否必须 |数据类型
------------ | -------------| -------------| -------------
nickname|  昵称      | N|varchar（32）
sex  | 性别 | N|char （f，m）
phone|电话号码|N|varchar(64)
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
`ps: 该接口需要用户登录`

字段  |描述 |  是否必须 |数据类型
------------ | -------------| -------------| -------------
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


###获取登录会员信息

`POST /home/member/getloginmember` 
`该api 需要登录`


```json

{
    "code": 20000,
    "response": {
        "id": "2",
        "username": "zhlhuang",
        "nickname": "黄振炼",
        "sex": "m",
        "company": "1",
        "position": "1",
        "phone": "15088132444",
        "email": "364626853@qq.com",
        "birth": "2014",
        "lasttime": "1414739037",
        "lastIP": "127.0.0.1"
    }
}
```




###获取会员信息



`POST /home/member/getonemember`  
`该api 需要登录`  


字段  |描述 |  是否必须 |数据类型
------------ | -------------| -------------| -------------
memberid|用户id|N|不传入默认登录id



```json

{
    "code": 20000,
    "response": {
        "id": "2",
        "username": "zhlhuang",
        "nickname": "黄振炼",
        "sex": "m",
        "company": "1",
        "position": "1",
        "phone": "15088132444",
        "email": "364626853@qq.com",
        "birth": "729964800",
        "lasttime": "1414739037",
        "lastIP": "127.0.0.1"
    }
}
```



