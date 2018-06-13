<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="model.Cart" %>
<%@ page import="model.Good" %>
<%@ page import="java.util.*" %>
<html>
<center>
<h1>商品信息</h1>
<body>
	<% request.setCharacterEncoding("utf-8"); %>
		
	<%if(request.getSession().getAttribute("cart")!=null){%>

	<%
		Cart cart = (Cart)request.getSession().getAttribute("cart");
		HashMap<Good,Integer> goods = cart.getCart();
		Set<Good> good=goods.keySet();
		Iterator<Good> it=good.iterator();
		
		while(it.hasNext()){
			Good i=it.next();%>
			<%=i.getGoodname()%>&nbsp;&nbsp;
			<%=i.getGoodprice()%>元/个&nbsp;&nbsp;
			<%=i.getBuynum()%>个<br>
			
		<%}%>
	总价为:<%=cart.getTotalprice()%>元
<%}%>


</body>
</center>
</html>