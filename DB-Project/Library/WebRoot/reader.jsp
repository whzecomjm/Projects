<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'reader.jsp' starting page</title>
    
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
  		<br>
    	<h2 style="background-color: #1C86EE">
			读者查询
		</h2>
		<form action="FindReader.do" method="post">
			<table>
				<tr>
					<td>
						借书证号：
						<input type="text" id="cardId" name="cardId" />
					</td>
					<td>
						读者姓名：
						<input type="text" id="name" name="name" />
					</td>
					<td>
						系部：
						<input type="text" id="department" name="department" />
					</td>
					<td>
						<input type="submit" value="查询" />
					</td>
				</tr>
			</table>
		</form>
		<hr>
		<h2 style="background-color: #1C86EE">
			添加读者
		</h2>
		<form action="AddReader.do" method="post">
			<table align="center">
				<tr>
					<td>
						借书证号：
					</td>
					<td><input type="text" id="cardId2" name="cardId2"><font color="red">*</font></td>
				</tr>
				<tr>
					<td>
						读者姓名：
					</td>
					<td><input type="text" id="name2" name="name2" ><font color="red">*</font></td>
				</tr>
				<tr>
					<td>
						系部：
					</td>
					<td><input type="text" id="department2" name="department2" ><font color="red">*</font></td>
				</tr>
				<tr>
					<td>
						身份：
					</td>
					<td><input type="radio" name="flag" value="1" checked="checked">学生
						<input type="radio" name="flag" value="0" >教师
					</td>
				</tr>
				<tr>
					<td>
						性别：
					</td>
					<td><input type="radio" name="sex" checked="checked" value="1">男
						<input type="radio" name="sex" value="0">女</td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="添加">
						<input type="reset" value="重置">
					</td>
				</tr>
			</table>
		</form>
  </body>
</html>
