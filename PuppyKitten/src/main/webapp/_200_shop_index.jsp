<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC>
<html>
<head>
<c:import url="/import/head.jsp"></c:import>
<script type="text/javascript">
$(function(){
	$('.hi').hide();
	});
</script>
<style type="text/css">
.shop_img{
padding: 5px 30px;
border-radius: 5px;
    cursor: pointer;
    transition: 0.3s;
}
.button {
	background-color: #4CAF50; /* Green */
	border: none;
	color: white;
	padding: 16px 32px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 4px 2px;
	-webkit-transition-duration: 0.4s; /* Safari */
	transition-duration: 0.4s;
	cursor: pointer;
}

.button1 {
	background-color: white;
	color: black;
	border: 2px solid #4CAF50;
	cursor: pointer;
}

.button1:hover {
	background-color: #4CAF50;
	color: white;
}

.button2 {
	background-color: white;
	color: black;
	border: 2px solid darkorange;
	cursor: pointer;
}

.button2:hover {
	background-color: darkorange;
	color: white;
}

.index_pro1 {
	width: 420px;
/* 	border: 1px solid red; */
	margin: 10px;
	height: 35px;
	text-shadow: 2px 2px 5px blue;
	font-size: 20px;
}

.index_pro2 {
	float: left;
	width: 200px;
	margin: 10px;
	height: 150px;
 	background: white; 
	padding: 5px;
}

.index_pro3 {
	float: right;
	width: 180px;
/* 	border: 1px solid red; */
	margin: 10px;
	height: 150px;
	padding: 5px;
}

.pro_1 {
	float: left;
	margin: 10px;
	width: 450px;
	height: 250px;
 	background:whitesmoke; 
}

.btn_1 {
	width: 90px;
	height: 30px;
	font-size: 15px;
	cursor: pointer;
}

.btn_2 {
	width: 120px;
	height: 30px;
	font-size: 15px;
}

.shop_img:hover {opacity: 0.7;}

</style>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>米沃貓窩 -購物商城</title>
</head>
<body>
	<c:import url="/import/header.jsp"></c:import>
	<section>

		<article style="width: 1500px; background-color: white;">
			
				<input class="btn_1" type="submit" name="dog" value="汪星人"> <input
					class="btn_1" type="submit" name="cat" value="喵星人"> <select
					class="btn_1">
					<option>主食乾糧</option>
					<option>外出專用</option>
					<option>精選罐頭</option>
					<option>嚴選零嘴</option>
					<option>休閒玩具</option>
					<option>生活用品</option>
					<option>衣著打扮</option>
				</select> 
<!-- 				<input class="btn_2" type="text" name="search_something" placeholder="Search">  -->
				<input class="btn_1" type="submit" value="搜尋"><br>
				<c:choose>
					<c:when test="${not empty select_list}">
						<c:forEach var="shop" items="${select_list}">
							<div class="pro_1">
							
								<div class="index_pro1">
									<span>${shop.PRO_NAME}</span>
								</div>
								
								<div class="index_pro2">

									<a href='<c:url value="/shop/shopBackAction_shopindex">
									<c:param name="shopbean.PRO_ID">${shop.PRO_ID}</c:param>
									<c:param name="shopbean.PRO_ANIMAL">${shop.PRO_ANIMAL}</c:param>
									<c:param name="shopbean.PRO_KIND">${shop.PRO_KIND}</c:param>
									<c:param name="shopbean.PRO_NAME">${shop.PRO_NAME}</c:param>
									<c:param name="shopbean.PRO_PROJECT">${shop.PRO_PROJECT}</c:param>
									<c:param name="shopbean.PRO_PRICE">${shop.PRO_PRICE}</c:param>
									<c:param name="shopbean.PRO_BUY1">${shop.PRO_BUY1}</c:param>
									<c:param name="shopbean.PRO_BUY2">${shop.PRO_BUY2}</c:param>
									<c:param name="shopbean.PRO_WEIGHT">${shop.PRO_WEIGHT}</c:param>
									<c:param name="shopbean.PRO_STOCK">${shop.PRO_STOCK}</c:param>
									<c:param name="shopbean.PRO_IMAGE">${shop.PRO_IMAGE}</c:param>
									<c:param name="shopbean.PRO_BODY">${shop.PRO_BODY}</c:param>
									<c:param name="choose">choose</c:param>
									</c:url>'><img class="shop_img" src="${shop.PRO_IMAGE}"  width="130" height="150">
									</a>
									
								</div>
								<form action="<%=request.getContextPath()%>/shop/shopBackAction_shopindex" method="post">
								<div class="index_pro3">
									<span>建議售價：<span>${shop.PRO_PRICE}</span>元</span><br>
									<span>剩餘數量：<span>${shop.PRO_STOCK}</span>個
									</span><br> <br> 
									<input class="button2" type="submit" value="商品資訊"><br><br>
									<br><br><br><br><br><br>
									<input class="hi" type="text" name="shopbean.PRO_ID" value="${shop.PRO_ID}">
									<input class="hi" type="text" name="shopbean.PRO_ANIMAL" value="${shop.PRO_ANIMAL}">
									<input class="hi" type="text" name="shopbean.PRO_KIND" value="${shop.PRO_KIND}">
									<input class="hi" type="text" name="shopbean.PRO_NAME" value="${shop.PRO_NAME}">
									<input class="hi" type="text" name="shopbean.PRO_BODY" value="${shop.PRO_BODY}">
									<input class="hi" type="text" name="shopbean.PRO_PRICE" value="${shop.PRO_PRICE}">
									<input class="hi" type="text" name="shopbean.PRO_STOCK" value="${shop.PRO_STOCK}">
									<input class="hi" type="text" name="shopbean.PRO_IMAGE" value="${shop.PRO_IMAGE}">
								</div>
								</form>
							</div>
						</c:forEach>
					</c:when>
				</c:choose>
		</article>
	</section>
	<c:import url="/import/footer.jsp"></c:import>
</body>
</html>