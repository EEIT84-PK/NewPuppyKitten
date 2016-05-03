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
<title>米沃貓窩 -訂單資訊</title>
</head>
<body>
	<c:import url="/import/header.jsp"></c:import>
	<section>
		<article class="art" style="background:rgba(250, 235, 215, 0.4)">
			<fieldset>
			<h2>購買資訊</h2>
					<table style="cellpadding: 10;">
						<tr>
							<th style="width: 100px;">商品編號</th>
							<th style="width: 350px;">商品名稱</th>
							<th style="width: 100px;">商品售價</th>
							<th style="width: 100px;">購買數量</th>
							<th style="width: 100px;">小計</th>
						</tr>
			<c:choose>
				<c:when test="${not empty shop_Buy_list}">
					<c:forEach var="buy" items="${shop_Buy_list}">
						<tr style="text-align: center;">
							<td>${buy.BUY_PRO_ID}</td>
							<td>${buy.BUY_NAME}</td>
							<td>${buy.BUY_OLD_PRICE}</td>
							<td>${buy.BUY_NUMBER}</td>
							<td>${buy.BUY_LITTLE_TOTAL}</td>
						</tr>
					</c:forEach>
				</c:when>
			</c:choose>
						<tr>
							<td colspan="5" style="color: red;font-weight: 600;text-align: right;">總金額為：${sessionScope.total}元 &nbsp;&nbsp;&nbsp;(內含運費80元)<br> 付款方式為：貨到付款 </td>  
						</tr>
					</table>
				<span>----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------</span>
				<h2>配送資訊</h2>
				<form action="<%=request.getContextPath()%>/shop/shopBackAction_ordersend" method="post">
					收貨人姓名：<input type="text" name="shop_Order_Bean.ORDER_USER_NAME" value="${session.loginOK}" size="10"><br> 
					連絡電話：<input type="text" name="shop_Order_Bean.ORDER_USER_PHONE" value="${session.memberPHONE}"><br>
					配送地址：<input type="text" name="shop_Order_Bean.ORDER_USER_ADD" value="${session.memberADD}" size="50">

					<table>
						<tr>
							<th style="vertical-align: bottom;"></th>
						</tr>
					</table>
					<br>
					
					 			

							<input type="submit" value="確認送出" style="cursor: pointer;">
								<input class="ka" type="text" name="shop_Order_Bean.ORDER_TOTAL_PRICE" value="${sessionScope.total}">
<%-- 								<input class="ka" type="text" name="shop_Order_Bean.ORDER_DATE" value="${sessionScope.buytime}"> --%>
								<input class="ka" type="text"  name="shop_Buy_Bean.BUY_USER_ID" value="${session.memberID}">

				</form>
				
<%-- 				<form action="<%=request.getContextPath()%>/shop/shopBackAction_11" method="post"> --%>
<%-- 					<c:choose> --%>
<%-- 						<c:when test="${not empty shop_Buy_list}"> --%>
<%-- 							<c:forEach var="buy" items="${shop_Buy_list}"> --%>
<!-- 							<input type="submit" value="確認送出" style="cursor: pointer;"> -->
<%-- 								<input class="ka" type="text" name="shop_Order_Bean.ORDER_PRO_ID" value="${buy.BUY_PRO_ID}"> --%>
<%-- 								<input class="ka" type="text" name="shop_Order_Bean.ORDER_USER_ID" value="${session.loginOK}"> --%>
<%-- 								<input class="ka" type="text" name="shop_Order_Bean.ORDER_USER_ADD" value="${session.memberADD}"> --%>
<%-- 								<input class="ka" type="text" name="shop_Order_Bean.ORDER_USER_PHONE" value="${session.memberPHONE}"> --%>
<%-- 								<input class="ka" type="text" name="shop_Order_Bean.ORDER_PRO_NAME" value="${buy.BUY_NAME}"> --%>
<%-- 								<input class="ka" type="text" name="shop_Order_Bean.ORDER_BUY_NUMBER" value="${buy.BUY_NUMBER}"> --%>
<%-- 								<input class="ka" type="text" name="shop_Order_Bean.ORDER_OLD_PRICE" value="${buy.BUY_NEW_PRICE}"> --%>
<%-- 								<input class="ka" type="text" name="shop_Order_Bean.ORDER_NEW_PRICE" value="${buy.BUY_LITTLE_TOTAL}"> --%>
<%-- 								<input class="ka" type="text" name="shop_Order_Bean.ORDER_TOTAL_PRICE" value="${sessionScope.total}"> --%>
<%-- 							</c:forEach> --%>
<%-- 						</c:when> --%>
<%-- 					</c:choose> --%>
<!-- 				</form> -->
				
			</fieldset>
		</article>
	</section>
	<c:import url="/import/footer.jsp"></c:import>
</body>
</html>