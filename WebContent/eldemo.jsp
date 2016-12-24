<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>EL表达式测试</title>
</head>
<body>
  我是用request隐含对象去取值 <% 
      String msg = (String)request.getAttribute("msg");
       out.write(msg);
       pageContext.setAttribute("msg","我是当前页的msg");
   %>
   <br/>
 取值顺序:先取与对象小的
 取pageContext里面的数据${msg}
  我是用EL表达式取值: #
  取request对象里面数据${requestScope.msg}
  再取request对象里面的其他数据${requestScope.msg1}
  取application ${applicationScope.msg}$
<br/>
  直接取对象:${user}<br/>
  取完对象用对象名圆点符号调用成员方法获取值:${user.getName()}<br/>
  取完对象用圆点符号调用大括号后面那个成员变量对应的get方法:${user.name}<br/>
  取完对象用圆点符号调用大括号后面那个成员变量对应的get方法:${user.age}<br/>
 取对象的对象:${user.info}<br/>
 取对象的对象的属性:${user.info.msg}<br/>
<form action="#" method="get">
  普通文本框<input type="text" name="name.x">
<input type="checkbox" value="111111" name="y">
<input type="checkbox" value="22222" name="y" checked>
<input type="checkbox" value="33333" name="y">
<input type="submit" value="提交">
<input name="password" type="password"/> 
</form>
param只能得到单一的参数
纯圆点符号${param.name.x}<br/>
中括号访问${param['name.x']}<br/>
复选框值${param.y}<br/>
普通元素的name${param.password}<br/>
paramValues得到一组请求参数 ---类似数组<br/>
取对象${paramValues.y}<br/>
取第一个值${paramValues.y[0]}<br/>
取第二个值${paramValues.y[1]}<br/>
取第三个值${paramValues.y[2]}<br/>
EL运算<br/>
加法运算:${3+3}<br/>
比较运算:${5>3}<br/>
逻辑运算:${true&&false }<br/>
为空判断:不存在-》${empty requestScope.ssss}<br/>
为空判断:存在——》${empty requestScope.msg}<br/>
三目条件运算:${16<5?'small':"big" }<br/>
获取上下文路径:${pageContext.request.contextPath }
</body>
</html>