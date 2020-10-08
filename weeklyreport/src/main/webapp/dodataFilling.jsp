<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"
    import="mybean.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>处理数据提交请求ing</title>

<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="dataform" class="mybean.Dataform"></jsp:useBean>
<jsp:setProperty property="*" name="dataform"/>

<%
	User u = (User)session.getAttribute("user");
	DataformDAO dao=new DataformDAO();
	if(dao.submitform(dataform,u.getUsername())){
		response.sendRedirect("successtosubmit.jsp");
	}else{
		response.sendRedirect("dataFilling.jsp");
		out.print("数据提交失败，请重试！");
	}
%>

</head>
<body>

</body>
</html>