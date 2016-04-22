<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<c:import url="/import/head.jsp"></c:import>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>米沃貓窩-後台封鎖查詢</title>
</head>
<body style="font-family: 微軟正黑體; font-size: large">
	<c:import url="/import/header.jsp"></c:import>
	<section>
		<article>
			<h1>後台封鎖查詢</h1>
			<font color="black"><b>${noSelectOne}<br></b></font>
			<font color="red"><b>${noSelect}<br></b></font>
			<form action="<%=request.getContextPath()%>/blockadeSelect/blockadeSelectOneAction.action" method="post">
				<input type="text" name="MEM_ID" />
				<input type="submit" value="輸入會員編號搜尋被封鎖會員" />
			</form>
			<table border="1" style="border-collapse: collapse; width: 400px;"
				id="listTable">
				<tr>
					<td style="width: 100px" align='center' valign="middle">被封鎖會員編號</td>
					<td style="width: 100px" align='center' valign="middle">被封鎖會員姓名</td>			
					<td style="width: 100px" align='center' valign="middle">操作</td>					
				</tr>				
				
					<c:forEach var="sort" items="${Selectlist}">
						<tr>
							<td class="imgclick" align='center' valign="middle">${sort.MEM_ID}</td>	
							<td class="imgclick" align='center' valign="middle">${sort.MEM_NAME}</td>						
							<td align='center' valign="middle">							
								<a href='<c:url value="/blockadeSelect/blockadeUpdateAction.action?MEM_ID=${sort.MEM_ID}" ></c:url>'>解除封鎖</a>
							</td>						
						</tr>					
					</c:forEach>
				
			</table>					
		</article>	
	</section>

	<c:import url="/import/footer.jsp"></c:import>
</body>
</html>