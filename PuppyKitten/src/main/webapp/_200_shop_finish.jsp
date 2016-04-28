<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<c:import url="/import/head.jsp"></c:import>
<script type="text/javascript">
$(function(){
	$('.ka').hide();
});
</script>
<style type="text/css">
fieldset {
	border-radius: 12px;
}

.art{
border-radius: 12px;
width: 1500px; 
background-color: white; 
line-height: 40px;
}
.pro_1 {
	float: left;
	margin: 10px;
	width: 450px;
	border: 1px solid red
}

.btn_1 {
	width: 90px;
	height: 30px;
	font-size: 15px
}
</style>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>米沃貓窩 -後台系統</title>
</head>
<body>
	<c:import url="/import/header.jsp"></c:import>
	<section>
		<article class="art" style="background:rgba(250, 235, 215, 0.4);">
			<h2>${session.loginOK}的訂單資訊</h2>
					<table style="cellpadding: 10; border=1 ; ">
						<tr>
							<th style="width: 100px;">訂單編號</th>
							<th style="width: 200px;">訂購日期</th>
							<th style="width: 150px;">收貨人</th>
							<th style="width: 350px;">配送地址</th>
							<th style="width: 100px;">總金額</th>
							
						</tr>	
						<tr style="text-align: center;">
							<td>${shop_Order_Bean.ORDER_ID}</td>
							<td>${shop_Order_Bean.ORDER_DATE}</td>
							<td>${shop_Order_Bean.ORDER_USER_NAME}</td>
							<td>${shop_Order_Bean.ORDER_USER_ADD}</td>
							<td>${shop_Order_Bean.ORDER_TOTAL_PRICE}</td>
						</tr>
						<tr>
							<td colspan="5" style="color: red;font-weight: 600;text-align: right;">感謝您的訂購，商品我們將會在三日內寄出，期待您再度光臨，謝謝!!</td>  
						</tr>				
					</table>
		</article>
	</section>
	<c:import url="/import/footer.jsp"></c:import>
</body>
</html>