api_pushmessge
===
> 推送消息接口
> By zjien & Jayin Ton   

**需要登录**


### 创建推送消息
`POST /home/PushMessage/create`  


字段  |描述 |  是否必须 |数据类型
------------ | -------------| -------------| -------------
to|发送对象|Y|text
content|发送内容|Y|text

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