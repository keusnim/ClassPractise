<%@ page language="java" import="java.util.*" pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<html>
  <body>
		
		请分别输入圆、矩形、梯形的相关数据：
		<form action="showArea" method="post">
			圆的半径：<input type="text" name="R"><br>
			矩形的长为:<input type="text" name="length"><br>
			矩形的宽为:<input type="text" name="width"><br>
			梯形的上底：<input type="text" name="up"><br>
			梯形的高：<input type="text" name="height"><br>
			梯形的下底：<input type="text" name="down"><br>
			<input type="submit" name="submit" value="提交">
		</form>
  </body>
</html>
