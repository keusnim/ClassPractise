<%@ page contentType="text/html; charset=utf-8" %>
<title>商品页2</title>
<center>
<h1>商品页2</h1>
<%
	String user=(String)session.getAttribute("username");
	String password=(String)session.getAttribute("password");
	if(user==null||password==null){
		response.sendRedirect("register.jsp");
	}

%>
<body>
	<form action="" method="post">
		<input type="checkbox" name="ball" value="篮球">篮球（56元）<br>
		购买<input type="text" name="basketballnum">个<br>
		<input type="checkbox" name="ball" value="足球">足球（30元）<br>
		购买<input type="text" name="footballnum">斤<br>
		<input type="checkbox" name="ball" value="排球">排球（43元）<br>
		购买<input type="text" name="volleyballnum">斤<br>
		<input type="submit" name="submit" value="加入到购物车">
	</form>
	<a href="goods.jsp">商品界面</a>
</body>
</center>
</html>