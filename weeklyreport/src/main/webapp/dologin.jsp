<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"
    import="mybean.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>处理登录请求ing</title>
<%
	String username=request.getParameter("username");
	String password=request.getParameter("password");
	
	/*if("".equals(username) || "".equals(password)){
		request.setAttribute("msg","用户名或密码为空！");
		request.getRequestDispatcher("index2.jsp").forward(request,response);
	}*/
	
	UserDAO dao=new UserDAO();
	User user=dao.login(username,password);
	if(user!=null){
		session.setAttribute("user", user);
		response.sendRedirect("welcome.jsp");
	}else{
		request.getRequestDispatcher("index2.jsp").forward(request,response);
	}
%>
</head>
<body>

</body>
</html>