<%@page contentType="text/html; charset=utf-8" %>
<body>
	请选择要显示的照片：
	<form action="">
		<input type="radio" value="image1" name="image">image1
		<input type="radio" value="image2" name="image">image2
		<input type="radio" value="image3" name="image">image3
		<input type="radio" value="image4" name="image">image4
		<br><input type="submit" value="提交" name="submit">
	</form>
	
	<%
		String image=request.getParameter("image");
		if(image==null){
			image="";
		}
		
		if(image!=""){
		if(image.equals("image1")){%>
			<img src="image/image1.jpg">
		<%}
		
		if(image.equals("image2")){%>
		<img src="image/image2.jpg">
	    <%}
		
		if(image.equals("image3")){%>
		<img src="image/image3.jpg">
	    <%}
		
		if(image.equals("image4")){%>
		<img src="image/image4.jpg">
	    <%}
		}
	%>
</body>
</html>