<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>您已注销！</title>
</head>
<body>
<div align="center">
	<% session.invalidate(); %>
	<br><br><br><br><br><br><br>
	<h3>您已退出登录！</h3>
	<br>
	<a href="index.jsp">请登录！</a>
</div>
</body>
</html>