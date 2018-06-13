<%@ page contentType="text/html; charset=utf-8" %>
<html>
<body>
	<center>
	<form action="CartServlet" method="post">
		<input type="checkbox" name="ball" value="篮球">篮球（56元/个）
		购买<input type="text" name="basketballnum">个<br>
		<input type="checkbox" name="ball" value="足球">足球（30元/个）
		购买<input type="text" name="footballnum">斤<br>
		<input type="checkbox" name="ball" value="排球">排球（43元/个）
		购买<input type="text" name="volleyballnum">斤<br>
		<input type="submit" name="submit" value="加入到购物车"><br>
	</form>
	<a href="cart.jsp">前往购物车</a>
	</center>
</body>
</html>