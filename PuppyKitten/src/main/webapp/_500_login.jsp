<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<c:import url="/import/head.jsp"></c:import>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>米沃貓窩 - 登入系統</title>
</head>
<body>
	<c:import url="/import/header.jsp"></c:import>

	<section>
		<article>
			<h1 style="font-size: 50px;">登入會員</h1>
			<font color="red"><b>${errorMsg}<br></b></font>
			<form action="<%=request.getContextPath()%>/login/loginAction.action" method="post">
				帳號:<input type="text" name="account" value=""><span
					style="color: red">${errors.account[0]}</span><br> 密碼:<input
					type="password" name="password" value=""><span
					style="color: red">${errors.password[0]}</span><span style="color: red">${errors.loginerror[0]}</span><br> <br>
				<input type="submit" value="登入">
                <a href="<%=request.getContextPath()%>/_500_forgetpassword.jsp">忘記密碼</a> 
			</form>

		</article>
	</section>

	<c:import url="/import/footer.jsp"></c:import>
</body>
</html>