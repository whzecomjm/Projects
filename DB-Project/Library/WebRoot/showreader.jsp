<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="domain.Reader"%>
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

		<title>My JSP 'showreader.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		<script type="text/javascript">
		function deleted(){
			if(confirm("确定要删除吗？")){
				document.forms[0].action="DeleteReader.do";
				document.forms[0].submit();
			}
		}
		function update(){
			document.forms[0].action="PreUpdateReader.do";
			document.forms[0].submit();
		}
		</script>

	</head>

	<body>
		<form action="" method="post">
			<%
			String msg=(String)request.getAttribute("msg");
			if(msg!=null){
			 %>
			 <h4 align="center"><%=msg %></h4>
			 <%}else{ %>
			<table align="center" border="1">
				<tr>
					<td>
						借书证号
					</td>
					<td>
						姓名
					</td>
					<td>
						系部
					</td>
					<td>
						身份
					</td>

					<td>
						性别
					</td>
					<td>
						操作
					</td>
				</tr>
				<%
					List<Reader> list = (List<Reader>) request.getAttribute("list");
					for (Reader r : list) {
				%>
				<tr>
					<td><%=r.getCardId()%></td>
					<td><%=r.getName()%></td>
					<td><%=r.getDepartment()%></td>
					<td>
						<%
							if ("1".equals(r.getFlag())) {
						%>学生<%
							} else {
						%>教师<%
							}
						%>
					</td>
					<td>
						<%
							if ("1".equals(r.getSex())) {
						%>男<%
							} else {
						%>女<%
							}
						%>
					</td>
					<td>
						<input type="hidden" id="cardId" name="cardId" value="<%=r.getCardId()%>" />
						<input type="button" onclick="update()" value="修改" />
						<input type="button" onclick="deleted()" value="删除" />
					</td>
				</tr>
				<%
					}
				%>
			</table>
			<%} %>
		</form>
	</body>
</html>
