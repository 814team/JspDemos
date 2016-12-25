<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form>
  <input type="text" name="msg" value="I'm from text msg please sumbmit get  result"/>
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
	<br /> application:${applicationScope.msg }
	<br /> param:${param.msg}
	<br /> paramValues:${paramValues.msg}
	<br /> header:${header.msg }
	<br /> headerValues:${headerValues.msg}
	<br /> cookie: ${cookie.msg}
	<br /> initParam:${initParam.msg}
	<br />
</body>
</html>