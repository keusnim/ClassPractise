<%@ page contentType="text/html; charset=utf-8" %>
<html>
<body>
<center>
<h1>商品登录界面</h1>
	<form action="" method="post">
		用户名：<input type="text" name="username"><br>
		密    码：<input type="text" name="password"><br>
		<input type="submit" name="submit" value="提交"><br>
	</form>
</center>
<%
	String username=request.getParameter("username");
	String password=request.getParameter("password");
	if(username==null){
		username="";
	}
	if(password==null){
		password="";
	}
	if(username!=""&&password!=""){
		if(username.equals("admin")&&password.equals("admin")){
			response.sendRedirect("goods.jsp");
		}else{
			out.print("账号或者密码错误，请重新输入!");
		}
	}
	
%>
</body>
</html>