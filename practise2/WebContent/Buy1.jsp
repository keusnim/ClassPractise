<%@ page contentType="text/html; charset=utf-8" %>
<center>
<h1>商品页1</h1>
<%
	String user=(String)session.getAttribute("username");
	String password=(String)session.getAttribute("password");
	if(user==null||password==null){
		response.sendRedirect("register.jsp");
	}

%>
<body>
<form action="Cart.jsp" method="post">
	<input type="checkbox" name="meat" value="羊肉">羊肉（25元/斤）<br>
	购买<input type="text" name="muttonnum">斤<br>
	<input type="checkbox" name="meat" value="牛肉">牛肉（32元/斤）<br>
	购买<input type="text" name="beefnum">斤<br>
	<input type="checkbox" name="meat" value="猪肉">猪肉（12元/斤）<br>
	购买<input type="text" name="porknum">斤<br>
	<input type="submit" name="submit" value="加入到购物车">
</form>

<%
	String[] meat=request.getParameterValues("meat");
	if(meat!=null){
		session.setAttribute("meat", meat);
	}
	

%>
<a href="goods.jsp">商品界面</a>

</body>
</center>
</html>