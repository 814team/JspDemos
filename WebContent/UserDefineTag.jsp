<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="e" uri="http://www.echoedu.cn/tag/echo"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>自定义标签</title>
</head>
<body>
<%@ include file="navhead.jsp" %>
<ul>
  <li>
    <p>执行&lt;e:hello/&gt;
    </p>
    <p>显示:<e:hello/></p>
  </li>
   <li>
    <p>执行&lt;e:helloworld username="张三"/&gt;
    </p>
    <p>显示:<e:helloworld username="张三"/></p>
  </li>
</ul>
 
</body>
</html>