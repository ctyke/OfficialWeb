<%@ include file="../parts/taglib.jsp"%>

<!DOCTYPE HTML>
<html lang="zh-cmn-Hant">

<head>

<%@ include file="../parts/head_meta.jsp"%>
<link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet">
<link href="<c:url value="/resources/css/login.css"/>" rel="stylesheet">
</head>
<body class="login-background">

	<div class="logic-area">
		<div class="card login-form">
			<h2>Login Page</h2>
			<br>
			<form:form method="POST" action="/portal/admin/login/" modelAttribute="user">

				<div class="form-group">
					<label for="Username">Username</label>
					<form:input path="username" id="username" cssClass="form-control" />
				</div>
				<div class="form-group">
					<label for="Password">Password</label>
					<form:password path="password" id="password" cssClass="form-control" />
				</div>
				<button type="submit" class="btn btn-default">Submit</button>
			</form:form>
		</div>

	</div>
</body>
</html>

