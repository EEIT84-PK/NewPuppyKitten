<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<c:import url="/import/head.jsp"></c:import>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
	$(function() {
		$("input[type=submit]").button().click(function(event) {

		});
	});
</script>
<title>米沃貓窩 - 登入系統</title>
</head>
<body>
	<c:import url="/import/header.jsp"></c:import>

	<section>
		<article style="width:410px;">
			<form action="<%=request.getContextPath()%>/login/loginAction.action"
				method="post">
				<h1 style="font-size: 50px;">登入會員</h1>
				<table>
					<tr>
						<td style="font-size: 20px">帳號:</td>
						<td><input id="tags" type="text" name="account" value=""></td>
						<td style="color: red">${errors.account[0]}</td>
					</tr>
					<tr>
						<td style="font-size: 20px">密碼:<b></td>
						<td><input id="tags" type="password" name="password" value=""></td>
						<td style="color: red">${errors.password[0]}<span>${errors.loginerror[0]}</span><span>${errorMsg}</span></td>
						<td></td>
					</tr>
					<tr>
						<td></td>
						<td><input style="font-size: 10px; float:center;" type="submit" value="登入"><a
							href="<%=request.getContextPath()%>/_500_forgetpassword.jsp">忘記密碼</a></td>

					</tr>
				</table>
			</form>

		</article>
	</section>

	<c:import url="/import/footer.jsp"></c:import>
</body>
</html>