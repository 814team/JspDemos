<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<p>sessionMsg:${sessionScope.msg}</p>
<p>username:${sessionScope.username}</p>
<p>requestMsg:${requestScope.msg }</p>
<p><a href="InvalidateLogin.do">注销</a>
<p><a href="SessionSecond.jsp">再跳转一次</a></p>
<p><a href="SessionServlet.do">测试用户是否登陆，测试session是否失效</a></p>
</body>
</html>