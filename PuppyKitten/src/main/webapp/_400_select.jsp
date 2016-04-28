<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
	td{
		width: 100px;
		word-break:break-all;
	}
	.myButton{
background:rgba(250, 235, 215, 0.4);
width: 150px;
height:35px;
font-size:16px;
font-family: "微軟正黑體";
margin-right: 10px;
}	
</style>
<c:import url="/import/head.jsp"></c:import>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>米沃貓窩-個人寵物資訊</title>
</head>
<body style="font-family: 微軟正黑體; font-size: large">
	<c:import url="/import/header.jsp"></c:import>
	<section style="overflow: hidden;">
		<article>
			<h1 style="color:#400000;font-size:40px">個人寵物資訊</h1>
			<button class="myButton">
				<a href="<%=request.getContextPath()%>/_400_index.jsp">回寵物大廳</a>
			</button>
			<button class="myButton">	
				<a href='<c:url value="/petUpdate/petUpdateAction.action" ></c:url>'>修改寵物資訊</a>
			</button><br><br>
			<table style="border-collapse: collapse;width:700px;background:rgba(250, 235, 215, 0.4); border-radius:10px;" >
				<tr>
					<td style="width:300" rowspan="2" align="center" valign="middle"><img src="${petImg}" width="250" height="250" style="border-radius:10px;padding-left:25px"></td>
					<td style="width:450px;line-height:30px;padding-left:30px;font-size:20px;font-weight: bloder;">
						寵物編號：${bean.PET_ID }<br>
						會員編號：${bean.PET_OWN_ID}<br>
						名字：${bean.PET_NAME }<br>
						年齡：${PET_AGE}<br>
						體重：${bean.PET_WEIGHT}kg<br>
						種類：${bean.PET_KING}<br>
						品種：${Sortbean.PET_SORT_NAME}<br>
						性別：${bean.PET_SEX}						
					</td>					
				</tr>				
			</table><br>
			<table border="0" style="border-collapse: collapse;width:700px;background:rgba(250, 235, 215, 0.4); border-radius:10px;" >											
				
				<tr>															
					<td align='center' valign="middle" style="word-break: break-all;font-size:20px;"><pre>${bean.PET_BODY}</pre></td>
				</tr>
			</table>		
		</article>	
	</section>

	<c:import url="/import/footer.jsp"></c:import>
</body>
</html>