<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="week7.*" %>
<html>
<body>
<jsp:useBean id="login" class="week7.Login" scope="page"/>
	<form action="" method="post">
		登录类型<select name="login">
			<option value="admin">管理员
			<option value="user">用户
		</select><br>	
		
		用户名：<input type="text" name="name"><br>
		密码: <input type="text" name="password"><br>
		<input type="submit" name="submit" value="提交">
	</form>
	<jsp:setProperty property="*" name="login"/>
	<%
		String a=login.getLogin();
		if(a!=null){
			
			int count=login.isRight();
			if(count==1){
				out.print("登陆成功！！！！");
			}else{
				out.print("信息错误！");
			}
		}
	%>
</body>
</html>