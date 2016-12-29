<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script
	src="https://cdn.static.runoob.com/libs/jquery/1.10.2/jquery.min.js"></script>
<script>
  $(document).ready(function(){
	  $("#getRequest").click(function(){
			$.get("AjaxServlet?id=1&name=zhangsan",function(data,status){
				alert("数据"+data+"\n"+status)
			})
		  });
		  $("#postReuqest").click(function(){
	         $.post("AjaxServlet",{
			    name:"name",
			    url:"http://www.xxx.com"
			  },function(data,status){
				alert("数据: \n" + data + "\n状态: " + status);
		  	})
		})
  });
 
</script>
</head>
<body>
	增加，修改，删除尽量用ajax 查询 原来办法
	<button id="getRequest">发起get请求</button>
	<button id="postReuqest">发起post请求</button>
</body>
</html>