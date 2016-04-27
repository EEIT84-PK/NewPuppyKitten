<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<c:import url="/import/head.jsp"></c:import>
<script type="text/javascript">
$(function(){
	$('.hi').hide();
	
	$('.ra_cat').hide();
	$('.ra_dog').hide();
	$('.val_animal').hide();
	$('.val_kind').hide();
	
	$('#sel_animal').change(function(){
		$('.val_animal').val($(this).val());
		
		if($('.val_animal').val()=="汪星人"){
			$('.ra_cat').hide();
			$('.ra_dog').show();
		}else if($('.val_animal').val()=="喵星人"){
			$('.ra_cat').show();
			$('.ra_dog').hide();
		}
	});
	$('.ra_cat').click(function(){
		$('.val_kind').val($(this).val());
	});
	
	$('.ra_dog').click(function(){
		$('.val_kind').val($(this).val());
	});
	
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
	text-shadow: 2px 2px 5px red;
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
 	background:rgba(220, 155, 3, 1); 
 	border-radius:25px;
 	
}

.shop_img:hover {opacity: 0.7;}

</style>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>米沃貓窩 -購物商城</title>
</head>
<body>
	<c:import url="/import/header.jsp"></c:import>
	<section>
		<article style="width: 1500px;">
				<form action="<%=request.getContextPath()%>/shop/shopBackAction_searchproduct" method="post">
				<select id="sel_animal">
					<option>請選擇</option>
					<option>汪星人</option>
					<option>喵星人</option>
				</select>
				<input class="val_animal" type="text" name="shopBean.PRO_ANIMAL">
				<input class="val_kind" type="text">
				<input class="ra_dog" type="radio" name="shopBean.PRO_KIND" value="主食乾糧"><span class="ra_dog">主食乾糧</span>
				<input class="ra_dog" type="radio" name="shopBean.PRO_KIND" value="外出專用"><span class="ra_dog">外出專用</span>
				<input class="ra_dog" type="radio" name="shopBean.PRO_KIND" value="嚴選零嘴"><span class="ra_dog">嚴選零嘴</span>
				<input class="ra_dog" type="radio" name="shopBean.PRO_KIND" value="休閒玩具"><span class="ra_dog">休閒玩具</span>
				<input class="ra_dog" type="radio" name="shopBean.PRO_KIND" value="衣著打扮"><span class="ra_dog">衣著打扮</span>
				
				<input class="ra_cat" type="radio" name="shopBean.PRO_KIND" value="主食乾糧"><span class="ra_cat">主食乾糧</span>
				<input class="ra_cat" type="radio" name="shopBean.PRO_KIND" value="外出專用"><span class="ra_cat">外出專用</span>
				<input class="ra_cat" type="radio" name="shopBean.PRO_KIND" value="精選罐頭"><span class="ra_cat">精選罐頭</span>
				<input class="ra_cat" type="radio" name="shopBean.PRO_KIND" value="嚴選零嘴"><span class="ra_cat">嚴選零嘴</span>
				<input class="ra_cat" type="radio" name="shopBean.PRO_KIND" value="休閒玩具"><span class="ra_cat">休閒玩具</span>
				<input class="ra_cat" type="radio" name="shopBean.PRO_KIND" value="清潔用品"><span class="ra_cat">清潔用品</span>
				<input class="ra_cat" type="radio" name="shopBean.PRO_KIND" value="生活雜物"><span class="ra_cat">生活雜物</span>
				<input class="ra_cat" type="radio" name="shopBean.PRO_KIND" value="衣著打扮"><span class="ra_cat">衣著打扮</span>
				<input type="submit" value="搜尋"><br>
				</form>
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
									</c:url>'><img class="shop_img" src="${shop.PRO_IMAGE}"  width="130" height="150"  style="border-radius:25px">
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
				<c:otherwise>
				<b>${select_404 }</b>
				</c:otherwise>
			</c:choose>
		</article>
	</section>
	<c:import url="/import/footer.jsp"></c:import>
</body>
</html>