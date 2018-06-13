<%@ page contentType="text/html; charset=utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
	
	<form action="">
		请输入值：
		<input type="text" name="user">
		<input type="submit" value="提交" name="submit">
	</form>
	完数为：<br>
	<%
		String a=request.getParameter("user");
		if(a==null){
			a="0";
		}
		int b=Integer.parseInt(a);
		int i,j;
		int[] count=new int[100];
		int p=0;
		int sum;
		if(b!=0){
			
		
		for(i=2;i<=b;i++) {
			sum=0;
			for(j=1;j<=i/2;j++) {
				 
				if(i%j==0) {
					sum+=j;
				}
				
			}
			if(sum==i) {
				count[p++]=sum;
			}
		}
		for(i=0;i<count.length;i++){%>
		<%	
			if(count[i]!=0){%>
				<%=count[i] %>
			<% }
		%>
			
		<%}
		}
	%>

	
</body>
</html>