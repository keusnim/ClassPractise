<%@ page contentType="text/html; charset=utf-8" %>
</head>
<body>
	<form action="">
		a的值：<input type="text" name="a"><br>
		n的值：<input type="text" name="n"><br>
		<input type="submit" value="提交" name="submit">
	</form>
	
	和为：
	<%
		String a=request.getParameter("a");
		String n=request.getParameter("n");
		if(a==null){
			a="0";
		}
		if(n==null){
			n="0";
		}
		int x=Integer.parseInt(a);
		int y=Integer.parseInt(n);
		int sum=0;
		if(x!=0&&y!=0){
			int i,j;
			j=x;
			for(i=1;i<=y;i++){
				sum+=x;
				x=x*10+j;
			}
		}
	%>
	<%=sum %>
	
	
</body>
</html>