<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
 
<%
request.getAttribute("msg");
response.getBufferSize();
pageContext.getAttribute("");
session.getAttribute("");
application.getAttribute("");
config.getServletName();
out.print("");
page.toString();
 
%>
EL表达式的对象对应java对象的数据域
数据域类型是java.util.Map
EL表达式的对象类型java.util.Map类型

${pageContext.page}
${pageScope.msg}
 ${requestScope.msg}
${sessionScope.msg}
 ${application.msg }
 ${param.msg}
 ${paramValues.msg}
 ${header.msg }
 ${headerValues.msg }
 ${cookie.msg}
 ${initParam.msg}
</body>
</html>