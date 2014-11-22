api_document
===
> 会议管理  
> By zhlhuang   

###文档创建

`POST /home/document/createdoc`  

`ps：该api需要登录`     

字段  |描述 |  是否必须 |数据类型
------------ | -------------| -------------| -------------
meetid|所属会议id|Y|int
title|文档标题|Y|varchar
content|文档内容|Y|text

**Response**  

```json
{
    "code":20000,
    "response"："operate successfully"
}
```
### 文档更新


`POST /home/document/updatedoc`  

`ps：该api需要登录`



字段  |描述 |  是否必须 |数据类型
------------ | -------------| -------------| -------------
id|文档id|Y|int
title|文档标题|Y|varchar
content|文档内容|Y|text

```json
{
    "code":20000,
    "response"："operate successfully"
}
```
### 删除文档


`POST /home/document/deletedoc`  

`ps：该api需要登录`



字段  |描述 |  是否必须 |数据类型
------------ | -------------| -------------| -------------
id|文档id|Y|int

```json
{
    "code":20000,
    "response"："operate successfully"
}
```


### 查看会议文档列表


`POST /home/document/listmeetdoc`  

`ps：该api需要登录`



字段  |描述 |  是否必须 |数据类型
------------ | -------------| -------------| -------------
meetid|文档所属会议id|Y|int
page|页数|N|int默认1 
limit|每页数量|N|int 默认5

```json
{
    "code": 20000,
    "response": [
        {
            "id": "7",
            "meetid": "1",
            "memberid": "2",
            "title": "文档标题",
            "content": "文档html",
            "ctime": "1416148308"
        }
    ]
}
```


### 查看文档


`GET /home/document/listdoc/7.html`  
以上是一个伪静态格式  

`ps：该api需要登录`  
```json
{
    "code": 20000,
    "response": {
        "id": "7",
        "meetid": "1",
        "memberid": "2",
        "title": "文档标题",
        "content": "文档html",
        "ctime": "1416148308"
    }
}

```

