<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>工作进度填报</title>
</head>
<body>
<div align="center">
<h2><font color='green'>本周工作进度填报</font></h2>
	<h3><a href="welcome.jsp">返回前页</a></h3>
	<form action="dodataFilling.jsp" method="post"> 
		<font color='red'>周数（请填写纯数字）：</font><textarea name="week" style="height:15px;width:15px"></textarea>
		<br><br>
		<table border=1>
			<tr>
				<th rowspan=2>本周完成事项</th>
				<th colspan=2>下周预定完成事项</th>
				<th rowspan=2>综合说明</th>
		 	</tr>
		 	<tr>
				<th>工作描述</th>
				<th>预定完成日期</th>
		 	</tr>
		 	<tr>
		 		<td height=400><textarea name="benzhoushixiang" style="height:100%"></textarea>  </td>
		 		<td height=400><textarea name="gongzuomiaoshu" style="height:100%"></textarea>  </td>
		 		<td height=400><textarea name="yudingriqi" style="height:100%"></textarea>  </td>
		 		<td height=400><textarea name="zongheshuoming" style="height:100%"></textarea>  </td>
		 	</tr>
	 	</table> 
	 	<br>
	 	<input type="submit" value="提交">
	</form>
</div>
</body>
</html>