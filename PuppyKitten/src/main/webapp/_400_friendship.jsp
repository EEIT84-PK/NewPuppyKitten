<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>
<script type="text/javascript">
$(function() {
	$( "#dialog" ).hide();
	$("button").click(function(){
			$( "#dialog" ).show();
			$( "#dialog" ).dialog({ 
				closeOnEscpe:true//鍵盤按下ESC會關閉式窗
		    });		  
		});
	
    
});
</script>
<style type="text/css">	
	article.article{
		text-align:center;		
	}			
</style>
<c:import url="/import/head.jsp"></c:import>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>米沃貓窩-配對系統</title>
</head>
<body style="font-family: 微軟正黑體; font-size: large">
	<c:import url="/import/header.jsp"></c:import>
	<section>
		<article class="article">
		
			<h2>寵物聯誼(配對系統)</h2>
			<c:if test="${match !=null}">
				<a class="link" href='<c:url value="/petRelationAll/petRelationaAllLikeAction.action" ></c:url>'>和${match}配對成功，看看誰和我互相感興趣</a><br>
			</c:if>			
			<c:if test="${blockade !=null}">
				<font color="red"><b>檢舉${petBean.PET_OWN_ID}${blockade}<br></b></font>
			</c:if>		
			<a class="link" href='<c:url value="/petLike/PetLikeAction.action" ></c:url>'><img src="<%=request.getContextPath()%>/images/_400/YES.png" width="150" height="60"></a>
			<a class="link" href='<c:url value="/petNotLike/PetNotLikeAction.action" ></c:url>'><img src="<%=request.getContextPath()%>/images/_400/NO.png" width="150" height="60"></a>
			<div style="padding-left: 330px;">
				<table >				
					<tr>
					<td class="td"><img src="${petImg}" width="300" height="300"></td>
					<td class="td" style="background:rgba(255, 255, 215, 0.8);width: 150px;word-break:break-all;
		text-align:left;">${PET_AGE}<b style="font-weight: bloder;">歲</b>，${petBean.PET_SEX}<BR>
					<b style="font-weight: bloder;">名字：</b>${petBean.PET_NAME } <br>
					<b style="font-weight: bloder;">體重：</b>${petBean.PET_WEIGHT}kg<BR>
					<b style="font-weight: bloder;">種類：</b>${petBean.PET_KING}<br>
					<b style="font-weight: bloder;">品種：</b>${Sortbean.PET_SORT_NAME}<BR>
					<b style="font-weight: bloder;">介紹：</b>${petBean.PET_BODY}</td>			
					
				</table>
				<button type="button" id="button">檢舉此人</button><br>				
				
			</div>
						<div id="dialog" title="封鎖原因">
					   		<form action="<%=request.getContextPath()%>/petBlockade/petBlockadeAction.action">
					   			遭檢舉人之會員編號：<input type="text" name="BLOCKADE_MENID" value="${petBean.PET_OWN_ID}" readonly="readonly"><BR>
					   			<input name="blockadeBean.BLOCKADE_THING" type="radio" value="圖文不符" checked="checked">圖文不符<br>
								<input name="blockadeBean.BLOCKADE_THING" type="radio" value="廣告成分" >廣告成分<br>
								<input name="blockadeBean.BLOCKADE_THING" type="radio" value="色情成分" >色情成分<br>
								<DIV style="text-align:right;"><input type="submit" value="送出"/></DIV>								
					   		</form>
						</div>	
		</article>		
	</section>

	<c:import url="/import/footer.jsp"></c:import>	
</body>
</html>