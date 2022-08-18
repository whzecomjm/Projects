<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="domain.Books"%>
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

		<title>My JSP 'showBook.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		<script type="text/javascript">
		function deleted(state){
			if(state=="1"){
				alert("书已被借出，不允许删除！");
				return;
			}else{
				var flag=confirm("确定要删除吗！");
				if(flag){
					document.forms[0].action="DeleteBook.do";
					document.forms[0].submit();
				}
			}
		}
		function update(){
			document.forms[0].action="PreUpdateBook.do";
			document.forms[0].submit();
		}
		</script>
	</head>

	<body>
		<form method="post">
			<table align="center" border="1">
				<tr>
					<td>书籍编号</td>
					<td>书籍标题</td>
					<td>作者</td>
					<td>ISBN</td>
					<td>出版社</td>
					<td>出版时间</td>
					<td>存放地点</td>
					<td>价格</td>
					<td>状态</td>
					<td>操作</td>
				</tr>
				<%
					String msg = (String) request.getAttribute("msg");
					if (msg == null) {
						List<Books> list = (List<Books>) request.getAttribute("list");
						for (Books i : list) {
				%>
				<tr>
					<td><%=i.getBookId()%></td>
					<td><%=i.getBookName()%></td>
					<td><%=i.getAuthor()%></td>
					<td><%=i.getISBN()%></td>
					<td><%=i.getPress()%></td>
					<td><%=i.getPressDate()%></td>
					<td><%=i.getPosition()%></td>
					<td><%=i.getPrice()%></td>
					<td>
						<%
							if ("1".equals(i.getState())) {
						%>已借出<%
							} else {
						%>未借出<%
							}
						%>
					</td>
					<td>
						<input type="hidden" id="bookId" name="bookId" value="<%=i.getBookId()%>" />
						<input type="button" onclick="update()"
							value="修改" />
						<input type="button" onclick="deleted('<%=i.getState()%>')"
							value="删除" />
					</td>
				</tr>
				<%
					}
					} else {
				%>
				<%=msg%>
				<%
					}
				%>
			</table>
		</form>
	</body>
</html>
