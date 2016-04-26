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
a.link {
font-size:20px;
}
a.link:hover{ 
color:#ff0000;           // 滑鼠指到超連結時，文字變化的顏色 
text-decoration:none;   // 不顯示超連結的底線 
position: relative; /* 當滑鼠經過超連結時，超連結往右下位移1像素 */
top: 1px;
left: 1px;
font-size:25px; 
}


</style>
</head>
<body style="font-family: 微軟正黑體; font-size: large">
<c:import url="/import/header.jsp"></c:import>
<section>
	<article style="width: 1500px;">
		<h1>寵物聯誼(寵物大廳)</h1>
	<li style="font-size: 20px;"><a class="link" href='<c:url value="/petFriendship/petFriendshipAction.action" ></c:url>'>寵物配對系統</a></li><br>
	<li style="font-size: 20px;"><a class="link" href='<c:url value="/petSelect/PetSelectAction.action" ></c:url>'>查詢寵物資訊</a></li><br>
	<li style="font-size: 20px;"><a class="link" href='<c:url value="/petRelation/petRelationaAction.action" ></c:url>'>對我感興趣</a></li><br>
	<li style="font-size: 20px;"><a class="link" href='<c:url value="/petRelationAll/petRelationaAllLikeAction.action" ></c:url>'>互相感興趣</a></li><br>
	
	</article>	
</section>
	
<c:import url="/import/footer.jsp"></c:import>
</body>
</html>