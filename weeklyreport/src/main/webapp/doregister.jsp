<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"
    import="mybean.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>处理注册请求ing</title>

<jsp:useBean id="user" class="mybean.User"></jsp:useBean>
<jsp:setProperty property="*" name="user"/>

<% 
	UserDAO dao=new UserDAO();
	if(dao.register(user)){
		session.setAttribute("user", user);
		response.sendRedirect("welcome.jsp");
	}else{
		response.sendRedirect("register.jsp");
	}
%>
</head>
<body>

</body>
</html>