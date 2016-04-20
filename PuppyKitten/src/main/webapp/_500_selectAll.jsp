<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>米沃貓窩-管理者資料查詢</title>

<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/tablesorter-master/js/jquery.tablesorter.js">

</head>

<body>
	<form action="<%=request.getContextPath()%>/login/selectAllAction.action"
		method="get">
		<input type="submit" value="查詢" style="float: left; height: 25px">
	</form>
	<c:choose>
		<c:when test="${not empty select}">
		<div style="border-bottem: 1px solid #DDDDDD;">
			<b style="font-size:25px;">會員資料</b><b id="success" style="font-size:20px;color:red"></b>
			<br>
			<br>
		</div>
		<table id="datable" border="1"
			style="border-collpace: collapse; width: 1200px">
			<thead>
				<tr style="background: rgba(255, 255, 215, 0.4);">
					<th>會員編號</th>
					<th>會員帳號</th>
					<th>會員姓名</th>
					<th>會員身分證</th>
					<th>會員email</th>
					<th>會員生日</th>
					<th>會員電話</th>
					<th>會員地址</th>
					</tr>
			</thead>
			<tbody>
				<c:forEach var="member" items="${select}">
				<tr>
					<td style="width: 110px">${member.MEM_ID}</td>
					<td style="width: 50px">${member.MEM_ACCOUNT }</td>
					<td style="width: 50px">${member.MEM_NAME }</td>
					<td style="width:100px">${member.MEM_IDCARD }</td>
					<td style="width:100px">${member.MEM_EMAIL }</td>
					<td style="width:150px"><fmt:formatDate pattern="yyyy-MM-dd" value="${member.MEM_BIRTHDAY}"/></td>
					<td style="width: 100px">${member.MEM_PHONE }</td>
					<td style="width: 400px">${member.MEM_ADD }</td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
		</c:when>
	</c:choose>
</body>
</html>