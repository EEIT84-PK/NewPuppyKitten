<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<style type="text/css">
.myButton {
	background: rgba(250, 235, 215, 0.4);
	width: 150px;
	height: 35px;
	font-size: 16px;
	font-family: "微軟正黑體";
	margin-right: 10px;
}
</style>
<head>
<c:import url="/import/head.jsp"></c:import>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<script type="text/javascript">
	
</script>
<title>會員專區</title>
</head>
<body style="font-family: 微軟正黑體; font-size: large">
	<c:import url="/import/header.jsp"></c:import>
	<section>
		<article style="width: 600px;">

			<h1 style="font-size:32px;color:#400000">會員專區</h1>



			<button class="myButton">
				<a href="<%=request.getContextPath()%>/login/selectmember.action">個人資料</a>
			</button>
				<button class="myButton"><a
					href="<%=request.getContextPath()%>/petInterceptor/petIndex.action">個人寵物資料</a></button>
				<button class="myButton"><a
					href="<%=request.getContextPath()%>/_200_shop_car.jsp">個人購物車</a></button>
				<button class="myButton"><a
					href="<%=request.getContextPath()%>/_100_insert.jsp">新增個人文章</a></button>
				<button class="myButton"><a
					href="<%=request.getContextPath()%>/_300_google.jsp">寵物旅遊</a></button>
		</article>
	</section>
	<c:import url="/import/footer.jsp"></c:import>
</body>
</html>