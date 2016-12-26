<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="navhead.jsp" %>
<form>

  <input type="text" name="msg" value="first input"/>
  <input type="text" name="msg" value="second input"/>
   <input type="submit" value="提交"/>
  </form>
	<%
		pageContext.setAttribute("msg", "我是来自于pageContext");
		request.setAttribute("msg", "我是来自于request对象");
		session.setAttribute("msg", "我是来自于session对象");
		application.setAttribute("msg", "我是来自于applicatioin对象");

		config.getServletName();
		out.print("");
		page.toString();
		response.getBufferSize();
	%>
	EL表达式的对象对应java对象的数据域 数据域类型是java.util.Map EL表达式的对象类型java.util.Map类型
   <br/>
	     pageContext:${pageContext.page}
	<br /> pageScope:${pageScope.msg}
	<br /> requestScope:${requestScope.msg}
	<br /> sessionScope:${sessionScope.msg}
	<br /> applicationScope:${applicationScope.msg }
	<br /> param:${param.msg}   请求参数提交表单的数据或者URL参数，获取单个数据
	<br /> paramValues:${paramValues.msg[1]} 请求参数提交表单的数据或者URL参数，获取一组数据
	<br /> header:${header.Connection } 获取的是请求头信息对象名后面跟上请求头的name信息
	<br /> headerValues:${headerValues.Accept[0]}  获取的是一组头信息
	<br /> cookie: ${cookie.JSESSIONID.value}  获取cookie里面的信息
	<br /> initParam:${initParam.pppppp}
	<br />
</body>
</html>