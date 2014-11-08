api_vote
===
> 投票  
> By Jayin Ton


### 创建(发起)投票项
`POST /home/vote/create` 

字段  |描述 |  是否必须 
------------ | -------------| -------------
meetid | 所属会议id     | Y
title|  投票主题      | Y
intro  | 投票简介   | Y
ctime   | 起始时间   | Y
etime   | 终止时间  | Y


**Response**  

```json
{
    "code":20000,
    "response"："operate successfully"
}
```


### 添加一选项
`POST /home/vote/addOption`
字段  |描述 |  是否必须 
------------ | -------------| -------------
voteid | 所属投票表id     | Y
meetid|  所属会议表id      | Y
vpintro  | 选项 介绍   | Y


**Response**  

```json
{
    "code":20000,
    "response"："operate successfully"
}
```


### 更新一选项
`POST /home/vote/updateOption`
字段  |描述 |  是否必须 
------------ | -------------| -------------
vpotionsid | 选项id | Y
voteid | 所属投票表id     | Y
meetid|  所属会议表id      | Y
vpintro  | 选项 介绍   | Y


**Response**  

```json
{
    "code":20000,
    "response"："operate successfully"
}
```



### 更新投票项
`POST /home/vote/update` 

字段  |描述 |  是否必须 
------------ | -------------| -------------
voteid | 投票id | Y
title|  投票主题      | Y
intro  | 投票简介   | Y
ctime   | 起始时间   | Y
etime   | 终止时间  | Y


**Response**  

```json
{
    "code":20000,
    "response"："operate successfully"
}
```



### 删除投票项
`POST /home/vote/delete` 

字段  |描述 |  是否必须 
------------ | -------------| -------------
voteid | 投票id | Y


**Response**  

```json
{
    "code":20000,
    "response"："operate successfully"
}
```


### 用户投票
`POST /home/vote/vote` 

字段  |描述 |  是否必须 
------------ | -------------| -------------
vpotionsid | 选项id | Y
voteid：|  投票id  | Y


**Response**  

```json
{
    "code":20000,
    "response"："operate successfully"
}
```


### 查看一投票项
`POST /home/vote/view` 

字段  |描述 |  是否必须 
------------ | -------------| -------------
voteid：|  投票id  | Y


**Response**  

```json
{
    "code":20000,
    "response"：{
        "meetid":1,
        "title":foo,
        "intro":foo,
        "ctime":148000,
        "etime":480000,
        "option" :[
            "1" : {
                "count":1
            },

        ]


    }
}
```
