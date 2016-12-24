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
  取完对象用圆点符号调用大括号后面那个成员变量对应的get方法${user.age}


</body>
</html>