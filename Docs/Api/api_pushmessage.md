api_pushmessge
===
> 推送消息接口
> By zjien & Jayin Ton   

**需要登录**


### 创建推送消息
`POST /home/PushMessage/create`  


字段  |描述 |  是否必须 |数据类型
------------ | -------------| -------------| -------------
to|'发送对象(a:全部 id为个人or会议群组)|Y|text
content|发送内容|Y|text
type|发送对象类型(1全部，2会议群组，3个人)|Y

**to字段**
对于暴露给客户端：你只需要填写a或者一个数字（id）
若type为1，to是a,若type为2或者3，to

- 如果是推送给客户端全部用户，那么to字段就是a
- 如果是推送给客户端单一用户，那么to字段就是p_xx xx为用户id
- 如果是推送给一个会议的所有人，那么to字段就是m_xx xx为会议id

**客户端设计**
按上述字段定义自己的tag


**Response**  
成功  
```json
{
    "code":20000,
    "response"："operate successfully"
}
```
错误  
```json
{
    "error_code":40000,
    "msg":{
            "msg":"cannot find user by this audience"
            ,"code":1011
        }
}

```



### 发送已创建的的推送消息
`POST /home/PushMessage/send`  

字段  |描述 |  是否必须 |数据类型
------------ | -------------| -------------| -------------
id|消息id|Y|int

**Response**  

```json
{
    "code":20000,
    "response"："operate successfully"
}
```


### 删除推送消息
`POST /home/PushMessage/delete`  

字段  |描述 |  是否必须 |数据类型
------------ | -------------| -------------| -------------
id|消息|Y|int

**Response**  

```json
{
    "code":20000,
    "response"："operate successfully"
}
```



### 获得推送消息列表
`GET /home/PushMessage/lists`  


字段  |描述 |  是否必须 |数据类型
------------ | -------------| -------------| -------------
page|页码|YN|int
limit|返回数|N|int

**Response**  

```json
{
    "code":20000,
    "response"：[

    ]
}
```