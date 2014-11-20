api_common
===
> 常用工具接口  
> By Jayin Ton  

### 生成二维码
`GET /home/common/createQRcode` 

字段  |描述 |  是否必须 
------------ | -------------| -------------
text | 二维码内容     | Y
size  | 图像长宽 二维码长宽,一般为25的倍数,单位：px | N
margin | 外边距 单位:px | N
 
**Response**

二进制图片