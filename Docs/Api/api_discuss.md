api_discuss
===
> 讨论接口  
> By Jayin Ton


### 创建(发起)讨论
`POST /home/discuss/create` 

字段  |描述 |  是否必须 
------------ | -------------| -------------
meetid | 所属会议id     | Y
title|  讨论标题      | Y
content  | 讨论简介   | Y

**Response**  

```json
{
    "code":20000,
    "response"："operate successfully"
}
```


### 更新讨论信息
`POST /home/discuss/update` 

字段  |描述 |  是否必须 
------------ | -------------| -------------
discussid|  讨论id      | Y
title|  讨论标题      | N
content  | 讨论简介   | N

**Response**  

```json
{
    "code":20000,
    "response"："operate successfully"
}
```


### 删除讨论信息
`POST /home/discuss/delete` 

**把对应的讨论也删除掉**

字段  |描述 |  是否必须 
------------ | -------------| -------------
discussid|  讨论id      | Y

**Response**  

```json
{
    "code":20000,
    "response"："operate successfully"
}
```




### 评论一讨论
`POST /home/discuss/createComment` 


字段  |描述 |  是否必须 
------------ | -------------| -------------
discussid|  讨论id      | Y
content|  评论内容      | Y
reply_member|  评论对象id(即评论中回复某人)  | N


**Response**  

```json
{
    "code":20000,
    "response"："operate successfully"
}
```


### 删除评论
`POST /home/discuss/deleteComment` 

**把对应的讨论也删除掉**

字段  |描述 |  是否必须 
------------ | -------------| -------------
commentid |  评论id      | Y


**Response**  

```json
{
    "code":20000,
    "response"："operate successfully"
}
```



### 获得一讨论的信息
`GET /home/discuss/info` 


字段  |描述 |  是否必须 
------------ | -------------| -------------
discussid|  讨论id      | Y
withComments |  是否需要返回评论列表(0不需要 1需要)  | N

**Response**  

```json
{
    "code": 20000,
    "response": {
        "id": "2",
        "meetid": "1",
        "memberid": "9",
        "title": "amazing!",
        "content": "萌萌哒的内容",
        "ctime": "1416205119",
        "comments": [],
        "comment_count": "0"
    }
}
```



### 获得一讨论的评论的列表
`POST /home/discuss/listComment` 


字段  |描述 |  是否必须 
------------ | -------------| -------------
discussid|  讨论id      | Y


**Response**  

```json
{
    "code": 20000,
    "response": [
        {
            "id": "8",
            "discussid": "2",
            "reply_member": "0",
            "author": "9",
            "content": "碉堡+1",
            "ctime": "1416299683",
            "cip": "127.0.0.1"
        },
        {
            "id": "9",
            "discussid": "2",
            "reply_member": "0",
            "author": "9",
            "content": "碉堡+1",
            "ctime": "1416299684",
            "cip": "127.0.0.1"
        },
        ......
    ]
}
```


### 获得会议的讨论列表
`POST /home/discuss/lists` 

字段  |描述 |  是否必须 
------------ | -------------| -------------
meetid | 会议id | Y


**Response**  

```json
{
    "code": 20000,
    "response": [
        {
            "id": "2",
            "meetid": "1",
            "memberid": "9",
            "title": "amazing!",
            "content": "萌萌哒的内容",
            "ctime": "1416205119"
        },
        {
            "id": "3",
            "meetid": "1",
            "memberid": "9",
            "title": "amazing!",
            "content": "萌萌哒的内容",
            "ctime": "1416205120"
        },
         ........
    ]
}
```



