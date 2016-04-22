<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<c:import url="/import/head.jsp"></c:import>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>

<script type="text/javascript">
	$(function() {
		$("#age").attr("readonly", "readonly").datepicker({
			showOn : "focus",
			changeMonth : true,
			changeYear : true,
			defaultDate : (new Date("1989-01-01")),
			dateFormat : "yy-mm-dd",
			minDate : new Date("1950-12-01"),
			maxDate : new Date("2016-04-05"),
			
		})

		$("#button").click(function() {
			$("#MEM_ACCOUNT").val("kuan8041");
			$("#MEM_PASSWORD").val("123456");
			$("#password").val("123456")
			$("#MEM_NAME").val("李奧納多");
			$("#MEM_IDCARD").val("F128579032");
			$("#age").val("1990-04-02");
			$("#MEM_ADD").val("新北市淡水區49巷2之1號");
			$("#MEM_PHONE").val("0977078143");
			$("#MEM_EMAIL").val("kuan8041@gmail.com")
			
		});
	});
	$(function() {
	    $( "input[type=submit]" )
	      .button()
	      .click(function( event ) {
	      
	      });
	  });
	
</script>
<title>米沃貓窩 - 會員註冊</title>
</head>
<body>
	<c:import url="/import/header.jsp"></c:import>

	<section>
		<article>


			<form action="<%=request.getContextPath()%>/login/insertAction.action" method="post"
				enctype="multipart/form-data">
				<h1 style="font-size: 50px;">
					會員註冊<img src="<%=request.getContextPath()%>/images/ad/circle.png" id="button">
				</h1>
				<table>

					<tr>
						<td style="font-size:20px">帳號:<br></td>
						<td><input type="text" name="bean.MEM_ACCOUNT"
							id="MEM_ACCOUNT" value="${bean.MEM_ACCOUNT}"></td>
						<td style="color: red">${errors.MEM_ACCOUNT[0]}</td>
					</tr>
					<tr>
						<td style="font-size:20px">密碼:</td>
						<td><input type="password" name="password" id="MEM_PASSWORD"
							value="${password}"></td>
						<td style="color: red">${errors.password[0]}</td>
					</tr>
					<tr>
						<td style="font-size:20px">確認密碼:</td>
						<td><input type="password" name="checkpassword" id="password"
							value="${checkpassword}"></td>
						<td style="color: red">${errors.checkpassword[0]}</td>
					</tr>
					<tr>
						<td style="font-size:20px">姓名:</td>
						<td><input type="text" name="bean.MEM_NAME" id="MEM_NAME"
							value="${bean.MEM_NAME}"></td>
						<td style="color: red">${errors.MEM_NAME[0]}</td>
					</tr>
					<tr>
						<td style="font-size:20px">身分證字號:</td>
						<td><input type="text" name="bean.MEM_IDCARD" id="MEM_IDCARD"
							value="${bean.MEM_IDCARD}"></td>
						<td style="color: red">${errors.MEM_IDCARD[0]}</td>
					</tr>
					<tr>
						<td style="font-size:20px">生日:</td>
						<td><input type="text" name="bean.MEM_BIRTHDAY" id="age"
							value="${date}"></td>
						<td style="color: red">${errors.MEM_BIRTHDAY[0]}</td>
					</tr>
					<tr>
						<td style="font-size:20px">地址:</td>
						<td><input type="text" name="bean.MEM_ADD" id="MEM_ADD"
							value="${bean.MEM_ADD}"></td>
						<td style="color: red">${errors.MEM_ADD[0]}</td>
					</tr>
					<tr>
						<td style="font-size:20px">手機:</td>
						<td><input type="text" name="bean.MEM_PHONE" id="MEM_PHONE"
							value="${bean.MEM_PHONE}"></td>
						<td style="color: red">${errors.MEM_PHONE[0]}</td>
					</tr>
					<tr>
						<td style="font-size:20px">信箱:</td>
						<td><input type="email" name="bean.MEM_EMAIL" id="MEM_EMAIL"
							value="${bean.MEM_EMAIL}"></td>
						<td style="color: red">${errors.MEM_EMAIL[0]}</td>

					</tr>
					<tr>
						<td style="font-size:20px">驗證碼:</td>
						<td><input type="text" name="checkcode" value="">
						<td style="color: red">${errors.checkcode[0]}</td>
					</tr>

					<tr>
						<td></td>
						<td style="float: right"><input style="font-size:10px" type="submit" name="use"
							value="寄送驗證碼"><input style="font-size:10px" name="use" type="submit"
							value="加入會員"></td>
					</tr>

				</table>
			</form>
		</article>
	</section>

	<c:import url="/import/footer.jsp"></c:import>
</body>
</html>