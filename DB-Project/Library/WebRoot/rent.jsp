<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'rent.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript"
			src="<%=basePath%>/My97DatePicker/WdatePicker.js"></script>

  </head>
  
  <body>
    <form action="Borrow.do">
    	<br>
    	<br>
    	<h2 align="center">图书借阅</h2>
    	<hr>
    	<br>
    	<br>
    	<table align="center">
    		<tr>
    			<td>图书编号：</td>
    			<td><input type="text" id="bookId" name="bookId"/></td>
    		</tr>
    		<tr>
    			<td>借书证号：</td>
    			<td><input type="text" id="cardId" name="cardId"/></td>
    		</tr>
    		<tr>
    			<td>借书日期：</td>
    			<td>
    				<input class="Wdate" type="text" name="borDate" id="borDate"
									onFocus="WdatePicker({isShowClear:false,readOnly:true})" />
    			</td>
    		</tr>
    		<tr>
    			<td>应归还日期：</td>
    			<td>
    				<input class="Wdate" type="text" name="shoDate" id="shoDate"
									onFocus="WdatePicker({isShowClear:false,readOnly:true})" />
    			</td>
    		</tr>
    		<tr>
    			<td colspan="2" align="center">
    				<input type="submit" value="确定"/>&nbsp;&nbsp;&nbsp;
    				<input type="reset" value="重置">
    			</td>
    		</tr>
    	</table>
    </form>
  </body>
</html>
