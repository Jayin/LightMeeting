api_research
===
> 调查  
> By Jayin Ton


**NOTE 注意检查权限**

### 创建调查表
`POST /home/research/create` 

字段  |描述 |  是否必须 
------------ | -------------| -------------
meetid | 所属会议id     | Y
title|  投票主题      | Y
intro  | 投票简介   | Y
stime   | 起始时间(格式2014-10-01)   | Y
etime   | 终止时间(格式2014-10-01)  | Y


**Response**  

```json
{
    "code":20000,
    "response"："operate successfully"
}
```

### 添加一问题
`POST /home/research/addQuestion`

字段  |描述 |  是否必须 
------------ | -------------| -------------
researchid | 所属调查表id     | Y
meetid |  所属会议表id      | Y
title  | | Y
options  | 选项 JSON字符串  | Y


**Response**  

```json
{
    "code":20000,
    "response"："operate successfully"
}
```


### 更新一问题
`POST /home/research/updateQuestion`

字段  |描述 |  是否必须 
------------ | -------------| -------------
questionid |  问题id | Y
title  | | N
options  | 选项 JSON字符串  | N

**Response**  

```json
{
    "code":20000,
    "response"："operate successfully"
}
```

### 删除一问题
`POST /home/research/deleteQuestion`

字段  |描述 |  是否必须 
------------ | -------------| -------------
questionid | 问题id | Y


**Response**  

```json
{
    "code":20000,
    "response"："operate successfully"
}
```

### 获得问题列表
`POST /home/research/listQuestion`

字段  |描述 |  是否必须 
------------ | -------------| -------------
voteid | 投票项id | Y


**Response**  

```json
{
    "code": 20000,
    "response": [
        {
            "id": "4",
            "voteid": "2",
            "meetid": "1",
            "vpintro": "iPhone"
        },
        {
            "id": "5",
            "voteid": "2",
            "meetid": "1",
            "vpintro": "Android"
        },
        {
            "id": "6",
            "voteid": "2",
            "meetid": "1",
            "vpintro": "WinPhone"
        }
    ]
}
```



### 更新调查表
`POST /home/research/update` 

字段  |描述 |  是否必须 
------------ | -------------| -------------
id | 投票id | Y
title|  投票主题      | N
intro  | 投票简介   | N
stime   | 起始时间   | N
etime   | 终止时间  | N


**Response**  

```json
{
    "code":20000,
    "response"："operate successfully"
}
```



### 删除调查表
`POST /home/research/delete` 

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


### 用户回答问题
`POST /home/research/vote` 

字段  |描述 |  是否必须 
------------ | -------------| -------------
questionid | 问题id | Y
researchid|  调查id（可能不需要！  | Y
optionid ｜ 答案id｜
option_content | 答案内容 | Y



**Response**  

```json
{
    "code":20000,
    "response"："operate successfully"
}
```


### 查看调查表
`POST /home/research/info` 

字段  |描述 |  是否必须 
------------ | -------------| -------------
voteid|  投票id  | Y


**Response**  

```json
{
    "code": 20000,
    "response": {
        "id": "2",
        "meetid": "1",
        "title": "title1",
        "intro": "intro1",
        "ctime": "1415609755",
        "stime": "1415980800",
        "etime": "1419436800",
            ......
        ]
    }
}
```
