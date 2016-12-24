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
   %>
   <br/>
  我是用EL表达式取值: ${msg}
</body>
</html>