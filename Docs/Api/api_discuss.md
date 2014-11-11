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

**把对应的讨论也删除掉**

字段  |描述 |  是否必须 
------------ | -------------| -------------
discussid|  讨论id      | Y
reply_member|  评论对象id(即评论中回复某人)  | N
content|  评论内容      | Y

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
`POST /home/discuss/info` 


字段  |描述 |  是否必须 
------------ | -------------| -------------
discussid|  讨论id      | Y
withComments |  是否需要返回评论列表(0不需要 1需要)  | N

**Response**  

```json
{
    "code":20000,
    "response"："operate successfully"
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
    "code":20000,
    "response"："operate successfully"
}
```



