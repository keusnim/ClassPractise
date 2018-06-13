<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<center>
<b><h1>用户注册</h1></b>
<form action="" method="post">
 *用户名<input type="text" name="username"><br>
 *密码<input type="text" name="password"><br>
  出生日期<input type="text" name="birth"><br>
 性别<input type="radio" name="sex" value="boy">男
<input type="radio" name="sex" value="girl">女<br>
班级<select name="class">
	<option value="1601">软件1601
	<option value="1602">软件1602
</select><br>
*Email<input type="text" name="email"><br>
个人体育爱好
<input type="checkbox" name="habit" value="basketball">篮球
<input type="checkbox" name="habit" value="football">足球
<input type="checkbox" name="habit" value="volleyball">排球
<input type="checkbox" name="habit" value="tennis">网球<br>
个人简介<input type="text" name="comment"><br>
<input type="submit" name="submit" value="提交">
<input type="reset" name="reset" value="取消">
</form>
<a href="login.jsp">前往商品登录界面</a>
</center>

<%
	String username=request.getParameter("username");
	String password=request.getParameter("password");
	String email=request.getParameter("email");
	if(username==null){
		username="";
	}
	if(password==null){
		password="";
	}
	if(email==null){
		email="";
	}
	session.setAttribute("username", username);
	session.setAttribute("password", password);
	session.setAttribute("email", email);
	session.setMaxInactiveInterval(100);
%>
</body>
</html>