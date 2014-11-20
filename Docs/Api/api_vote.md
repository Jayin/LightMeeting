api_vote
===
> 投票  
> By Jayin Ton

**NOTE 注意检查权限**

### 创建(发起)投票项
`POST /home/vote/create` 

字段  |描述 |  是否必须 
------------ | -------------| -------------
meetid | 所属会议id     | Y
title|  投票主题      | Y
intro  | 投票简介   | Y
stime   | 起始时间   | Y
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
voteid | 所属投票表id     | N
meetid|  所属会议表id      | N
vpintro  | 选项 介绍   | Y


**Response**  

```json
{
    "code":20000,
    "response"："operate successfully"
}
```

### 删除一选项
`POST /home/vote/deleteOption`

字段  |描述 |  是否必须 
------------ | -------------| -------------
vpotionsid | 选项id | Y


**Response**  

```json
{
    "code":20000,
    "response"："operate successfully"
}
```

### 获得选项列表
`POST /home/vote/listOption`

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



### 更新投票项
`POST /home/vote/update` 

字段  |描述 |  是否必须 
------------ | -------------| -------------
id | 投票id | Y
title|  投票主题      | N
intro  | 投票简介   | N
stime   | 起始时间   | Y
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
optionsid | 选项id | Y
voteid：|  投票id  | Y


**Response**  

```json
{
    "code":20000,
    "response"："operate successfully"
}
```


### 查看一投票项
`POST /home/vote/info` 

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
        "option": [
            {
                "id": "4",
                "voteid": "2",
                "meetid": "1",
                "vpintro": "iphone",
                "count": "0"
            },
            ......
        ]
    }
}
```


### 获得会议的投票列表
`POST /home/vote/lists` 

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
            "title": "title1",
            "intro": "intro1",
            "ctime": "1415609755",
            "stime": "1415980800",
            "etime": "1419436800"
        },
        {
            "id": "3",
            "meetid": "1",
            "title": "title1",
            "intro": "intro1",
            "ctime": "1415609820",
            "stime": "1415980800",
            "etime": "1419436800"
        },
      ........
    ]
}
```


