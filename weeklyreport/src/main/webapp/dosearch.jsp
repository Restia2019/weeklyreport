<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"
    import="mybean.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>查询登录请求ing</title>
<%
	String username=request.getParameter("username");
	session.setAttribute("searchName", username);
	response.sendRedirect("previousReport.jsp");
%>
</head>
<body>

</body>
</html>