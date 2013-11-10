<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<c:url value="css/bootstrap.css" var="cssUrl" />
<c:url value="/" var="homeUrl" />
<c:url value="/logout" var="logoutUrl"/>
<c:url value="/account/home.do" var="accountUrl" />
<c:url value="/wishlist/home.do" var="wishlistUrl" />
<link rel="stylesheet" type="text/css" href="${cssUrl}" />

<script src="js/jquery-2.0.3.min.js"></script>
<script src="js/angular.min.js"></script>
<script src="js/bootstrap.min.js"></script>

<title>Secret Santa: ${pageTitle}</title>
</head>
<body>
<div id="header">
<div class="username">
<sec:authorize access="isAuthenticated()">
        Welcome, <strong><sec:authentication property="principal.username" /></strong>
</sec:authorize>
</div>
<ul>
	<li><a href="${homeUrl}">Home</a></li>	
	<li><a href="${logoutUrl}">Log Out</a></li>
	<li><a href="${accountUrl}">My Account</a></li>
	<li><a href="${wishlistUrl}">My Wishlist</a></li>

</ul>
<br />
</div>