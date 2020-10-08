<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>weekly report</title>
</head>
<body>
<div align="center">
<br><br><br><br><br><br>
<h2><font color='green'>欢迎来到weekly report</font></h2>
<h4>老用户登录</h4>
	<form action="dologin.jsp" method="post"> 
		<table>
			<tr>
				<td>用户名</td>
		 		<td><input type="text" name="username"></td>
		 	</tr>
		 	<tr>
		 		<td>密码</td>
		 		<td><input type="text" name="password"></td>
		 	</tr>
	 	</table> 
	 	<input type="submit" value="登录">
	</form>
<br>
<h4>新用户注册</h4>
	<form action="register.jsp" method="post">
		<input type="submit" value="注册">
	</form>
</div>
</body>
</html>