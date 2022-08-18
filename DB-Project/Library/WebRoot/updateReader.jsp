<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="domain.Reader"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'updateReader.jsp' starting page</title>
    
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
    <form action="UpdateReader.do" method="post">
    	<table>
    		<%
    		Reader r=(Reader)request.getAttribute("r");
    		 %>
    		<tr>
    			<td>借书证号：</td>
    			<td><input type="text" id="cardId" name="cardId" value="<%=r.getCardId() %>" readonly="readonly"/></td>
    		</tr>
    		<tr>
    			<td>读者姓名：</td>
    			<td><input type="text" id="names" name="names" value="<%=r.getName() %>"/></td>
    		</tr>
    		<tr>
    			<td>所在系部：</td>
    			<td><input type="text" id="department" name="department" value="<%=r.getDepartment() %>"/></td>
    		</tr>
    		<tr>
    			<td>身份：</td>
    			<td>
    				<input type="radio" name="flag" <%if("1".equals(r.getFlag())){ %> checked="checked"<%} %> value="1">学生
    				<input type="radio" name="flag" <%if("0".equals(r.getFlag())){ %> checked="checked"<%} %> value="0">教师
    			</td>
    		</tr>
    		<tr>
    			<td>性别：</td>
    			<td>
    				<input type="radio" name="sex" <%if("1".equals(r.getSex())){ %> checked="checked"<%} %> value="1">男
    				<input type="radio" name="sex" <%if("0".equals(r.getSex())){ %> checked="checked"<%} %> value="0">女
    			</td>
    		</tr>
    		<tr align="center">
    			<td colspan="2">
    				<input type="submit" value="确定">
    				<input type="reset" value="重置">
    			</td>
    		</tr>
    	</table>
    </form>
  </body>
</html>
