<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<header>
	<ul id="header_left">
		<li><img src="<%=request.getContextPath()%>/images/smalllogo.png"
			width="20px" /></li>
		<li><a href="<%=request.getContextPath()%>/index.jsp">首頁</a></li>
	</ul>
	<div id="nav_main">
		<div id="menu">
			<div class="item">
				<div class="main">精品購物</div>
				<div class="sub">
					<ul>
						<li><a href='<c:url value="/shop/shopBackAction_goshop.action"/>'>購物中心</a></li>
						<li><a href='<c:url value="/shop/shopBackAction_goshop.action"/>'>品牌介紹</a></li>
						<li><a href='<c:url value="/shop/shopBackAction_goshop.action"/>'>紅利兌換</a></li>
					</ul>
				</div>
			</div>
			<div class="item">
				<div class="main">寵物聯誼</div>
				<div class="sub">
					<ul>
						<li><a href='<c:url value="/petInterceptor/petIndex.action" ></c:url>'>寵物大廳</a></li>
						<li><a href='<c:url value="/petInterceptor/petIndex.action" ></c:url>'>品種介紹</a></li>
						<li><a href='<c:url value="/petInterceptor/petIndex.action" ></c:url>'>幸福宣言</a></li>
					</ul>
				</div>
			</div>
			<div class="item">
				<div class="main">寵物旅遊</div>
				<div class="sub">
					<ul>
						<li><a href="<c:url value="/_300_google.jsp"/>">商家資訊</a></li>
						<li><a href="<c:url value="/_300_google.jsp"/>">熱門景點</a></li>
					</ul>
				</div>
			</div>
			<div class="item">
				<div class="main">討論區</div>
				<div class="sub">
					<ul>
						<li><a href='<c:url value="/article/articleAction.action" ></c:url>'>討論大廳</a></li>
						<li><a href='<c:url value="/article/articleAction.action" ></c:url>'>留言專區</a></li>
					</ul>
				</div>
			</div>

		</div>

	</div>

	<ul id="header_right">
				<li class="buttons" style="border-left: 0; padding-left: 40px;">
					<a class="facebook"
					href="https://www.facebook.com/%E7%B1%B3%E6%B2%83%E8%B2%93%E7%AA%A9-150232665031651/?fref=ts">
						<img src="<%=request.getContextPath()%>/images/css/facebook.png" />
				</a>
				</li>
				<li><a href="">聯絡我們<img
						src="<%=request.getContextPath()%>/images/phone.png" width="15px"></a></li>
						
				<li><a href='<c:url value="/member/shopInterceptor.action" ></c:url>'>購物車<img
						src="<%=request.getContextPath()%>/images/cart.png" width="15px"></a></li>
				<li><a href='<c:url value="/member/Interceptor.action" ></c:url>'>會員中心</a></li>
		<c:choose>
			<c:when test="${session.loginOK==null}">
				<li><a href="<%=request.getContextPath()%>/_500_insert.jsp">註冊</a></li>
				<li><a href="<%=request.getContextPath()%>/_500_login.jsp">登入</a></li>
			</c:when>
			<c:otherwise>
				<li><a href='<c:url value="/login/logoutAction.action" ></c:url>'>登出</a></li>
				<li>${session.loginOK},你好!</li>
			</c:otherwise>
		</c:choose>
	</ul>
</header>
