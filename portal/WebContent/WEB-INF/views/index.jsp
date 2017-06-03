<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width; initial-scale=1.0" />
	<title>CtyKe Offical</title>
	<link href='http://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/index.css"/>">
	
</head>
<body onload="init()">
	
	<div id="container">
		<nav>
			<div id="menu_small">
				<div id="menu">
					<a href="#" id="logo">CtyKe</a>
					<a href="#" ><img src="img/Menu_icon.png"></a>
				</div>
				<div id="menu_item">
					<ul>
						<li><a href="#">Vision</a></li>
						<li><a href="/portal/admin/login/">Admin</a></li>
						<li><a href="/portal/blog/">Blog</a></li>

					</ul>
				</div>
			</div>
			<div id="menu_big">
				<a href="#" id="logo">CtyKe</a>
				<ul>
					<li><a href="#">Vision</a></li>
					<li><a href="/portal/admin/login/">Admin</a></li>
					<li><a href="/portal/blog/">Blog</a></li>
				</ul>
			</div>
		</nav>
		<div id="content">
			
			<span id="banner"></span>
		</div>
	</div>
	
	<script src="<c:url value="/resources/js/jquery.min.js"/>"></script>
	<script src="<c:url value="/resources/js/main.js"/>"></script>
	<script src="<c:url value="/resources/js/menu.js"/>"></script>
</body>
</html>
