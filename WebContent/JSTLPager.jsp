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
 <%@ include file="navhead.jsp" %>
<body>
	<a href="index.jsp">返回主页</a>
	<ul>
		<li><p>
			<h1>jsp自带属性测试数据</h1> <%
 	for (int i = 0; i < 3; i++) {
 %> jsp自带测试 <%=i%> <%
 	}
 %>
			</p> <%
 	java.util.Map<String, String> map = new java.util.HashMap<String, String>();
 	map.put("mapmsg", "mapvalue");
 	request.setAttribute("map1", map);
 %>

			<p></li>
		<li>
			<h3>&lt;c:set var="" value="" target="" scope=""&gt;</h3>
			<h3>&lt;c:set&gt;属性测试数据</h3>
			<ul>
				<li>
					<p>(1)执行&lt;c:set var="jstlvar" value="I'm jstlv
						value"&gt;&lt;/c:set&gt; &lt;c:out value="$<span/>{jstlvar}"&gt;</p>
					<p>
						输出数据
						<c:set var="jstlvar" value="I'm jstlv value" scope="request"></c:set>
						<c:out value="${jstlvar}"></c:out>
					</p>
				</li>
				<li>(2)target property 属性测试
					<p>
						java.util.Map&lt;String,String&gt; map = new
						java.util.HashMap&lt;String,String&gt;(); <br />
						map.put("mapmsg", "mapvalue"); <br />request.setAttribute("map1",map);
					</p> <br />$<span/>{map1.mapmsg} 修改前的map属性值:${map1.mapmsg} <br /> <c:set
						target="${map1}" property="mapmsg" value="m" />
					<p>执行&lt;c:set target="$<span/>{map1}" property="mapmsg" value="m"
						/&gt;之后</p>
					<p>$<span/>{map1.mapmsg}修改过的map属性值:${map1.mapmsg}</p> <br />
					</p>
					<h3>总结-----&lt;c:set&gt;:设置某个变量的值 ,修改某个变量的值</h3>
					<ul>
						<li>1:var变量</li>
						<li>2:value值</li>
						<li>3:scope---作用域--page|request|session|application</li>
						<li>4:target--指向要修改变量的变量名 property要修改的变量的属性如果是map就是key value
							修改后的属性
					</ul>
				</li>
			</ul>
		</li>
		<li>
			<h3>&lt;c:out&gt;标签总结</h3>
			<h3>&lt;c:out&gt;属性测试数据</h3>
			<p>
				执行&lt;c:out value="$<span/>{msg1}" default="默认
				<c:out value="&nbsp值" escapeXml="true" />
				" escapeXml="false"&gt;&lt;/c:out&gt;
			</p>
			<p>
				输出数据:
				<c:out value="${msg1}" default="默认&nbsp值" escapeXml="false"></c:out>
			</p>
			<h3>&lt;c:out&gt;标签总结</h3>
			<ul>
				<li>1:value---里面写值用双引号引起来--(1)可以直接写字符串(2)EL表达式</li>
				<li>2:default---当value里面取值为null 显示这个默认值直接写的"null"字符串不可以</li>
				<li>3:escapeXml---前面值的结果html元素 判断是否对它进行转义
					true--直接输出内容不以html元素进行解析以字符串方式输出 false--以html元素方式输出</li>
			</ul>
		</li>
		<li>
			<h3>&lt;c:remove&gt;标签</h3>
			<p>执行:&lt;c:set var="removevar" value="willremovevar"
				scope="request"/&gt; &lt;c:out
				value="$<span/>{requestScope.removevar}"/&gt; &lt;c:remove
				var="removevar"/&gt; &lt;c:out
				value="$<span/>{requestScope.removevar}"/&gt;</p>
			<p>显示:
			<ul>
				<li>设置变量位置<c:set var="removevar" value="willremovevar"
						scope="request" /></li>
				<li>删除前的输出 :<c:out value="${requestScope.removevar}" /></li>
				<li>删除变量位置<c:remove var="removevar" /></li>
				<li>删除后的输出: <c:out value="${requestScope.removevar}" /></li>
			</ul>
			</p>
		</li>
		<li>
			<h3>&lt;c:if&gt;标签</h3>
			<p>执行: &lt;c:if test="$<span/>{5>3}"&gt; if判断结果为true执行 &lt;/c:if&gt;</p>
			<p>
				显示:
				<c:if test="${5>3}">
             if判断结果为true执行
          </c:if>
			</p>
		</li>
		<li>
			<h3>&lt;c:choose&gt; &lt;c:when&gt; &lt;c:otherwise&gt;</h3>
			<p>
				&lt;form&gt;<br /> &lt;input type="text" name="age" value="18"
				/&gt;<br /> &lt;input type="submit" value="提交测试" /&gt;<br />
				&lt;/form&gt;<br /> 执行: <br />&lt;c:choose&gt;<br /> &lt;c:when
				test="$<span/>{param.age>=18}"&gt; <br /> 我已经成年 <br /> &lt;/c:when&gt; <br />&lt;c:otherwise&gt;
				<br />我还未成年 <br /> &lt;/c:otherwise&gt; <br />&lt;/c:choose&gt;
			</p>
			<p>显示:
			<form>
				<input type="text" name="age" value="18" /> <input type="submit"
					value="提交测试" />
			</form> 执行: <c:choose>
				<c:when test="${param.age>=18}">
                  我已经成年
                </c:when>
				<c:otherwise>
                      我还未成年
				</c:otherwise>
			</c:choose>
			</p>
		</li>
		<li>
			<h3>&lt;c:forEach&gt;标签</h3>
			<ul>
				<li>begin end添加数据测试
					<p>
						执行:&lt;c:forEach var="temp" step = "2" begin="1" end="10"&gt;<br />
						&lt;p&gt;<br />显示结果:&lt;c:out value="$<span/>{temp}"/&gt;
						下标$<span/>{status.index} 计数$<span/>{status.count}<br />
						是否为第一个$<span/>{status.first} 是否为最后一个$<span/>{status.last}<br />&lt;/p&gt; <br />&lt;/c:forEach&gt;
					</p>
					<p>
						显示：
						<c:forEach var="temp" varStatus="status" step="2" begin="1"
							end="10">
							<p>显示结果:
							<p>
								显示数据:
								<c:out value="${temp}" />
								下标${status.index} 计数${status.count} 是否为第一个${status.first}
								是否为最后一个${status.last}
							</p>
					</p> </c:forEach>

					</p>
				</li>
				<li>用items属性遍历集合里面的值</li>
				<p>
					执行:&lt;%<br /> java.util.List list = new java.util.ArrayList();<br />
					list.add(1);<br /> list.add(2);<br /> list.add("3");<br />
					list.add("四");<br /> request.setAttribute("listdata",list);<br />
					%&gt;<br /> &lt;c:forEach var="item" items="$<span/>{listdata}"&gt;<br />
					&lt;p&gt;<br />显示数据$<span/>{item} 下标$<span/>{status.index} 计数$<span/>{status.count}
					是否为第一个$<span/>{status.first} 是否为最后一个$<span/>{status.last}<br />&lt;/p&gt; <br />&lt;/c:forEach&gt;

				</p>
				<p>
					显示:<%
				   java.util.List list = new java.util.ArrayList();
				           list.add(1);
				           list.add(2);
				           list.add("3");
				           list.add("四");
				           request.setAttribute("listdata",list);
			     	%>
					<c:forEach var="item" varStatus="status" items="${listdata}">
						<p>显示数据${item} 下标${status.index} 计数${status.count}
							是否为第一个${status.first} 是否为最后一个${status.last}</p>
					</c:forEach>
				</p>

			</ul>
		</li>
		<li>
			<h3>&lt;c:url&gt;</h3>
			<p>
				执行: <br />
				&lt;c:url var="urlvar" value="http://www.baidu.com"&gt;
					<br />
					<br />
					&lt;c:param name="username" value="admin"&gt;&lt;/c:param&gt;
					<br />
					&lt;c:param name="password" value="admin123"&gt;&lt;/c:param&gt;
					<br />
				&lt;/c:url&gt;
				<br /> &lt;a href="${urlvar}"&gt;跳转到百度&lt;/a&gt; <br />
				 &lt;a href="${urlvar}"&gt;友情链接&lt;/a&gt;
			</p>
			<p>
				显示:
				<c:url var="urlvar" value="http://www.baidu.com">
					 
					<c:param name="username" value="admin"></c:param>
					<c:param name="password" value="admin123"></c:param>
				</c:url>
				<a href="${urlvar}">跳转到百度</a>
				<br/> <a href="${urlvar}">友情链接</a>
			</p>
		</li>
          <li>
                           <h3>重定向标签打开页面会自动跳转另一个页面
                          &lt;c:redirect url="http://www.baidu.com"/&gt;</h3>
          </li>
	</ul>
</body>
</html>