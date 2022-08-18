<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="domain.Type"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'book.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		<script type="text/javascript">
		function find(){
			document.forms[0].action="FindBook.do";
			document.forms[0].submit();
		}
		function add(){
			document.forms[0].action="AddBook.do";
			document.forms[0].submit();
		}
		</script>
		
		<script type="text/javascript"
			src="<%=basePath%>/My97DatePicker/WdatePicker.js"></script>
	</head>

	<body>
		<br>
		<br>
		<h2 style="background-color: #1C86EE">
			图书查询
		</h2>
		<form  method="post">
			<table>
				<tr>
					<td>
						图书编号：
						<input type="text" id="bookid" name="bookid" />
					</td>
					<td>
						图书标题：
						<input type="text" id="title" name="title" />
					</td>
					<td>
						作者：
						<input type="text" id="author" name="author" />
					</td>
					<td>
						ISBN:
						<input type="text" id="isbn" name="isbn" />
					</td>
					<td>
						图书种类:
						<select name="types" id="types">
							<%
								List<Type> list = (List<Type>) request.getAttribute("list");
								for (int i = 0; i < list.size(); i++) {
							%>
							<option value="<%=list.get(i).getTypeId()%>"><%=list.get(i).getTypeName()%>
								<%
									}
								%>
							
						</select>
					</td>
					<td>
						<input type="button" onclick="find()" value="查询" />
					</td>
				</tr>
			</table>
		<hr>
		<h2 style="background-color: #1C86EE">
			添加图书
		</h2>
			<table align="center">
				<tr>
					<td>
						图书编号：
					</td>
					<td>
						<input type="text" id="bookId2" name="bookId2">
						<font color="red">*</font>
					</td>
				</tr>
				<tr>
					<td>
						图书标题：
					</td>
					<td>
						<input type="text" id="title2" name="title2">
						<font color="red">*</font>
					</td>
				</tr>
				<tr>
					<td>
						图书作者：
					</td>
					<td>
						<input type="text" id="author2" name="author2">
					</td>
				</tr>
				<tr>
					<td>
						出版社：
					</td>
					<td>
						<input type="text" id="press2" name="press2">
					</td>
				</tr>
				<tr>
					<td>
						出版日期：
					</td>
					<td>
						<input class="Wdate" type="text" name="pressDate2" id="pressDate2"
									onFocus="WdatePicker({isShowClear:false,readOnly:true})" />
					</td>
				</tr>
				<tr>
					<td>
						图书价格：
					</td>
					<td>
						<input type="text" id="price2" name="price2">
					</td>
				</tr>
				<tr>
					<td>
						存放地点：
					</td>
					<td>
						<input type="text" id="position2" name="position2">
						<font color="red">*</font>
					</td>
				</tr>
				<tr>
					<td>
						ISBN：
					</td>
					<td>
						<input type="text" id="isbn2" name="isbn2">
						<font color="red">*</font>
					</td>
				</tr>
				<tr>
					<td>
						图书种类:
					</td>
					<td>
						<select name="types2" id="types2">
							<%
								for (int i = 0; i < list.size(); i++) {
							%>
							<option value="<%=list.get(i).getTypeId()%>"><%=list.get(i).getTypeName()%>
								<%
									}
								%>
							
						</select>
						<font color="red">*</font>
					</td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="button" onclick="add()" value="添加">
						<input type="reset" value="重置">
					</td>
				</tr>

			</table>
		</form>
	</body>
</html>
