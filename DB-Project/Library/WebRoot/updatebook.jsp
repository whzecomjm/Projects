<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="domain.Books"%>
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

		<title>My JSP 'updatebook.jsp' starting page</title>

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
		<form action="UpdateBook.do" method="post">
			<%
				Books b = (Books) request.getAttribute("book");
				List<Type> list = (List<Type>) request.getAttribute("list");
			%>
			<table align="center">
				<tr>
					<td>
						图书标题：
					</td>
					<td>
						<input type="hidden" id="bookId" name="bookId" value="<%=b.getBookId() %>">
						<input type="text" id="title" name="title" value="<%=b.getBookName()%>" />
					</td>
				</tr>
				<tr>
					<td>
						图书作者:
					</td>
					<td>
						<input type="text" id="author" name="author" value="<%=b.getAuthor()%>" />
					</td>
				</tr>
				<tr>
					<td>
						出版社：
					</td>
					<td>
						<input type="text" id="press" name="press" value="<%=b.getPress()%>" />
					</td>
				</tr>
				<tr>
					<td>
						出版日期：
					</td>
					<td>
						<input type="text" id="pressDate" name="pressDate" value="<%=b.getPressDate()%>" />
					</td>
				</tr>
				<tr>
					<td>
						图书价格：
					</td>
					<td>
						<input type="text" id="price" name="price" value="<%=b.getPrice()%>" />
					</td>
				</tr>
				<tr>
					<td>
						存放地点：
					</td>
					<td>
						<input type="text" id="position" name="position" value="<%=b.getPosition()%>" />
					</td>
				</tr>
				<tr>
					<td>
						ISBN：
					</td>
					<td>
						<input type="text" id="isbn" name="isbn" value="<%=b.getISBN()%>" />
					</td>
				</tr>
				<tr>
					<td>
						书籍状态：
					</td>
					<td>
						<input type="hidden" id="state" name="state" value="<%=b.getState() %>">
						<%
							if ("1".equals(b.getState())) {
						%>已借出<%
							} else {
						%>未借出<%
							}
						%>
					</td>
				</tr>
				<tr>
					<td>
						图书种类：
					</td>
					<td>
						<select name="types" id="types" name="types">
							<%
								for (Type t : list) {
							%>
							<option value="<%=t.getTypeId()%>"
								<%if(t.getTypeId().equals(b.getTypes())){ %> selected="selected"
								<%} %>><%=t.getTypeName()%>
								<%
									}
								%>
						</select>
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
