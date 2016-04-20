<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<c:import url="/import/head.jsp"></c:import>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>會員專區</title>
</head>
<body>
	<c:import url="/import/header.jsp"></c:import>
	<section>
<article>
	<h1 style="font-size:50px">會員專區</h1>
	
     
	<h1>
		<a href="<%=request.getContextPath()%>/login/selectmember.action">查詢個人資料</a>
	</h1>
</article>
	 </section>
	<c:import url="/import/footer.jsp"></c:import>
</body>
</html>