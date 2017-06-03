<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html lang="zh-cmn-Hant">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">


<title>CTYKE</title>

<link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet">
<link href="<c:url value="/resources/css/theme.css"/>" rel="stylesheet">
</head>
<body>

	<nav id="mainNav" class="navbar navbar-default navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span>
					Menu <i class="fa fa-bars"></i>
				</button>
				<a class="navbar-brand page-scroll" href="index.html">CTYKE</a>
			</div>


			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right">
					<li>
						<a class="page-scroll" href="postlist.html">願景</a>
					</li>
					<li>
						<a class="page-scroll" href="postlist.html">科技</a>
					</li>
					<li>
						<a class="page-scroll" href="postlist.html">設計</a>
					</li>
					<li>
						<a class="page-scroll" href="postlist.html">其他</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>

	<div id="wrapper" class="toggled">

		<div id="wrapper-sidebar">
			<ul class="sidebar-nav">
				<li class="sidebar-brand">
					<a href="#">CTYKE</a>
				</li>
				<li>
					<a href="#">願景</a>
				</li>
				<li>
					<a href="#">科技</a>
				</li>
				<li>
					<a href="#">設計</a>
				</li>
				<li>
					<a href="#">其他</a>
				</li>
			</ul>
		</div>

		<div id="wrapper-content">
			<div class="header">
				<div class="row">
					<div class="col-lg-12">
						<div class="card no-padding">
							<div class="header-bar">
								<div class="header-bar-mask">
									<div class="header-content">
										CTYKE<br>放下過去，活在當下，計劃未來
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div id="container-main">

				<div class="row">

					<c:forEach items="${articleList}" var="article">
						<div class="col-sm-6">
							<div class="card">
								<div class="card-block">
									<h2 class="card-desc">
										<span class="glyphicon glyphicon-calendar" aria-hidden="true"> </span>
										${article.createDate }
									</h2>
									<h2 class="card-title">
										<a href="/portal/blog/${article.id }">${article.title }</a>
									</h2>
									<p class="card-text">${article.summary }</p>
								</div>
								<c:if test="${article.coverImg !=null && article.coverImg !=''}">
									<img class="card-coverImg" src="${article.coverImg}" alt="...">
								</c:if>

							</div>
							<hr>
						</div>
					</c:forEach>


				</div>
			</div>

			<div id="footer">
				<div class="row">
					<div class="col-lg-6">
						<div class="card">
							<div class="label label-default">最近</div>
							<ul class="list-group ver-padding">
								<li class="list-group-item">
									<span class="badge">14</span>
									Cras justo odio
								</li>
								<li class="list-group-item">
									<span class="badge">14</span>
									Cras justo odio
								</li>
								<li class="list-group-item">
									<span class="badge">14</span>
									Cras justo odio
								</li>
							</ul>
						</div>
					</div>
					<div class="col-lg-6">
						<div class="card">
							<div class="label label-default">熱鬥</div>

							<div class="list-link">
								<a href="#">CTYKE 的 Blog 終於開通了</a>
								<a href="#">雖然現在是沒什麼成功的產品</a>
								<a href="#">因此多多關注我們CTYKE吧</a>
								<a href="#">新平台成立</a>
							</div>
						</div>
					</div>
				</div>

				<h4 class="section-heading">Copyright © CTYKE Blog 2015-2017</h4>
			</div>
		</div>


	</div>


	<script src="<c:url value="/resources/js/jquery-3.2.1.min.js"/>"></script>
	<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
	<script src="<c:url value="/resources/js/theme.js"/>"></script>
</body>
</html>
