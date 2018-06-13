<%@ page contentType="text/html; charset=utf-8" %>
<center>
<h1>商品信息</h1>
<body>
	<%
	    request.setCharacterEncoding("utf-8");
		String[] meat=request.getParameterValues("meat");
		String[] ball=request.getParameterValues("ball");
		if(!(meat==null&&ball==null)){
			
		for(String a:meat){%>
			<%=a %><br>
		<%}
		}else{
			out.print("购物车还没有东西哟！");
		}
	%>
	<a href="goods.jsp">前往商品主页</a>
</body>
</center>
</html>