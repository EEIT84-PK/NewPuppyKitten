<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<c:import url="/import/head.jsp"></c:import>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>米沃貓窩(寵物大廳)</title>
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<style type="text/css">

/* .myButton{ */
/*   line-height:44px; */
/*   height:44px; */
/*   width:177px; */
/*   color:#854304; */
/*   background-color:#77b55a; */
/*   font-size:22px; */
/*   font-weight:normal; */
/*   font-family:Microsoft YaHei; */
/*   background:-webkit-gradient(linear, left top, left bottom, color-start(0.05, #e8c65e), color-stop(1, #e8c65e)); */
/*   background:-moz-linear-gradient(top, #e8c65e 5%, #e8c65e 100%); */
/*   background:-o-linear-gradient(top, #e8c65e 5%, #e8c65e 100%); */
/*   background:-ms-linear-gradient(top, #e8c65e 5%, #e8c65e 100%); */
/*   background:linear-gradient(to bottom, #e8c65e 5%, #e8c65e 100%); */
/*   background:-webkit-linear-gradient(top, #e8c65e 5%, #e8c65e 100%); */
/*   filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#e8c65e', endColorstr='#e8c65e',GradientType=0); */
/*   border:1px solid #f4e1bc; */
/*   -webkit-border-top-left-radius:6px; */
/*   -moz-border-radius-topleft:6px; */
/*   border-top-left-radius:6px; */
/*   -webkit-border-top-right-radius:6px; */
/*   -moz-border-radius-topright:6px; */
/*   border-top-right-radius:6px; */
/*   -webkit-border-bottom-left-radius:6px; */
/*   -moz-border-radius-bottomleft:6px; */
/*   border-bottom-left-radius:6px; */
/*   -webkit-border-bottom-right-radius:6px; */
/*   -moz-border-radius-bottomright:6px; */
/*   border-bottom-right-radius:6px; */
/*   -moz-box-shadow:0px 10px 14px -7px #8b8e89; */
/*   -webkit-box-shadow:0px 10px 14px -7px #8b8e89; */
/*   box-shadow:0px 10px 14px -7px #8b8e89; */
/*   text-align:center; */
/*   display:inline-block; */
/*   text-decoration:none; */
/* } */
/* .myButton:hover{ */
/*   background-color:#72b352; */
/*   background:-webkit-gradient(linear, left top, left bottom, color-start(0.05, #e8c65e), color-stop(1, #e8c65e)); */
/*   background:-moz-linear-gradient(top, #e8c65e 5%, #e8c65e 100%); */
/*   background:-o-linear-gradient(top, #e8c65e 5%, #e8c65e 100%); */
/*   background:-ms-linear-gradient(top, #e8c65e 5%, #e8c65e 100%); */
/*   background:linear-gradient(to bottom, #e8c65e 5%, #e8c65e 100%); */
/*   background:-webkit-linear-gradient(top, #e8c65e 5%, #e8c65e 100%); */
/*   filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#e8c65e', endColorstr='#e8c65e',GradientType=0); */
/* } */

.myButton{
background:rgba(250, 235, 215, 0.4);
width: 150px;
height:35px;
font-size:16px;
font-family: "微軟正黑體";
margin-right: 10px;
}

</style>
</head>
<body style="font-family: 微軟正黑體; font-size: large">
<c:import url="/import/header.jsp"></c:import>
<section>
	<article style="width: 1500px;">
		<h1 style="color:#400000">寵物聯誼(寵物大廳)</h1>
		<button class="myButton">
			<a class="link" href='<c:url value="/petFriendship/petFriendshipAction.action" ></c:url>'>寵物配對系統</a><br>
		</button>
		<button class="myButton">
			<a class="link" href='<c:url value="/petSelect/PetSelectAction.action" ></c:url>'>查詢寵物資訊</a><br>
		</button>
		<button class="myButton">
			<a class="link" href='<c:url value="/petRelation/petRelationaAction.action" ></c:url>'>對我感興趣</a><br>
		</button>
		<button class="myButton">	
			<a class="link" href='<c:url value="/petRelationAll/petRelationaAllLikeAction.action" ></c:url>'>互相感興趣</a><br>
		</button>	
	
	</article>	
</section>
	
<c:import url="/import/footer.jsp"></c:import>
</body>
</html>