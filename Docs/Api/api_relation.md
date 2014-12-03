api_relation
===
>  人脉关系  
> By zhlhuang


### 创建人脉关系  
`GET /home/relation/create`  

`需要登录`  

字段  |描述 |  是否必须 
------------ | -------------| -------------
vicememberid | 需要添加人的id    | Y


```json

{
    "code": 20000,
    "response": "operate successfully"
}

```




### 删除人脉关系  
`POST /home/relation/delete` 

`需要登录`   

字段  |描述 |  是否必须 
------------ | -------------| -------------
relationid | 人脉表对应的id    | Y



```json

{
    "code": 20000,
    "response": "operate successfully"
}

```




### 获得登陆用户的人脉关系
`POST /home/relation/lists`  

`需要登录`  

字段  |描述 |  是否必须 
------------ | -------------| -------------
page | 页码 默认1    | N
limit | 返回数 默认10 | N

**拿到当前登录用户的人脉列表**

```json

{
    "code": 20000,
    "response": [
        {
            "relationid": "4",
            "id": "9",
            "nickname": "admine",
            "sex": "m",
            "company": 袂卓科技,
            "position": 董事长
        },
        {
            "relationid": "5",
            "id": "10",
            "nickname": "admine1",
            "sex": "m",
            "company": null,
            "position": null
        }
    ]
}

```
