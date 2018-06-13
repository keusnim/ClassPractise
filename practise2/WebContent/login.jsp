<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="" method="post">
		用户名<input type="text" name="user"><br>
		密码<input type="password" name="password"><br>
		<input type="submit" name="submit" value="登录">
	</form>
	
	<%
		String user=request.getParameter("user");
		String password=request.getParameter("password");
		if(user==null){
			user="";
		}
		if(password==null){
			password="";
		}
		if(user!=null&&password!=""){
		  	if(user.equals(session.getAttribute("username"))&&password.equals(session.getAttribute("password"))){
			response.sendRedirect("goods.jsp");
		}else{
		%>
			<script type="text/javascript" language="javascript">
		    alert("输入用户名或密码错误，请重输！");
			window.document.location.href="login.jsp";
		  	</script>
		<% 
		}
		}
		%>
</body>
</html>