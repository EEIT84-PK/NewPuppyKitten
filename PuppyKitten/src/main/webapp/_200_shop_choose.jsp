<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<c:import url="/import/head.jsp"></c:import>
<script type="text/javascript">
$(function(){
	$('.wo').hide();
});
</script>
<style type="text/css">
.button {
	background-color: #4CAF50; /* Green */
	border: none;
	color: white;
	padding: 16px 32px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	margin: 4px 2px;
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

.choose_pro1 {
	width: 1400px;
 	border-bottom: 1px solid #DDDDDD; 
	margin: 20px;
	height: 50px;
	text-shadow: 2px 2px 5px red;
	font-size: 25px;
	
}

.choose_pro2 {
	float: left;
	width: 450px;
	margin: 10px;
	height: 390px;
/*   	border-right: 1px solid #DDDDDD;   */
	padding: 5px;
}

.choose_pro3 {
	float: right;
	width: 900px;
/* 	border: 1px solid red; */
	margin: 10px;
	height: 310px;
	padding: 5px;
}

.choose_pro4 {
	float: right;
	width: 400px;
	margin: 10px;
	height: 50px;
	padding: 5px;
}

.choose_pro5 {
	float: right;
	width: 400px;
	margin: 10px;
	height: 50px;
	padding: 5px;
	line-height:30px;
}

.choose_pro6 {
	float: right;
	width: 900px;
 	border-top: 1px solid #DDDDDD; 
	margin: 10px;
	height: 50px;
	padding: 5px;
}


.choose_1 {
	float: left;
	margin: 10px;
	width: 1450px;
	height: 530px;
 	border: 1px solid #DDDDDD; 
}

.btn_1 {
	width: 90px;
	height: 30px;
	font-size: 15px;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>米沃貓窩 -購物商城</title>
</head>
<body>
	<c:import url="/import/header.jsp"></c:import>
	<section>
		<article style="width: 1500px;background:rgba(229, 190, 157, 0.6);border-radius:25px;">
							
							<div class="choose_1">
								<div class="choose_pro1">
								
									<span>${shopbean.PRO_ANIMAL}</span>>><span>${shopbean.PRO_KIND}</span>>><span>${shopbean.PRO_NAME}</span>
								</div>
								<div class="choose_pro2">
									<img alt="" src="${shopbean.PRO_IMAGE }" height="360" width="400" style="border-radius:25px;">

								</div>

								<div class="choose_pro3">
								<span>商品介紹</span><br><br><span>${shopbean.PRO_BODY}</span><br> <br>
								</div>
								<div class="choose_pro6">	
									<div class="choose_pro5">
											<form action="<%=request.getContextPath()%>/shop/shopBackAction_shopchoose" method="post">
												購買數量：<input type="number" name="shop_Buy_Bean.BUY_NUMBER" value="1">
													<input class="button1" type="submit" value="加入購物車" style="font-size: 14px;"><br>${errors.number[0]}
													<input class="wo" type="text" name="shop_Buy_Bean.BUY_PRO_ID" value="${shopbean.PRO_ID}">
													<input class="wo" type="text" name="shop_Buy_Bean.BUY_USER_ID" value="${session.memberID}">
													<input class="wo" type="text" name="shop_Buy_Bean.BUY_NAME" value="${shopbean.PRO_NAME}">
													<input class="wo" type="text" name="shop_Buy_Bean.BUY_NEW_PRICE" value="${shopbean.PRO_PRICE}">
											</form>
									</div>
									<div class="choose_pro4">
											<span>建議售價：<span>${shopbean.PRO_PRICE}</span>元</span><c:choose><c:when test="${shopbean.PRO_PROJECT==指定價格}"><br><span>優惠方案：無</span></c:when><c:otherwise><br><span>優惠方案：${shopbean.PRO_PROJECT}</span></c:otherwise></c:choose><br>
											<span>剩餘數量：<span>${shopbean.PRO_STOCK}</span>個</span> 
									</div>
								</div>
							</div>
		</article>
	</section>
	<c:import url="/import/footer.jsp"></c:import>
</body>
</html>