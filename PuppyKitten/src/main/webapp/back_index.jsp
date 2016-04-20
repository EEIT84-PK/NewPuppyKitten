<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC>
<!--
	Prologue by HTML5 UP
	html5up.net | @n33co
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
		<!-- Scripts -->
			<script src="<%=request.getContextPath()%>/assets/js/jquery.min.js"></script>
			<script src="<%=request.getContextPath()%>/assets/js/jquery.scrolly.min.js"></script>
			<script src="<%=request.getContextPath()%>/assets/js/jquery.scrollzer.min.js"></script>
			<script src="<%=request.getContextPath()%>/assets/js/skel.min.js"></script>
			<script src="<%=request.getContextPath()%>/assets/js/util.js"></script>
			<script src="<%=request.getContextPath()%>/assets/js/main.js"></script>
	<head>
	<script src="<%=request.getContextPath()%>/jquery/jquery-2.2.2.min.js"></script>
	<script src="<%=request.getContextPath()%>/jquery/jquery-ui.min.js"></script>
		<title>Prologue by HTML5 UP</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/main.css" />
		<script type="text/javascript">
$(function(){
	$('.sel_PRO_ID').hide();
})
</script>
					<script>
					//1.找到位置     2.先取值     3.放入指定位置     4.不必要顯示區域隱藏
						$(function(){
// 							$('#insert_1').hide();
							$('#price_5').hide();
							$('#price_6').hide();
							
							
							$('#val_1').hide();
							$('#sel_1').change(function(){
								$('#val_1').val($(this).val());
							}); 
							
							
							
							$('#val_2').hide();
							$('#sel_2').change(function(){
								$('#val_2').val($(this).val());
								});
							
							$('#val_3').hide();
							$('#sel_3').change(function(){
								$('#val_3').val($(this).val());
								
								if($('#val_3').val()=="指定價格"){
								$('#price_6').hide();
								$('#price_5').show();
								}else{
								if($('#val_3').val()=="買幾送幾"){
								$('#price_6').show();
								$('#price_5').show();
								}
							}
							});
						});
					</script>
										<script type="text/javascript">
	$win.bind('scroll resize', function() {
		var $this = $(this);

		// 控制 #abgne_float_ad 的移動
		$ad.stop().animate({
			top : $this.scrollTop() + $this.height() - _height - _diffY,
			left : $this.scrollLeft() + $this.width() - _width - _diffX
		}, _moveSpeed);
	}).scroll();
</script>
<style type="text/css">
.pro_1 {
	float: left;
	margin: 10px;
	width: 450px;
	border: 1px solid red
}

/* .btn_1 { */
/* 	width: 90px; */
/* 	height: 30px; */
/* 	font-size: 15px */
/* } */
</style>
	</head>
	<body>
		<!-- Header -->
			<div id="header">
				<div class="top">
					<!-- Logo -->
						<div id="logo">
							<span class="<%=request.getContextPath()%>/image avatar48"><img src="<%=request.getContextPath()%>/images/avatar.jpg" alt="" /></span>
							<p>Hyperspace Engineer</p>
						</div>
					<!-- Nav -->
						<nav id="nav">
							<!--
								Prologue's nav expects links in one of two formats:
								1. Hash link (scrolls to a different section within the page)
								   <li><a href="#foobar" id="foobar-link" class="icon fa-whatever-icon-you-want skel-layers-ignoreHref"><span class="label">Foobar</span></a></li>
								2. Standard link (sends the user to another page/site)
								   <li><a href="http://foobar.tld" id="foobar-link" class="icon fa-whatever-icon-you-want"><span class="label">Foobar</span></a></li>
							-->
							<ul>
								<li><a href="#top" id="top-linkcontact-link" class="skel-layers-ignoreHref"><span class="icon fa-home">首頁</span></a></li>
								<li><a href="#product" id="contact-link" class="skel-layers-ignoreHref"><span class="icon fa-th">商品資訊管理</span></a></li>
								<li><a href="#member" id="portfolio-link" class="skel-layers-ignoreHref"><span class="icon fa-th">會員資訊管理</span></a></li>
								<li><a href="#travel" id="about-link" class="skel-layers-ignoreHref"><span class="icon fa-th">旅遊資訊管理</span></a></li>
								<li><a href="#talk" id="contact-link" class="skel-layers-ignoreHref"><span class="icon fa-th">討論版管理</span></a></li>
							</ul>
						</nav>
				</div>
				<div class="bottom">
					<!-- Social Icons -->
						<ul class="icons">
							<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
							<li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
							<li><a href="#" class="icon fa-github"><span class="label">Github</span></a></li>
							<li><a href="#" class="icon fa-dribbble"><span class="label">Dribbble</span></a></li>
							<li><a href="#" class="icon fa-envelope"><span class="label">Email</span></a></li>
						</ul>
				</div>
			</div>
		<!-- Main -->
			<div id="main">
				<!-- welcome -->
					<section id="top" class="one dark cover">
						<div class="container">
							<header>
								<h2 class="alt"><strong>歡迎登入&nbsp&nbsp&nbsp&nbsp米沃貓窩後台管理系統</strong></h2>
								<h4 class="alt">Welcome to Miwo background Management System.</h4>
							</header>
									<br><br><br><br><br><br><br><br><br><br><br>
						</div>
					</section>
					
					
				<!-- product_list -->
					<section id="product" class="three">
						<div class="container">

							<header>
								<h2>商品清單</h2>
							</header>
			<div>
			<h2>${delete_OK}</h2>
			<div style="width:1300px;padding-left: 130px;">
			<form action="<%=request.getContextPath()%>/shop/shopBackAction_select.action#product" method="post">
						<input class="btn_1" type="submit" value="查詢" style="cursor: pointer;font-size: 15px;float: left;margin: 5px">
					</form>
					<input class="btn_1" type="submit" value="新增商品" 
					onclick="location.href='<%=request.getContextPath()%>/_200_shop_back_insert.jsp'"
					style="cursor: pointer;text-align: left;font-size: 15px;float: left;margin: 5px;"><br>
					
							<c:choose>
							
					<c:when test="${not empty select_list}">
				
					
					
						<table border="1" style="width:1100px;">
							<thead>
								<tr>
									<th style="width: 100px;font-size: 20px;">商品編號</th>
									<th style="width: 100px;font-size: 20px;">商品類型</th>
									<th style="width: 40px;font-size: 20px;">商品種類</th>
									<th style="width: 400px;font-size: 20px;">商品名稱</th>
									<th style="width: 100px;font-size: 20px;">販售價格</th>
									<th style="width: 100px;font-size: 20px;">上架</th>
									<th style="width: 100px;font-size: 20px;">下架</th>
								</tr>
							</thead>
							<tbody>
							<c:forEach var="sel" items="${select_list}">
								<form action="<%=request.getContextPath()%>/shop/shopBackAction_delete" method="post">
									<tr>
										<td style="font-size: 20px;text-align: center;">${sel.PRO_ID}</td>
										<td style="font-size: 20px;text-align: center;">${sel.PRO_ANIMAL}</td>
										<td style="font-size: 20px;text-align: center;">${sel.PRO_KIND}</td>
										<td style="font-size: 20px;text-align: center;">${sel.PRO_NAME}</td>
										<td style="font-size: 20px;text-align: center;">${sel.PRO_PRICE}</td>
								<td style="font-size: 15px;text-align: center;"><a href='<c:url value="/shop/shopBackAction_select">
									<c:param name="shopbean.PRO_ID">${sel.PRO_ID}</c:param>
									<c:param name="shopbean.PRO_ANIMAL">${sel.PRO_ANIMAL}</c:param>
									<c:param name="shopbean.PRO_KIND">${sel.PRO_KIND}</c:param>
									<c:param name="shopbean.PRO_NAME">${sel.PRO_NAME}</c:param>
									<c:param name="shopbean.PRO_PROJECT">${sel.PRO_PROJECT}</c:param>
									<c:param name="shopbean.PRO_PRICE">${sel.PRO_PRICE}</c:param>
									<c:param name="shopbean.PRO_BUY1">${sel.PRO_BUY1}</c:param>
									<c:param name="shopbean.PRO_BUY2">${sel.PRO_BUY2}</c:param>
									<c:param name="shopbean.PRO_WEIGHT">${sel.PRO_WEIGHT}</c:param>
									<c:param name="shopbean.PRO_STOCK">${sel.PRO_STOCK}</c:param>
									<c:param name="shopbean.PRO_IMAGE">${sel.PRO_IMAGE}</c:param>
									<c:param name="shopbean.PRO_BODY">${sel.PRO_BODY}</c:param>
									<c:param name="use">update</c:param>
									</c:url>'>編輯</a></td>

										<td style="text-align: center;"><input class="sel_PRO_ID" type="text" name="shopbean.PRO_ID"  value="${sel.PRO_ID}" >
										<input type="submit" value="移除" style="cursor: pointer;font-size: 10px;margin: 0px;"></td>
									</tr>
									</form>
										</c:forEach>
							</tbody>
						</table>
						</div>
					</c:when>
				</c:choose>
			</div>
						</div>
						</section>
						
						
			<!-- insert -->
					<section id="insert">
					
						<div class="container">
							<header>
							<h2>新增商品</h2>
							</header>
						</div>
					</section>
							
				<!-- update -->
					<section id="update">
					
						<div class="container">
							<header>
							<h2>編輯商品</h2>
							</header>
						</div>
					</section>
							
							
					
					
				<!-- About Me -->
					<section id="member" class="three">
						<div class="container">

							<header>
								<h2>會員管理</h2>
							</header>

							<a href="#" class="image featured"><img src="images/pic08.jpg" alt="" /></a>

							<p>Tincidunt eu elit diam magnis pretium accumsan etiam id urna. Ridiculus
							ultricies curae quis et rhoncus velit. Lobortis elementum aliquet nec vitae
							laoreet eget cubilia quam non etiam odio tincidunt montes. Elementum sem
							parturient nulla quam placerat viverra mauris non cum elit tempus ullamcorper
							dolor. Libero rutrum ut lacinia donec curae mus vel quisque sociis nec
							ornare iaculis.</p>

						</div>
					</section>

				<!-- Contact -->
					<section id="travel" class="four">
						<div class="container">

							<header>
								<h2>旅遊管理</h2>
							</header>

							<p>Elementum sem parturient nulla quam placerat viverra
							mauris non cum elit tempus ullamcorper dolor. Libero rutrum ut lacinia
							donec curae mus. Eleifend id porttitor ac ultricies lobortis sem nunc
							orci ridiculus faucibus a consectetur. Porttitor curae mauris urna mi dolor.</p>

							<form method="post" action="#">
								<div class="row">
									<div class="6u 12u$(mobile)"><input type="text" name="name" placeholder="Name" /></div>
									<div class="6u$ 12u$(mobile)"><input type="text" name="email" placeholder="Email" /></div>
									<div class="12u$">
										<textarea name="message" placeholder="Message"></textarea>
									</div>
									<div class="12u$">
										<input type="submit" value="Send Message" />
									</div>
								</div>
							</form>

						</div>
					</section>
					
					<section id="talk" class="four">
						<div class="container">

							<header>
								<h2>討論版管理</h2>
							</header>

							<p>Elementum sem parturient nulla quam placerat viverra
							mauris non cum elit tempus ullamcorper dolor. Libero rutrum ut lacinia
							donec curae mus. Eleifend id porttitor ac ultricies lobortis sem nunc
							orci ridiculus faucibus a consectetur. Porttitor curae mauris urna mi dolor.</p>

							<form method="post" action="#">
								<div class="row">
									<div class="6u 12u$(mobile)"><input type="text" name="name" placeholder="Name" /></div>
									<div class="6u$ 12u$(mobile)"><input type="text" name="email" placeholder="Email" /></div>
									<div class="12u$">
										<textarea name="message" placeholder="Message"></textarea>
									</div>
									<div class="12u$">
										<input type="submit" value="Send Message" />
									</div>
								</div>
							</form>

						</div>
					</section>

			</div>

		<!-- Footer -->
			<div id="footer">

				<!-- Copyright -->
					<ul class="copyright">
						<li>&copy; Untitled. All rights reserved.</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
					</ul>

			</div>



	</body>
</html>