<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<c:import url="/import/head.jsp"></c:import>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>米沃貓窩 - 會員註冊</title>
</head>
<body>
	<c:import url="/import/header.jsp"></c:import>

	<section>
		<article>
           <h1 style="font-size: 50px;">註冊成功</h1>
			<h2><a href="<%=request.getContextPath()%>/index.jsp">請回首頁</a></h2>
						
					
		</article>
	</section>

	<c:import url="/import/footer.jsp"></c:import>
</body>
</html>