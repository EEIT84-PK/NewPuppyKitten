<%@ page import="java.net.URI"%>
<%@ page import="_200_controller.ShopBackAction_9"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC>
<html>
<head>
<c:import url="/import/head.jsp"></c:import>
<script type="text/javascript">
	$(function() {
		$('.buy_order').hide();
		$('#fa').hide();
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
		<h2>購物車清單</h2>
		<table border="1">
			<thead>
				<tr>
					<th>商品編號</th>
					<th>商品名稱</th>
					<th>購買數量</th>
					<th>售價</th>
					<th>小計</th>
					<th>功能</th>
				</tr>
			</thead>

			<c:choose>
				<c:when test="${not empty shop_Buy_list}">
					<c:forEach var="buy" items="${shop_Buy_list}">

						<tbody>
							<tr>
								<td>${buy.BUY_PRO_ID}</td>
								<td>${buy.BUY_NAME}</td>
								<td>${buy.BUY_NUMBER}</td>
								<td>${buy.BUY_NEW_PRICE}</td>
								<td>${buy.BUY_LITTLE_TOTAL}</td>
								<td>
									<form action="<%=request.getContextPath()%>/shop/shopBackAction_8" method="post">
										<input class="buy_order" type="text" name="shop_Buy_Bean.BUY_ID" value="${buy.BUY_ID}"> 
										<input type="submit" value="移除" style="cursor: pointer;">
									</form>
								</td>
							</tr>

						</tbody>

					</c:forEach>
				</c:when>
			</c:choose>
			<tfoot>
				<tr>
					<td colspan="6">金額總計：${sessionScope.total}元</td>
				</tr>
			</tfoot>
		</table>
		<form action="<%=request.getContextPath()%>/shop/shopBackAction_9" method="post">
			<input id="fa" type="text" name="shop_Buy_Bean.BUY_USER_ID" value="${session.memberID}">
			<input type="submit" value="整理購物清單" style="cursor: pointer;">
		</form>
		<form action="<%=request.getContextPath()%>/shop/shopBackAction_10" method="post">
				<input type="submit" value="下一步" onclick="location" style="cursor: pointer;">
		</form>
	</section>
	<c:import url="/import/footer.jsp"></c:import>
</body>
</html>