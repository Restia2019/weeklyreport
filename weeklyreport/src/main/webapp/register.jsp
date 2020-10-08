<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>用户注册页面</title>
</head>
<body>
<div align="center">
	<br><br><br><br><br><br><br>
	<h2>用户注册</h2>
		<form action="doregister.jsp" method="get">
			<table border="1">
				<tr><td>用户名</td> <td> <input type="text" name="username"></td> </tr>
				<tr><td>密码</td> <td><input type="text" name="password"></td>  </tr>
				<tr><td>性别</td> <td><input type="text" name="sex"></td>       </tr>
				<tr><td>邮箱</td> <td><input type="text" name="email"></td>     </tr>
			</table>
			<br>
			<input type="submit" name="submit" value="注册" />
		</form>
</div>
</body>
</html>