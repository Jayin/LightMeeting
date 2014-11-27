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
    "response"：{
        "researchid" : 1
    }
}
```

### 添加一问题
`POST /home/research/createQuestion`

字段  |描述 |  是否必须 
------------ | -------------| -------------
researchid | 所属调查表id     | Y
title  |  问题标题| Y
option_tpye | 调查问题选项类型(1单选2多选)|Y
options  | 选项 JSON字符串"{1:man,2:woman}"  | Y


**Response**  

```json
{
    "code":20000,
    "response"："operate successfully"
}
```



### 批量添加问题
`POST /home/research/createQuestionMulti`

字段  |描述 |  是否必须 
------------ | -------------| -------------
researchid | 所属调查表id     | Y
muti_questions | 多项问题,格式为[{title:"Do you like?","type":1， "options":"json字符串"}] |Y

**NOTE** 
muti_options为数组
```json
"muti_options":
    "[{title:"Do you like?","type":1， "options":"json字符串"},{title:"Do you like?","type":1， "options":"json字符串"}]"
```

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
title  | 问题标题| N
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
`GET /home/research/listQuestion`

字段  |描述 |  是否必须 
------------ | -------------| -------------
researchid | 调查id | Y
page | 页数 | N
limit | 每页数量 | N


**Response**  

```json
{
    "code": 20000,
    "response": [
        {
            "id": "55",
            "researchid": "1",
            "title": "whar do you like?",
            "options": {
                "0": "我是帅哥",
                "1": "我是老爸",
                "3": ""  //如果为空，那么说明要填写才能提交
            },
            "option_type": "2" //多选
        },
        {
            "id": "64",
            "researchid": "1",
            "title": "What's you sex?",
            "options": {
                "1": "man",
                "2": "woman"
            },
            "option_type": "1" //单选
        }
        .....
    ]
}
```



### 更新调查表
`POST /home/research/update` 

字段  |描述 |  是否必须 
------------ | -------------| -------------
id | 调查id | Y
title|  调查标题      | Y
intro  | 调查简介   | N
stime   | 起始时间(格式2014-10-01) | Y
etime   | 终止时间(格式2014-10-01) | Y


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
researchid | 调查表id | Y


**Response**  

```json
{
    "code":20000,
    "response"："operate successfully"
}
```


### 用户回答(单选题)问题
`POST /home/research/answer` 

**单选题调用这个接口**


字段  |描述 |  是否必须 
------------ | -------------| -------------
questionid | 问题id | Y
optionid | 答案id | Y
option_content | 答案内容 | Y



**Response**  

```json
{
    "code":20000,
    "response"："operate successfully"
}
```

### 用户回答(多选)问题
`POST /home/research/answerMulti` 

**多题调用这个接口**


字段  |描述 |  是否必须 
------------ | -------------| -------------
questionid | 问题id | Y
multi_option | json字符串 格式：[{"optionid":1,"option_content":"man"},{"optionid":1,"option_content":"man"}] | Y

**multi_option**
```json
//格式：
[{"optionid":1,"option_content":"man"},{"optionid":1,"option_content":"man"}] 
```


**Response**  

```json
{
    "code":20000,
    "response"："operate successfully"
}
```


### 查看调查表
`GET /home/research/info` 

字段  |描述 |  是否必须 
------------ | -------------| -------------
researchid |  调查表id  | Y


**Response**  

```json
{
    "code": 20000,
    "response": {
        "id": "2",
        "meetid": "1",
        "title": "Title22",
        "intro": "This is introduction222",
        "stime": "1356969600",
        "etime": "1356969600",
        "questions": [
            {
                "id": "7",
                "researchid": "2",
                "title": "what's you sex?",
                "options": {
                    "1": "man",
                    "2": "woman"
                }
            },
            {
                "id": "8",
                "researchid": "2",
                "title": "what's you sex?",
                "options": {
                    "1": "man",
                    "2": "woman"
                }
            }
        ]
    }
}
```

### 获得会议的调查列表
`POST /home/research/lists` 

字段  |描述 |  是否必须 
------------ | -------------| -------------
meetid | 会议id | Y
page | 页数 | N
limit | 每页数量 | N


**Response**  

```json
{
    "code": 20000,
    "response": [
        {
            "id": "1",
            "meetid": "1",
            "title": "Title1",
            "intro": "This is introduction",
            "stime": "1356969600",
            "etime": "1356969600"
        },
        {
            "id": "2",
            "meetid": "1",
            "title": "Title1",
            "intro": "This is introduction",
            "stime": "1356969600",
            "etime": "1356969600"
        },
        ........
    ]
}
```
