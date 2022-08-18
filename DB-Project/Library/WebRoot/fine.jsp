<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="domain.ReturnRecord"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'fine.jsp' starting page</title>
    
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
    <form action="Fine.do" method="post">
    	<br>
    	<br>
    	<h2 align="center">罚款记录</h2>
    	<hr>
    	<br>
    	<br>
    	<table align="center">
    		<% 
    		ReturnRecord rr=(ReturnRecord)request.getAttribute("rr"); 
    		double fine=(Double)request.getAttribute("fine"); 
    		 %>
    		<tr>
    			<td>书籍编号：</td>
    			<td><input type="text" id="bookId" name="bookId" value="<%=rr.getBookId() %>" readonly="readonly"/></td>
    		</tr>
    		<tr>
    			<td>借书证号：</td>
    			<td><input type="text" id="cardId" name="cardId" value="<%=rr.getCardId() %>" readonly="readonly"/></td>
    		</tr>
    		<tr>
    			<td>罚款金额：</td>
    			<td><input type="text" id="fine" name="fine" value="<%=fine %>"/></td>
    		</tr>
    		<tr>
    			<td>罚款日期：</td>
    			<td><input type="text" id="date" name="date" value="<%=rr.getReturnDate() %>" readonly="readonly"/></td>
    		</tr>
    		<tr>
    			<td colspan="2" align="center"> 
    				<input type="submit" value="确定"/>
    				<input type="hidden" value="<%=rr.getProblem() %>" id="problem" name="problem">
    			</td>
    		</tr>
    	</table>
    </form>
  </body>
</html>
