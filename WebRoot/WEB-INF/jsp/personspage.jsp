<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Persons</h1>

<c:url var="addUrl" value="/service/add" />
<table style="border: 1px solid; width: 500px; text-align:center">
	<thead style="background:#fcf">
		<tr>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Money</th>
			<th colspan="4">Actions</th>
		</tr>
	</thead>
	<tbody>
	<c:forEach items="${persons}" var="person">
			<c:url var="editUrl" value="/service/update?id=${person.id}" />
			<c:url var="deleteUrl" value="/service/delete?id=${person.id}" />
			<c:url var="getUrl" value="/service/get?id=${person.id}" />
			<tr>
				<td><c:out value="${person.firstName}" /></td>
				<td><c:out value="${person.lastName}" /></td>
				<td><c:out value="${person.money}" /></td>
				<td><a href="${editUrl}">Edit</a></td>
				<td><a href="${deleteUrl}">Delete</a></td>
				<td><a href="${addUrl}">Add</a></td>
				<td><a href="${getUrl}">Get</a></td>
			</tr>
	</c:forEach>
	</tbody>
</table>

<c:if test="${empty persons}">
	There are currently no persons in the list. <a href="${addUrl}">Add</a> a person.
</c:if>

</body>
</html>