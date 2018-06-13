<%@page contentType="text/html; charset=utf-8" %>
<%@page import="week7.*" %>
<html>
<body>
	<jsp:useBean id="rectangle" class="week7.Rectangle" scope="page"/> <!-- scope=page、session、aplication、request -->
	<%
		String a=request.getParameter("length");
		String b=request.getParameter("width");
		int length=Integer.parseInt(a);
		int width=Integer.parseInt(b);
	%>
	<jsp:setProperty property="*" name="rectangle"/>
	
	<jsp:setProperty property="length" name="rectangle"/>
	<jsp:setProperty property="width" name="rectangle"/>
	
	<jsp:setProperty property="length" name="rectangle" value="<%=15 %>"/>
	<jsp:setProperty property="width" name="rectangle" value="<%=12 %>"/>
	
	长：<jsp:getProperty property="length" name="rectangle"/><br>
	宽：<jsp:getProperty property="width" name="rectangle"/><br>
	面积为<jsp:getProperty property="area" name="rectangle"/>
	
</body>
</html>