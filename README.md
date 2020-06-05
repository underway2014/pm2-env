## pm2-env是什么
由于做nodejs开发，pm2启动项目，有时不知道当前运行的环境变量，故而有了这个包，可以方便的查看pm2运行环境变量，当然也可以查看其他
进程的环境变量

## 安装
* npm i -g pm2-env

## 使用
* pm2-env param1 [param2]
    + param1: 要搜索的进程名称，必填
    + param2: 搜索进程环境变量再次过滤key, 该参数为可选

## 运行结果
![效果图](http://images.yantinglife.com/pm2-env-res.png)

## 关于作者
```javascript
var author = {
  name: "binli"
}
```
