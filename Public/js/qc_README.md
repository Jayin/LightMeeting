qc.js
===
> @Jayin Ton

### 包含 :
- jQuery的http get post封装
- 创建表单工具


Useage
===

### 配置
配置`base_url`  
```js
qc.base_url = "/LightMeeting";
```

配置调试模式开关  
```javascript
qc.debug = false;
```

### 预热

正确处理返回  
```json
{
    "code": 20000,
    "response": {
            "id": "2",
            "meetid": "1",
            "memberid": "9",
            "title": "amazing!",
            "content": "萌萌哒的内容",
            "ctime": "1416205119"
        } 
    
}
```

错误处理返回  
```json
{
    "error_code": 40000,
    "msg": "密码长度不对" 
    
}
```

下面说道的successf_handler 就是用于处理正确处理返回的函数,
```javascript
function(response){
    //reponse 就是返回来的对象
}
```

同样error_handler 就是用于处理正确处理返回的函数,
```javascript
function(msg){
    //msg 就是返回来的提示信息
}
```


### 发送一个GET请求
```javascript
//默认为false
qc.debug = true;
qc.get('/home/vote/lists',{"page":1,"limit" : 10},
    function (response){
       // 处理争取返回的情况
       console.log(response);
       //response 就是返回的json字符串的
    },function(msg){
        alert(msg)''
    });
```

### 发送一个POST请求
```javascript
//默认为false
qc.debug = true;
qc.post('/home/member/login',{"username":"test1","password" : "23333"},
    function (response){
       // 处理争取返回的情况
       console.log(response);
       //response 就是返回的json字符串的
    },function(msg){
        alert(msg)''
    });
```

### 创建表单
```javascript
qc.form().add('username').add('password').create();
// Object {username: "test", password: "123123123"} 
```
 
