<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 类似java的import上面一行导入了jstl标签库 也可以导入其他标签库
     1:prefix--写一个前缀名 jsp页面可以使用这个前缀名
                                                 来标识我们使用的标签是jstl标签
     2:uri 库文件的唯一标识，比如JSTL分为很多库，
                              上面一行只是导入jstl中的一个库文件core
 -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSTL测试</title>
</head>
<body>
	<a href="index.jsp">返回主页</a>
	<p>
	<h1>jsp自带属性测试数据</h1>
	<%
		for (int i = 0; i < 3; i++) {
	%>
	jsp自带测试
	<%=i%>
	<%
		}
	%>
	</p>
	<%
		java.util.Map<String, String> map = new java.util.HashMap<String, String>();
		map.put("mapmsg", "mapvalue");
		request.setAttribute("map", map);
	%>

	<p>
	<h3>set属性测试数据</h3>
	<ul>
		<li>(1)执行&lt;c:set var="jstlvar" value="I'm jstlv
			value"&gt;&lt;/c:set&gt;输出数据 <c:set var="jstlvar"
				value="I'm jstlv value"></c:set> <c:out value="${jstlvar}"></c:out>
		</li>
		<li>(2)target property 属性测试
			<p>
				java.util.Map&lt;String,String&gt; map = new
				java.util.HashMap&lt;String,String&gt;(); <br /> map.put("mapmsg",
				"mapvalue"); <br />request.setAttribute("map",map);
			</p> <br /> 修改前的map属性值:${map.mapmsg} <br /> <c:set target="${map}"
				property="mapmsg" value="m" />
			<p>执行&lt;c:set target="${map}" property="mapmsg" value="m"
				/&gt;之后</p>
			<p>修改过的map属性值:${map.mapmsg}</p> <br />
			</p>
			<h3>总结-----c:set:设置某个变量的值 ,修改某个变量的值</h3>
			<ul>
				<li>1:var变量</li>
				<li>2:value值</li>
				<li>3:scope---作用域--page|request|session|application</li>
				<li>4:target--指向要修改变量的变量名 property要修改的变量的属性如果是map就是key value
					修改后的属性
			</ul>
		</li>
	</ul>

	<h3>out属性测试数据</h3>
    执行&lt;c:out value="${msg1}" default="默认<c:out value="&nbsp值" escapeXml="true"/>" escapeXml="false"&gt;&lt;/c:out&gt;
	<c:out value="${msg1}" default="默认&nbsp值" escapeXml="false"></c:out>
	 


	<h3>c:out:属性</h3>
	<ul>
		<li>1:value---里面写值用双引号引起来--(1)可以直接写字符串(2)EL表达式</li>
		<li>2:default---当value里面取值为null 显示这个默认值直接写的"null"字符串不可以</li>
		<li>3:escapeXml---前面值的结果html元素 判断是否对它进行转义
			true--直接输出内容不以html元素进行解析以字符串方式输出 false--以html元素方式输出</li>
	</ul>

</body>
</html>