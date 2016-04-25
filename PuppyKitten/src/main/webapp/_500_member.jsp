<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<c:import url="/import/head.jsp"></c:import>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<style type="text/css">

</style>
<script type="text/javascript">

</script>
<title>會員專區</title>
</head>
<body>
	<c:import url="/import/header.jsp"></c:import>
	<section>
<article>

	<h1 style="font-size:50px">會員專區</h1>
	<ul>
     
	
			<li style="font-size: 20px;"><a
			href="<%=request.getContextPath()%>/login/selectmember.action">個人資料</a></li>
		<li style="font-size: 20px"><a
			href="<%=request.getContextPath()%>/petInterceptor/petIndex.action">個人寵物資料</a></li>
	    <li style="font-size:20px">
	    <a href="<%=request.getContextPath()%>/_200_shop_car.jsp">個人購物車</a>
	    </li>
	     <li style="font-size:20px">
	    <a href="<%=request.getContextPath()%>/_100_insert.jsp">新增個人文章</a>
	    </li>
	    <li style="font-size: 20px"><a
			href="<%=request.getContextPath()%>/_300_google.jsp">寵物旅遊</a></li>
		
	</ul>
</article>
	 </section>
	<c:import url="/import/footer.jsp"></c:import>
</body>
</html>