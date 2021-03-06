﻿api_meet
===
> 会议管理  
> By zhlhuang


### 会议添加
`POST /home/meet/addmeet`
  
`ps：该api需要登录`  

字段  |描述 |  是否必须 |数据类型
------------ | -------------| -------------| -------------
title|会议主题|Y|varchar（256）
intro|会议介绍|N|varchar（2048）
address|会议地点|Y|varchar（526）
starttime|会议开始地点|Y|eg 2014-09-25 21:30:25
endtime|会议结束地点|Y|eg 2014-09-25 21:30:25

**Response**  

```json
{
    "code":20000,
    "response"："operate successfully"
}
```


### 会议更新
`POST /home/meet/updatemeet`

`ps：该api需要登录`  

字段  |描述 |  是否必须 |数据类型
------------ | -------------| -------------| -------------
id|会议id|Y|int
title|会议主题|N|varchar（256）
intro|会议介绍|N|varchar（2048）
address|会议地点|N|varchar（526）
starttime|会议开始地点|N|eg 2014-09-25 21:30:25
endtime|会议结束地点|N|eg 2014-09-25 21:30:25


```json
{
    "code":20000,
    "response"："operate successfully"
}
```


### 删除会议
`POST /home/meet/deletemeet`

`ps：该api需要登录`  

字段  |描述 |  是否必须 |数据类型
------------ | -------------| -------------| -------------
meetid|所要删除的会议id|Y|int

```json
{
    "code":20000,
    "response"："operate successfully"
}
```

### 参加会议
`GET /home/meet/addjoin`

`ps：该api需要登录`  

字段  |描述 |  是否必须 |数据类型
------------ | -------------| -------------| -------------
meetid|加入会议id|Y|int


```json
{
    "code":20000,
    "response"："operate successfully"
}
```

### 会议签到
**会议签到，如果之前没有加入会议，就相当于加入+签到。如果之前加入了，现在就只有签到功能 **  
`GET /home/meet/checkIn`

`ps：该api需要登录`  

字段  |描述 |  是否必须 |数据类型
------------ | -------------| -------------| -------------
meetid|加入会议id|Y|int

**没有加入返回 **  
```json
{
    "code":20000, // error_code:40000
    "response"："加入成功" // msg:加入失败
}
```

**已经加入**  

```json
{
    "code":20000, // error_code:40000
    "response"："签到成功" // msg:签到失败
}
```


### 退出会议
`POST /home/meet/outjoin`

`ps：该api需要登录`  

字段  |描述 |  是否必须 |数据类型
------------ | -------------| -------------| -------------
meetid|加入会议id|Y|int


```json
{
    "code":20000,
    "response"："operate successfully"
}
```



### 查看会议成员
`POST /home/meet/getjoinmember`

`ps：该api需要登录` 

 
字段  |描述 |  是否必须 |数据类型
------------ | -------------| -------------| -------------
meetid|查询会议的id|Y|int


```json
{
    "code": 20000,
    "response": [
        {
            "stime": "1416629119",
            "checkin": "0",
            "checkin_time": null,
            "id": "26",
            "username": "zhlhuang",
            "nickname": "黄振炼",
            "sex": "m",
            "company": null,
            "position": null
        }
    ]
}
```


### 查看会议列表
`POST /home/meet/getjoinmeet`

`ps：该api需要登录`   

字段  |描述 |  是否必须 |数据类型
------------ | -------------| -------------| -------------
page|页数|N|int
limit|每页数量|N|int

```json
{
    "code": 20000,
    "response": [
        {
            "id": "3",
            "title": "袂卓第二次会议",
            "intro": "这是我们第二次全体例会",
            "address": "北主楼1608",
            "createmember": "2",
            "weight": "20",
            "starttime": "2014-10-01 19-30-23",
            "endtime": "2014-10-01 21-30-56"
        },
        {
            "id": "14",
            "title": "袂卓第五次会议",
            "intro": "这是我们第五次全体例会",
            "address": "2014-09-25",
            "createmember": "2",
            "weight": "0",
            "starttime": "2014-09-25 00-00-00",
            "endtime": "2014-09-25 00-00-00"
        }
    ]
}
```

