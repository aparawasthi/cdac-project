<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Administrator Panel</title>
</head>
<body>
	<h3>Last Action Status : ${requestScope.agent_reg}</h3>
	<h3>Last Updated Status : ${requestScope.agent_update}</h3>
	<h3>Last product Status : ${requestScope.product_status}</h3>
	<h3 align="center">Agent List</h3>
	<table>
		<c:forEach var="agent" items="${requestScope.agent_list}">
			<tr>
			<td>${agent.name}</td>
				<td>${agent.email}</td>
				<td>${agent.companyName}</td>
				<td>${agent.password}</td>
				<td><a href="<spring:url value='update/${agent.id}'/>">Update Agent</a></td>
				<td><a href="<spring:url value='product/${agent.id}'/>">View products</a></td>
				<td><a href="<spring:url value='add/${agent.id}'/>">Add product</a></td>
				<%-- <td><a href="<spring:url value='delete/${agent.id}'/>">Remove Agent</a></td> --%>
			</tr>
		</c:forEach>
	</table>
	<h3 align="center">
		<a href="register">Add Agent</a>
	</h3>
	<h3 align="center">
		<a href="logout">Logout</a>
	</h3>
</body>
</html>