<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<c:import url="/import/head.jsp"></c:import>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<title>米沃貓窩 - 忘記密碼</title>
</head>
<body>
	<c:import url="/import/header.jsp"></c:import>
	<section>
		<article>
			<h1 style="font-size: 50px;">忘記密碼</h1>
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
					
				</table>
				<input type="submit" value="發送email" name="use">
			</form>
			
        </article>
	</section>

	<c:import url="/import/footer.jsp"></c:import>
</body>
</html>