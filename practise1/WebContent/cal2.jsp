<%@page import="org.apache.catalina.User"%>
<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="cal.cal" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<form action="">
		请输入值：
		<input type="text" name="user">
		<input type="submit" value="提交" name="submit">
	</form>
	<% 
		String a=request.getParameter("user");
		if(a==null){
			a="0";
		}
		
		double n=Double.parseDouble(a);
		double count=0;
		if(n!=0){
			cal input=new cal();
			count=input.countNum(n);
		}
	%>
	计算结果为：
	<%if(count!=0){
		%>
		<%=count %>
	<% }%>
	
	
</body>
</html>