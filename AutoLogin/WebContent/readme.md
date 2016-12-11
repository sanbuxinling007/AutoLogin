利用Cookie进行自动登录
=====

思路
-----

### 在登录页面

1. 在login.jsp页面,获取本地所有的Cookie对象
2. 查找有没有目标cookie,根据cookie的名字判断  ```cookie[i].getName().equals("xxx")``
3. 如果找到目标,则获取到cookie的值,并进行分割,从而获取到用户名和密码

###在验证页面

1. 获取传递过来的参数
2. 如果参数都正确,则设置cookie对象,并发送到客户端进行存储


