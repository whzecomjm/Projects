<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'return.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <form action="ReurnBook.do" method="">
    	<br>
    	<br>
    	<h2 align="center">图书归还</h2>
    	<hr>
    	<br>
    	<br>
    	<table align="center">
    		<tr>
    			<td>书籍编号：</td>
    			<td><input type="text" id="bookId" name="bookId"/><font color="red">*</font></td>
    		</tr>
    		<tr>
    			<td>借书证号：</td>
    			<td><input type="text" id="cardId" name="cardId"/><font color="red">*</font></td>
    		</tr>
    		<tr>
    			<td>问题：</td>
    			<td><input type="text" id="problem" name="problem"/></td>
    		</tr>
    		<tr align="center">
    			<td colspan="2">
    				<input type="submit" value="确定"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    				<input type="reset" value="重置"/>
    			</td>
    		</tr>
    	</table>
    </form>
  </body>
</html>
