<!-- Rendering Books practice assignment tasks below -->

<!-- create a new .jsp file in webapp/WEB-INF called show.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />

<title>Show Expense</title>
</head>
<body>

	<div class="container">
		<div class="navbar">
			<h1 style="color:rgb(9,84,148)">Expense Details</h1>
			<a href="/expenses">Go back</a>
		</div>
		<div>
			<p>Expense Name: <c:out value="${expense.name}"/></p>
			<p>Expense Description: <c:out value="${expense.description}"/></p>
			<p>Vendor: <c:out value="${expense.vendor}"/></p>
			<p>Amount Spent: $<fmt:formatNumber type="number" minFractionDigits="2" value="${expense.amount}"/></p>
		</div>
		
	</div>

</body>
</html>