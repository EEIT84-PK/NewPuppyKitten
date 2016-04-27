<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<c:import url="/import/head.jsp"></c:import>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>米沃貓窩-後台封鎖</title>
</head>
<body style="font-family: 微軟正黑體; font-size: large">
	<c:import url="/import/header.jsp"></c:import>
	<section>
		<article>
			<h1>後台封鎖</h1>
			<a href='<c:url value="/blockadeSelect/blockadeSelectAction.action" ></c:url>'>查看已被封鎖名單</a><BR>
			<font color="red"><b>${noBlock}<br></b></font>
			<table border="1" style="border-collapse: collapse; width: 400px;"
				id="listTable">
				<tr>
					<td style="width: 100px" align='center' valign="middle">會員編號</td>
					<td style="width: 100px" align='center' valign="middle">檢舉內容</td>
					<td style="width: 100px" align='center' valign="middle">操作</td>					
				</tr>				
				
					<c:forEach var="sort" items="${Blocklist}">
						<tr>
							<td class="imgclick" align='center' valign="middle">${sort.BLOCKADE_MENID}</td>
							<td align='center' valign="middle">${sort.BLOCKADE_THING}</td>
							<td align='center' valign="middle">
							<a href='<c:url value="/petBlockade/blockadeInsertAction.action?MEM_ID=${sort.BLOCKADE_MENID}" ></c:url>'>確定封鎖</a><BR>
							<a href='<c:url value="/petBlockade/blockadeDeleteAction.action?MEM_ID=${sort.BLOCKADE_MENID}" ></c:url>'>解除檢舉</a>
							</td>						
						</tr>					
					</c:forEach>
				
			</table>
								
		</article>	
	</section>

	<c:import url="/import/footer.jsp"></c:import>
</body>
</html>