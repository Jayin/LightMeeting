api_meet
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


###会议更新
`POST /home/meet/updatemeet`

`ps：该api需要登录`  

字段  |描述 |  是否必须 |数据类型
------------ | -------------| -------------| -------------
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


###删除会议
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

###参加会议
`POST /home/meet/addjoin`

`ps：该api需要登录`  

字段  |描述 |  是否必须 |数据类型
------------ | -------------| -------------| -------------
meetid|加入会议id|Y|int
memberid|加入人员id|Y|int


```json
{
    "code":20000,
    "response"："operate successfully"
}
```


###退出会议
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



###查看会议成员
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
            "id": "2",
            "username": "zhlhuang",
            "nickname": "黄振炼",
            "sex": "m",
            "company": "1",
            "position": "1",
            "stime": "1415004702"
        }
    ]
}
```


###查看会议列表
`POST /home/meet/getjoinmeet`

`ps：该api需要登录`   

字段  |描述 |  是否必须 |数据类型
------------ | -------------| -------------| -------------
memberid|成员id|N|为NULL查看登录memberid

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
            "starttime": "1412163023",
            "endtime": "1412170256"
        },
        {
            "id": "1",
            "title": "袂卓第一次会议",
            "intro": "这是我们第一次全体例会",
            "address": "北主楼1608",
            "createmember": "2",
            "weight": "20",
            "starttime": "1411039823",
            "endtime": "1411047056"
        }
    ]
}
```

