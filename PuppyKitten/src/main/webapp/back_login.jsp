<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
#titlecolor {
	font-size: 80px;
	font-family: cursive;
	font-weight: 900;
	text-align: center;
	color: white;
	font-weight: 900;
}

.text_div {
	padding-left:820px;
	border-radius: 30px;
	color: white;
}

.text_input {
	margin: 8px;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body style="background-image: url('/PuppyKitten/images/bg03.jpg')">
	<div>
		<div id="titlecolor">
			<br>
			<br>
			<b>米沃貓窩</b>
			<p style="font-size: 35px; font-family: cursive; color: #DDDDDD">後台管理系統</p>
		</div>
		<br>
		<div class="text_div">
			<form action="login/loginBackAction.action" method="post">
				<table style="width:500px;">
					<tr>
						<td><span
							style="font-size: 15px; font-family: cursive; color: #DDDDDD">帳號：</span><input
							class="text_input" type="text" name="username" value=""></td>
						<td style="padding-left: 30px;"><span>${errors.usererror[0]}</span></td>
					</tr>
					<tr>
						<td><span
							style="font-size: 15px; font-family: cursive; color: #DDDDDD">密碼：</span><input
							class="text_input" type="text" name="password" value=""></td>
						<td style="padding-left: 30px;"><span>${errors.pswderror[0]}</span></td>
					</tr>
					<tr>
						<td style="text-align: center"><input type="submit" value="登入系統" style="cursor: pointer"></td>
						<td style="padding-left: 30px;"><span>${errors.loginerror[0]}</span></td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</body>
</html>