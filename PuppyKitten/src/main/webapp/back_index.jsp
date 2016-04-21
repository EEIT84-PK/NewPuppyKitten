<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC>
<html>
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
$(function(){
	$('#sel_7 :selected').text('${shopbean.PRO_ANIMAL}');
	$('#sel_8 :selected').text('${shopbean.PRO_KIND}');
	$('#sel_9 :selected').text('${shopbean.PRO_PROJECT}');
	
	$('#price_55').hide();
	$('#price_66').hide();
	
	$('#val_7').hide();
	$('#sel_7').change(function(){
		$('#val_7').val($(this).val());
	});
	
	$('#val_8').hide();
	$('#sel_8').change(function(){
		$('#val_8').val($(this).val());
	});
	
	$('#val_9').hide();
	$('#sel_9').change(function(){
		$('#val_9').val($(this).val());
		
		if($('#val_9').val()=="指定價格"){
			$('#price_66').hide();
			$('#price_55').show();
			}else{
		if($('#val_9').val()=="買幾送幾"){
			$('#price_66').show();
			$('#price_55').show();
			}
		}
	});
	$('#update_number').attr("readonly","readonly")
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

.errorInsert{
color: red;
}

</style>
	</head>
		<body>
			<div id="header">
				<div class="top">
					<!-- 管理員 -->
						<div id="logo">
							<span class="<%=request.getContextPath()%>/image avatar48"><img src="<%=request.getContextPath()%>/images/manager.png" alt="" style="width: 100px"/></span>
							<p style="font-size: 20px;color: white">管理員，您好！</p>
						</div>
						<nav id="nav">
							<ul>
								<li><a href="#top" id="top-linkcontact-link" class="skel-layers-ignoreHref"><span class="icon fa-home" style="font-size: 22px;">首頁</span></a></li>
								<li><a href="#product" id="contact-link" class="skel-layers-ignoreHref"><span class="icon fa-th" style="font-size: 22px;">商品資訊管理</span></a></li>
								<li><a href="#member" id="portfolio-link" class="skel-layers-ignoreHref"><span class="icon fa-th" style="font-size: 22px;">會員資訊管理</span></a></li>
								<li><a href="#travel" id="about-link" class="skel-layers-ignoreHref"><span class="icon fa-th" style="font-size: 22px;">旅遊資訊管理</span></a></li>
								<li><a href="#talk" id="contact-link" class="skel-layers-ignoreHref"><span class="icon fa-th" style="font-size: 22px;">討論版管理</span></a></li>
							</ul>
						</nav>
				</div>
				<div class="bottom">
					<ul class="icons">
						<li><a href="https://www.facebook.com/%E7%B1%B3%E6%B2%83%E8%B2%93%E7%AA%A9-150232665031651/?fref=ts" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
						<li><a href="/index.jsp" class="icon fa-github"><span class="label">米沃貓窩寵物精品網</span></a></li>
					</ul>
				</div>
			</div>
		<!-- 首頁 -->
			<div id="main">
				<section id="top" class="one dark cover">
					<div class="container">
						<header>
							<h2 class="alt"><strong>歡迎登入&nbsp&nbsp&nbsp&nbsp米沃貓窩後台管理系統</strong></h2>
							<h4 class="alt">Welcome to Miwo background Management System.</h4>
						</header>
						<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
					</div>
				</section>
					
		<!--商品清單-->
				<section id="product" class="three">
					<div class="container">
						<header>
							<h2 style="text-align: left">商品清單</h2>
						</header>
					<div>
						<h2 style="color: red; font-size: 30px;text-align: left">${delete_OK}</h2>
					
						<form action="<%=request.getContextPath()%>/shop/shopBackAction_select.action#product" method="post">
							<input type="submit" value="查詢" style="cursor: pointer;font-size: 15px;float: left;margin: 5px">
						</form>
						<input type="submit" value="新增商品" onclick="location.href='<%=request.getContextPath()%>/back_index.jsp#insert'" style="cursor: pointer;text-align: left;font-size: 15px;float: left;margin: 5px;"><br><br>
						<c:choose>
							<c:when test="${not empty select_list}">
								<div style="width:1300px;">

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
									<form action="<%=request.getContextPath()%>/shop/shopBackAction_delete#product" method="post">
										<tr>
											<td style="font-size: 20px;text-align: center;">${sel.PRO_ID}</td>
											<td style="font-size: 20px;text-align: center;">${sel.PRO_ANIMAL}</td>
											<td style="font-size: 20px;text-align: center;">${sel.PRO_KIND}</td>
											<td style="font-size: 20px;text-align: center;">${sel.PRO_NAME}</td>
											<td style="font-size: 20px;text-align: center;">${sel.PRO_PRICE}</td>
											<td style="font-size: 15px;text-align: center;">
											<!-- 直接將參數放置網址列傳入 -->
												<a href='<c:url value="/shop/shopBackAction_select.action?shopbean.PRO_ID=${sel.PRO_ID }
												&shopbean.PRO_ANIMAL=${sel.PRO_ANIMAL }
												&shopbean.PRO_KIND=${sel.PRO_KIND }
												&shopbean.PRO_NAME=${sel.PRO_NAME }
												&shopbean.PRO_PROJECT=${sel.PRO_PROJECT }
												&shopbean.PRO_PRICE=${sel.PRO_PRICE }
												&shopbean.PRO_BUY1=${sel.PRO_BUY1 }
												&shopbean.PRO_BUY2=${sel.PRO_BUY2 }
												&shopbean.PRO_WEIGHT=${sel.PRO_WEIGHT }
												&shopbean.PRO_STOCK=${sel.PRO_STOCK }
												&shopbean.PRO_IMAGE=${sel.PRO_IMAGE }									
												&shopbean.PRO_BODY=${sel.PRO_BODY }
												&use=update#update">				
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
							<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
						</section>
						
			<!--新增商品 -->
					<section id="insert">
						<div class="container">
							<header>
								<h2 style="text-align: left">新增商品</h2>
							</header>
								<h2 style="color: red; font-size: 30px;text-align: left" id="insert_1">${insertOK}</h2>
									<form action="<%=request.getContextPath()%>/shop/shopBackAction_insert#insert" method="post" enctype="multipart/form-data">
										<div style="float: left;">商品名稱：</div><input type="text" name="shopbean.PRO_NAME" value="${shopbean.PRO_NAME}" style="font-size: 16px;width: 50%"><span class="errorInsert">${errors.errorInsertName[0]}</span><br><br>
										<div style="float: left;text-align: center;">商品類型：</div>
											<select id="sel_1" style="font-size: 16px;width: 50%">
												<option>請選擇</option>					
												<option value="汪星人" <c:if test="${shopbean.PRO_ANIMAL eq '汪星人'}">selected="selected"</c:if> >汪星人</option>
												<option value="喵星人" <c:if test="${shopbean.PRO_ANIMAL eq '喵星人'}">selected="selected"</c:if> >喵星人</option>
											</select><span class="errorInsert">${errors.errorInsertAnimal[0]}</span><br><br><input type="text" id="val_1" name="shopbean.PRO_ANIMAL" value="${shopbean.PRO_ANIMAL}">				
										<div style="float: left;">商品種類：</div>
											<select id="sel_2" style="font-size: 16px;width: 50%">
												<option>請選擇</option>
												<option value="主食乾糧" <c:if test="${shopbean.PRO_KIND eq '主食乾糧'}">selected="selected"</c:if> >主食乾糧</option>
												<option value="外出專用" <c:if test="${shopbean.PRO_KIND eq '外出專用'}">selected="selected"</c:if> >外出專用</option>
												<option value="精選罐頭" <c:if test="${shopbean.PRO_KIND eq '精選罐頭'}">selected="selected"</c:if> >精選罐頭</option>
												<option value="嚴選零嘴" <c:if test="${shopbean.PRO_KIND eq '嚴選零嘴'}">selected="selected"</c:if> >嚴選零嘴</option>
												<option value="休閒玩具" <c:if test="${shopbean.PRO_KIND eq '休閒玩具'}">selected="selected"</c:if> >休閒玩具</option>
												<option value="清潔用品" <c:if test="${shopbean.PRO_KIND eq '清潔用品'}">selected="selected"</c:if> >清潔用品</option>
												<option value="生活雜物" <c:if test="${shopbean.PRO_KIND eq '生活雜物'}">selected="selected"</c:if> >生活雜物</option>
												<option value="衣著打扮" <c:if test="${shopbean.PRO_KIND eq '衣著打扮'}">selected="selected"</c:if> >衣著打扮</option>
											</select><span class="errorInsert">${errors.errorInsertKind[0]}</span><br><br>
										<input type="text" id="val_2" name="shopbean.PRO_KIND" value="${shopbean.PRO_KIND}">		
										<div style="float: left;">優惠方案：</div>
											<select id="sel_3" style="font-size: 16px;width: 50%">
												<option>請選擇</option>
												<option value="指定價格" <c:if test="${shopbean.PRO_PROJECT eq '指定價格'}">selected="selected"</c:if> >指定價格</option>
												<option value="買幾送幾" <c:if test="${shopbean.PRO_PROJECT eq '買幾送幾'}">selected="selected"</c:if> >買幾送幾</option>
											</select><span class="errorInsert">${errors.errorInsertProject[0]}</span><br> <br><input type="text" id="val_3" name="shopbean.PRO_PROJECT" value="${shopbean.PRO_PROJECT}">
												<span id="price_5">
												<div style="float: left;">指定價格：</div><input type="text" name="shopbean.PRO_PRICE" id="price_1" value="${shopbean.PRO_PRICE}" style="font-size: 16px;width: 50%"><span class="errorInsert">${errors.errorInsertPrice[0]}</span><br><br>
												</span>		
												<span id="price_6">
												<div style="float: left;">買：</div><input type="number" name="shopbean.PRO_BUY1" id="price_2" value="${shopbean.PRO_BUY1}"><span class="errorInsert">${errors.errorInsert_Buy1[0]}</span>
												<div style="float: left;">送：</div><input type="number" name="shopbean.PRO_BUY2" id="price_3" value="${shopbean.PRO_BUY2}"><span class="errorInsert">${errors.errorInsert_Buy2[0]}</span><br><br>
												</span>	
										<div style="float: left;">商品重量：</div><input type="text" name="shopbean.PRO_WEIGHT" value="${shopbean.PRO_WEIGHT}" style="font-size: 16px;width: 50%"><br><br> 
										<div style="float: left;">庫存數量：</div><input type="text" name="shopbean.PRO_STOCK" value="${shopbean.PRO_STOCK}" style="font-size: 16px;width: 50%"><span class="errorInsert">${errors.errorInsertStock[0]}</span><br><br> 					   
										<div style="float: left;">商品照片：</div><br><input type="file" name="PRO_IMAGE" style="cursor: pointer;font-size: 15px;float: left;"><br><span class="errorInsert">${errors.errorInsertImage[0]}</span><br><br> 				   
										<div style="float: left;">商品介紹：</div><br>
										<textarea id="content" cols="50" rows="6" name="shopbean.PRO_BODY"></textarea><br> 
										<input type="submit" value="新增上架" style="cursor: pointer;font-size: 15px;float: left;">
									</form>
								</div>
									<br><br><br><br><br><br><br><br><br><br><br><br>
								</section>
				<!-- 編輯商品 -->
					<section id="update">
						<div class="container">
							<header>
								<h2 style="text-align: left">編輯商品</h2>
							</header>
								<h2 style="color: red; font-size: 30px;text-align: left">${updateOK}</h2>
							<form action="<%=request.getContextPath()%>/shop/shopBackAction_update#update" method="post" enctype="multipart/form-data">
							<div style="float: left;">商品名稱：</div><input type="text" name="shopbean.PRO_NAME" value="${shopbean.PRO_NAME}" style="font-size: 16px;width: 50%"><span class="errorUpdate">${errors.errorUpdateName[0]}</span><br><br>
							<div style="float: left;">商品編號：</div><input type="text" name="shopbean.PRO_ID" id="update_number" value="${shopbean.PRO_ID}" style="font-size: 16px;width: 50%"><br><br> 
							<div style="float: left;">商品類型：</div>
							<select id="sel_7" style="font-size: 16px;width: 50%">
								<option>請選擇</option>
								<option value="汪星人" <c:if test="${shopbean.PRO_ANIMAL eq '汪星人'}">selected="selected"</c:if> >汪星人</option>
								<option value="喵星人" <c:if test="${shopbean.PRO_ANIMAL eq '喵星人'}">selected="selected"</c:if> >喵星人</option>
								</select><span class="errorUpdate">${errors.errorUpdateAnimal[0]}</span><br><br>
							<input id="val_7" type="text" name="shopbean.PRO_ANIMAL" value="${shopbean.PRO_ANIMAL}">
						<div style="float: left;">商品種類：</div>
							<select id="sel_8" style="font-size: 16px;width: 50%">
								<option>請選擇</option>
								<option value="主食乾糧" <c:if test="${shopbean.PRO_KIND eq '主食乾糧'}">selected="selected"</c:if> >主食乾糧</option>
								<option value="外出專用" <c:if test="${shopbean.PRO_KIND eq '外出專用'}">selected="selected"</c:if> >外出專用</option>
								<option value="精選罐頭" <c:if test="${shopbean.PRO_KIND eq '精選罐頭'}">selected="selected"</c:if> >精選罐頭</option>
								<option value="嚴選零嘴" <c:if test="${shopbean.PRO_KIND eq '嚴選零嘴'}">selected="selected"</c:if> >嚴選零嘴</option>
								<option value="休閒玩具" <c:if test="${shopbean.PRO_KIND eq '休閒玩具'}">selected="selected"</c:if> >休閒玩具</option>
								<option value="生活用品" <c:if test="${shopbean.PRO_KIND eq '生活用品'}">selected="selected"</c:if> >生活用品</option>
								<option value="衣著打扮" <c:if test="${shopbean.PRO_KIND eq '衣著打扮'}">selected="selected"</c:if> >衣著打扮</option>
								</select><span class="errorUpdate">${errors.errorUpdateKind[0]}</span><br><br>
							<input id="val_8" type="text" name="shopbean.PRO_KIND" value="${shopbean.PRO_KIND}"> 
						<div style="float: left;">優惠方案：</div>
							<select id="sel_9" style="font-size: 16px;width: 50%">
								<option>請選擇</option>
								<option value="指定價格" <c:if test="${shopbean.PRO_KIND == '指定價格'}">selected="selected"</c:if> >指定價格</option>
								<option value="買幾送幾" <c:if test="${shopbean.PRO_KIND == '買幾送幾'}">selected="selected"</c:if> >買幾送幾</option>
								</select><span class="errorUpdate">${errors.errorUpdateProject[0]}</span><br><br>
							<input id="val_9" type="text" name="shopbean.PRO_PROJECT" value="${shopbean.PRO_PROJECT}"> 
								<span id="price_55">
								<div style="float: left;">指定價格：</div><input type="text" name="shopbean.PRO_PRICE" id="price_1" value="${shopbean.PRO_PRICE}" style="font-size: 16px;width: 50%"><span class="errorInsert">${errors.errorUpdatePrice[0]}</span>
								<br><br></span>	
								<span id="price_66">
								<div style="float: left;">買：</div><input type="text" name="shopbean.PRO_BUY1" id="price_2" value="${shopbean.PRO_BUY1}" style="font-size: 16px;width: 50%"><span class="errorInsert">${errors.errorUpdate_Buy1[0]}</span>
								<div style="float: left;">送：</div><input type="text" name="shopbean.PRO_BUY2" id="price_3" value="${shopbean.PRO_BUY2}" style="font-size: 16px;width: 50%"><span class="errorInsert">${errors.errorUpdate_Buy2[0]}</span><br><br>
								</span>	
							<div style="float: left;">商品重量：</div><input type="text" name="shopbean.PRO_WEIGHT" value="${shopbean.PRO_WEIGHT}" style="font-size: 16px;width: 50%"><br><br> 	
							<div style="float: left;">庫存數量：</div><input type="text" name="shopbean.PRO_STOCK" value="${shopbean.PRO_STOCK}" style="font-size: 16px;width: 50%"><span class="errorUpdate">${errors.errorUpdateStock[0]}</span><br><br> 
							<div style="float: left;">商品照片：</div><br><input type="file" name="PRO_IMAGE" value="${shopbean.PRO_IMAGE}" style="cursor: pointer;font-size: 15px;float: left;"><br><span class="errorUpdate">${errors.errorUpdateImage[0]}</span><br><br>
							<div style="float: left;">商品介紹：</div><br>
							<textarea name="shopbean.PRO_BODY"  id="content" rows="10" cols="80" ></textarea>
							<script>
								CKEDITOR.replace('shopbean.PRO_BODY', {});
							</script>
						<table>
							<tr>
								<th style="vertical-align: bottom;"></th>
							</tr>
						</table><br>
						<input type="submit" value="送出" style="cursor: pointer;font-size: 15px;float: left;">
					</form>
				</div>
			</section>
			
			
			<!-- 會員資訊管理--請在DIV區塊內編輯即可--section內的id就是該區塊的書籤----分隔線-------------------------------------------->
			<!-- <header>標籤請勿變更，格式部分請參照上方區塊當作模板去做修改，----分隔線------------------------------------------------->
			<!-- 非自己區塊的欄位 請勿變動，如有問題請詢問誌中/資文---分隔線------------------------------------------------------------>	
			<!-- 很重要所以說第一次，很重要所以說第二次，很重要所以說第三次-------------------------------------------------------------->			
			<section id="member" class="three">
				<div class="container">
					<header>
						<h2>會員管理</h2>
					</header>

							

				</div>
				<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
			</section>
			
			
			<!-- 寵物系統是在會員後台管理資訊再串過去，所以牙你跟冠廷在討論一下如何設定--請在DIV區塊內編輯即可--section內的id就是該區塊的書籤----分隔線-------------------------------------------->
			<!-- <header>標籤請勿變更，格式部分請參照上方區塊當作模板去做修改，----分隔線------------------------------------------------->
			<!-- 非自己區塊的欄位 請勿變動，如有問題請詢問誌中/資文---分隔線------------------------------------------------------------>	
			<!-- 很重要所以說第一次，很重要所以說第二次，很重要所以說第三次-------------------------------------------------------------->			
			<section id="member" class="three">
				<div class="container">
					<header>
						<h2>會員管理</h2>
					</header>

							

				</div>
				<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
			</section>
			
			
			


			<!-- 旅遊資訊管理--請在DIV區塊內編輯即可--section內的id就是該區塊的書籤----分隔線-------------------------------------------->
			<!-- <header>標籤請勿變更，格式部分請參照上方區塊當作模板去做修改，----分隔線------------------------------------------------->
			<!-- 非自己區塊的欄位 請勿變動，如有問題請詢問誌中/資文---分隔線------------------------------------------------------------>	
			<!-- 很重要所以說第一次，很重要所以說第二次，很重要所以說第三次-------------------------------------------------------------->	
			<section id="travel" class="four">
				<div class="container">
					<header>
						<h2>旅遊管理</h2>
					</header>


				</div>
				<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
			</section>
					
			<!-- 討論版管理--請在DIV區塊內編輯即可--section內的id就是該區塊的書籤----分隔線-------------------------------------------->
			<!-- <header>標籤請勿變更，格式部分請參照上方區塊當作模板去做修改，----分隔線------------------------------------------------->
			<!-- 非自己區塊的欄位 請勿變動，如有問題請詢問誌中/資文---分隔線------------------------------------------------------------>	
			<!-- 很重要所以說第一次，很重要所以說第二次，很重要所以說第三次-------------------------------------------------------------->	
			<section id="talk" class="four">
				<div class="container">
					<header>
						<h2>討論版管理</h2>
					</header>

				</div>
				<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
			</section>
			
			
			
			
			
			<!-- 此</div> 請勿刪除-->
			</div>

		<!-- Footer -->
			<div id="footer">

				<!-- Copyright -->
					<ul class="copyright">
						<li>&copy; 2016 Copyright All rights reserved Puppy x Kitten. 寵物精品網 | 台北市大安區復興南路一段390號2樓.</li><li><a href="">米沃貓窩寵物精品網</a></li>
					</ul>

			</div>



	</body>
</html>