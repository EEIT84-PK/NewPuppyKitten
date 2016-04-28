<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<c:import url="/import/head.jsp"></c:import>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
	$(function() {
		$("input[type=submit]").button().click(function(event) {

		});
	});
</script>

<title>米沃貓窩 - 忘記密碼</title>
</head>
<body>
	<c:import url="/import/header.jsp"></c:import>
	<section>
		<article>
			<h1 style="color:#400000;font-size: 35px;">忘記密碼</h1>
				<form action="<%=request.getContextPath()%>/login/forgetPassword.action" method="post">
				<table>
					<tr>
						<td>帳號:</td>
						<td><input type="text" name="bean.MEM_ACCOUNT"
							value="${bean.MEM_ACCOUNT}"></td>
						<td style="color: red">${errors.MEM_ACCOUNT[0]}</td>
					</tr>
					
					<tr>
						<td>email</td>
						<td><input type="email" name="bean.MEM_EMAIL" 
							value="${bean.MEM_EMAIL}"></td>
						<td style="color: red">${errors.MEM_EMAIL[0]}</td>
					</tr>
					
				
				<tr>
				<td></td>
				<td>
				<input style="font-size:10px;float:right;" type="submit" value="發送email" name="use">
				</td>
				</tr>
				</table> 
			</form>
			
        </article>
	</section>

	<c:import url="/import/footer.jsp"></c:import>
</body>
</html>