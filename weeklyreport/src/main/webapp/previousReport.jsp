<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"
    import="mybean.*"
    import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>历史工作报告</title>
</head>
<body>

<div align="center">
	<h1><font color='green'>${searchName}的历史工作报告</font></h1>
	<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<font color='red'>若无内容显示，刷新即可</font>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	
	<a href="welcome.jsp">返回前页</a>
	<hr width=100% size=1>
	
	<%
		User u = (User)session.getAttribute("user");
		String searchName = (String)session.getAttribute("searchName");
		try {
			Connection conn = JDBC.getConnection();
			if(conn != null){
				out.print("<br />");
	%>
		<table border=1>
			<tr>
				<th width="50"  rowspan=2 >周数</th>
				<th width="200" rowspan=2>本周完成事项</th>
				<th width="200" colspan=2>下周预定完成事项</th>
				<th width="200" rowspan=2 >综合说明</th>
			</tr>
			<tr>
				<th>工作描述</th>
				<th>预定完成日期</th>
		 	</tr>
			<%
				Statement stmt = null;
				ResultSet rs = null;
				String sql = "select * from reportdata where username= '"+searchName+"' order by week";
				//System.out.println(sql);
				stmt = conn.createStatement();
				rs = stmt.executeQuery(sql);
				out.print("<br/>");
				while (rs.next()) {%>
			<tr>
				<td width="50" height="70" style="word-break:break-all">&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getInt("week") %></td>
				<td width="100" style="word-break:break-all"><%=rs.getString("benzhoushixiang") %></td>
				<td width="200" style="word-break:break-all"><%=rs.getString("gongzuomiaoshu") %></td>
				<td width="200" style="word-break:break-all"><%=rs.getString("yudingriqi") %></td>
				<td width="200" style="word-break:break-all"><%=rs.getString("zongheshuoming") %></td>
			</tr>
	<%
				}
			}else{
				out.print("连接失败！");
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		session.setAttribute("searchName", u.getUsername());
	%> 
		</table>
</div>

</body>
</html>