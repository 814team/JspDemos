<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>fn标签测试页面</title>
</head>
<body>
<%@ include file="navhead.jsp" %>
<ul>
  <li>
   <h3>$<span></span>{fn:contains(name, searchString)}</h3>
     <p>执行:$<span></span>{fn:contains("Hello", "HE")}</p>
     <p>输出结果:${fn:contains("Hello", "HE")}</p>
      <p>说明:判断第一个字符串参数是否包含第二个子字符串 大小写区分</p>
  </li>
  <li>
   <h3>$<span></span>{fn:containsIgnoreCase(name, searchString)}</h3>
     <p>执行:$<span></span>{fn:containsIgnoreCase("Hello", "HE")}</p>
     <p>输出结果:${fn:containsIgnoreCase("Hello", "HE")}</p>
         <p>说明:判断第一个字符串参数是否包含第二个子字符串 大小写不区分</p>
  
  </li>
  <li>
   <h3>$<span></span>{fn:endsWith("ceshi.txt", ".txt")}</h3>
     <p>执行:$<span></span>{fn:endsWith("ceshi.txt", ".txt")}</p>
     <p>输出结果:${fn:endsWith("ceshi.txt", ".txt")}</p>
     <p>说明:判断第一个字符串参数是以第二个子字符串为后缀结尾</p>
  </li>
  <li>
   <h3>$<span></span>{fn:escapeXml(param:info)}</h3>
     <p>执行:$<span></span>{fn:escapeXml("&lt;marquee&gt;我是跑马灯&lt;/marquee&gt;")}</p>
     <p>输出结果:${fn:escapeXml("<marquee>我是跑马灯</marquee>")}</p>
     <p>说明:参数里面的html标签将会显示到界面上浏览器不会去解析它</p>
  </li>
  <li>
   <h3>$<span></span>{fn:indexOf(name, "-")}</h3>
     <p>执行:$<span></span>{fn:indexOf("123-56789", "-")}</p>
     <p>输出结果:${fn:indexOf("123-56789", "-")}</p>
     <p>说明:第二个参数的字符串在第一个字符串中出现的下标位置，如果不存在返回-1</p>
  </li>
    
     <li>
   <h3>$<span></span> {fn:join(array, ";")}</h3>
     <p>执行:
     &lt;%
       String[] strs = new String[]{"a","b","c","d","e","f"};
      <br/> pageContext.setAttribute("array",strs);
     %&gt;<br/>
     $<span></span>{fn:join(array, ";")}</p>
     <p>输出结果: <%
       String[] strs = new String[]{"a","b","c","d","e","f"};
       pageContext.setAttribute("array",strs);
     %>
     ${fn:join(array, ";")}</p>
     <p>说明:把第一参数-数组对象通过第二个参数为间隔合并成一个字符串</p>
  </li>
  <li>
   <h3>$<span></span>{fn:length(shoppingCart.products)}</h3>
     <p>执行:$<span></span>{fn:length("1234567")}</p>
     <p>输出结果:${fn:length("1234567")}</p>
     <p>说明:参数里面是集合的时候返回集合的长度，参数里面是字符串的时候返回字符串的长度</p>
  </li>
  
   <li>
   <h3>$<span></span>{fn:replace(text, "-", "&#149;")}</h3>
     <p>执行:$<span></span>{fn:replace("Hello", "llo", "e")}</p>
     <p>输出结果:${fn:replace("Hello", "llo", "e")}</p>
     <p>说明:一共三个参数第一个是基本字符串 ，第二个是要替换基本字符串里面的字符串，第三个是把第一个字符串中的第一个字符串替换后的字符串
     结果是替换后的字符串</p>
  </li> 
  
   <li>
   <h3>$<span></span>{fn:split(customerNames, ";")}</h3>
     <p>执行:$<span></span>{fn:split("a-b-c-d-f", "-")}</p>
     <p>输出结果:${fn:split("a-b-c-d-f", "-")}</p>
     <p>说明: 把第一个字符串通过第二个字符串分隔得到一个字符串数组对象</p>
  </li> 
     <li>
   <h3>$<span></span> {fn:startsWith(product.id, "100-")}</h3>
     <p>执行:$<span></span>{fn:startsWith("abcdefg", "abc")}</p>
     <p>输出结果:${fn:startsWith("abcdefg", "abc")}</p>
     <p>说明: 判断第一个字符串是否是以第二个子字符串为前缀，如果是返回true否则返回false </p>
  </li> 
     <li>
   <h3>$<span></span>{fn:substring(zip, 6, -1)}</h3>
     <p>执行:$<span></span>{fn:substring("1234567891011", 6, -1)}</p>
     <p>输出结果:${fn:substring("1234567891011", 6, -1)}</p>
     <p>说明: 参数有三个 第一个是基本字符串，第二个是开始下标(包含这个)，第二个是结束下标(不包含这个)，如果为-1则不考虑这个参数一直到头</p>
  </li> 
    <li>
   <h3>$<span></span>{fn:substringAfter(zip, "-")}</h3>
     <p>执行:$<span></span>{fn:substringAfter("hello", "l")}</p>
     <p>输出结果:${fn:substringAfter("hello","l")}</p>
     <p>说明: 第一个参数为基本字符串第二个为第一次出现的字符串 本方法为在第二个参数的字符串第一次出现的位置开始到尾部截取字符串(不包含这个参数字符串)</p>
  </li> 
   <li>
   <h3>$<span></span>{fn:substringBefore(zip, "-")}</h3>
     <p>执行:$<span></span>{fn:substringBefore("hello", "l")}</p>
     <p>输出结果:${fn:substringBefore("hello","l")}</p>
     <p>说明: 第一个参数为基本字符串第二个为第一次出现的字符串 本方法为在第二个参数的字符串第一次出现的位置为尾部截取字符串(不包含这个参数字符串)</p>
  </li> 
    <li>
   <h3>$<span></span>{fn:toLowerCase(product.name)}</h3>
     <p>执行:$<span></span>{fn:toLowerCase("aBcDeFgH")}</p>
     <p>输出结果:${fn:toLowerCase("aBcDeFgH")}</p>
     <p>说明: 参数字符串转换成小写</p>
  </li>  
    <li>
   <h3>$<span></span>{fn:toUpperCase(product.name)}</h3>
     <p>执行:$<span></span>{fn:toUpperCase("aBcDeFgH")}</p>
     <p>输出结果:${fn:toUpperCase("aBcDeFgH")}</p>
     <p>说明: 参数字符串转换成大写</p>
  </li>
    <li>
   <h3>$<span></span> {fn:trim(name)}</h3>
     <p>执行: 开始$<span></span>{fn:trim(" abcdef ")}结束</p>
     <p>输出结果:开始${fn.trim(" abcdef ")}结束</p>
     <p>说明: 去除字符串前后的空格</p>
  </li>
 
</ul>
</body>
</html>