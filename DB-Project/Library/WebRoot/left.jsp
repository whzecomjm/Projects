<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'left.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style>
	</style>

  </head>
  
  <body bgcolor="#FFE4C4">
    <table style="margin-left: 30px">
    	<tr height="50">
    		<td><a href="FindType.do" target="main">图书管理</a></td>
    	</tr>
    	<tr height="50">
    		<td><a href="reader.jsp" target="main">读者管理</a></td>
    	</tr>
    	<tr height="50">
    		<td><a href="rent.jsp" target="main">图书借阅</a></td>
    	</tr>
    	<tr height="50">
    		<td><a href="return.jsp" target="main">图书归还</a></td>
    	</tr>
    </table>
  </body>
</html>
