<%@ page language="java" contentType="text/html; charset=BIG5"
	pageEncoding="BIG5"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
<title>Insert title here</title>
</head>
<body>
	<h3>�|�����</h3>
	<c:if test="${not empty rows}">
		<table>
			<thead>
				<tr>
					<th>�s��</th>
					<th>�b��</th>
					<th>�K�X</th>
					<th>�m�W</th>
					<th>�����Ҧr��</th>
					<th>�ͤ�</th>
					<th>email</th>
					<th>�a�}</th>
					<th>�q��</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="row" items="${rows}">
					<c:param name="MemberBean.MEM_ID" value="${row.MEM_ID}" />
					<c:param name="MemberBean.MEM_ACCOUNT" value="${row.MEM_ACCOUNT}" />
					<c:param name="MemberBean.MEM_PASSWORD" value="${row.MEM_PASSWORD}" />
					<c:param name="MemberBean.MEM_NAME" value="${row.MEM_NAME}" />
					<c:param name="MemberBean.MEM_IDCARD" value="${row.MEM_IDCARD}" />
					<c:param name="MemberBean.MEM_BIRTHDAY" value="${row.MEM_BIRTHDAY}" />
					<c:param name="MemberBean.MEM_EMAIL" value="${row.MEM_EMAIL}" />
					<c:param name="MemberBean.MEM_ADD" value="${row.MEM_ADD}" />
					<c:param name="MemberBean.MEM_PHONE" value="${row.MEM_PHONE}" />
					<tr>
						<td>${row.MEM_ID}</td>
						<td>${row.MEM_ACCOUNT}</td>
						<td>${row.MEM_PASSWORD}</td>
						<td>${row.MEM_NAME}</td>
						<td>${row.MEM_IDCARD}</td>
						<td>${row.MEM_BIRTHDAY}</td>
						<td>${row.MEM_EMAIL}</td>
						<td>${row.MEM_ADD}</td>
						<td>${row.MEM_PHONE}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
</body>
</html>