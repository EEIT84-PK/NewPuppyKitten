<%@ page import="java.net.URI"%>
<%@ page import="_200_controller.ShopBackAction_carrefresh"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<c:import url="/import/head.jsp"></c:import>
<script type="text/javascript">
	$(function() {
		$('.buy_order').hide();
		$('#ja').hide();
	});
</script>
<style type="text/css">
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
<title>米沃貓窩 -購物車</title>
</head>
<body>
	<c:import url="/import/header.jsp"></c:import>
	<section>
	<fieldset style="background:rgba(250, 235, 215, 0.4);border: none;bor">
		<h2>購物車清單</h2>
		<table border="1" style="text-align: center;">
			<thead>
				<tr>
					<th style="width: 100px;">商品編號</th>
					<th style="width: 350px;">商品名稱</th>
					<th style="width: 100px;">購買數量</th>
					<th style="width: 100px;">單價</th>
					<th style="width: 100px;">原售價</th>
					<th style="width: 100px;">優惠價</th>
					<th style="width: 100px;">優惠方案</th>
					<th style="width: 100px;">小計</th>
					<th style="width: 50px;">功能</th>
				</tr>
			</thead>

			<c:choose>
				<c:when test="${not empty shop_Buy_list}">
					<c:forEach var="buy" items="${shop_Buy_list}">

						<tbody>
							<tr class="pro_tr">
								<td>${buy.BUY_PRO_ID}</td>
								<td>${buy.BUY_NAME}</td>
								<td>${buy.BUY_NUMBER}</td>
								<td>${buy.BUY_OLD_PRICE}</td>
								<td>${buy.BUY_OLD_PRICE*buy.BUY_NUMBER}</td>
								<td>${buy.BUY_NEW_PRICE}</td>
								<td>${buy.BUY_PROJECT}</td>
								<td>${buy.BUY_LITTLE_TOTAL}</td>
								<td>
									<form action="<%=request.getContextPath()%>/shop/shopBackAction_cardelete" method="post">
										<input class="buy_order" type="text" name="shopBean.PRO_ID" value="${buy.BUY_PRO_ID}"> 
										<input class="buy_order" type="text" name="shop_Buy_Bean.BUY_ID" value="${buy.BUY_ID}"> 
										<input class="buy_order" type="text" name="shop_Buy_Bean.BUY_NUMBER" value="${buy.BUY_NUMBER}"> 
										<input class="buy_order" type="text" name="shop_Buy_Bean.BUY_USER_ID" value="${session.memberID}">
										<input class="del_pro" type="submit" value="移除" style="cursor: pointer;">
									</form>
								</td>
							</tr>

						</tbody>

					</c:forEach>
				</c:when>
			</c:choose>
			<tfoot>
				<tr>
					<td colspan="9" style="text-align: right;color: red;font-weight: 600;">金額總計：${sessionScope.total}元</td>
				</tr>
			</tfoot>
		</table>

		<form
			action="<%=request.getContextPath()%>/shop/shopBackAction_carsend"
			method="post"><br>
			<input type="submit" value="下一步" onclick="location"
				style="cursor: pointer;"> <input id="ja" type="text"
				name="shop_Buy_Bean.BUY_USER_ID" value="${session.memberID}">
		</form>
		</fieldset>
	</section>
	<c:import url="/import/footer.jsp"></c:import>
</body>
</html>