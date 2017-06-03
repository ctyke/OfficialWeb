<%@ include file="../parts/taglib.jsp"%>

<!DOCTYPE HTML>
<html lang="zh-cmn-Hant">

<head>

<%@ include file="../parts/head_meta.jsp"%>
<%@ include file="../parts/head_link.jsp"%>

</head>
<body>

	<div id="wrapper">

		<%@ include file="../parts/admin_nav.jsp"%>

		<div id="page-wrapper" style="min-height: 1000px;">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">
						Account management
						<a href="<c:url value="/admin/acc/add"/>" class="btn btn-primary" role="button">Add</a>
					</h1>
				</div>
			</div>

			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading">User List</div>
						<div class="panel-body">

							<c:forEach items="${userlist}" var="user">

								<div class="col-sm-6 col-md-4 col-lg-2">
									<div class="thumbnail">
										<img src="${user.avatar}" alt="...">
										<div class="caption">
											<h3>${user.name}</h3>
											<input type="hidden" id="id" name="id" value="${user.id}" />
											<p>Username ${user.username}</p>
											<p>
												<a href="<c:url value="/admin/acc/edit-${user.id}"/>" class="btn btn-primary" role="button">Modify</a>
												<a href="<c:url value="/admin/acc/delete-${user.id}"/>" class="btn btn-primary" role="button">Delete</a>
											</p>
										</div>
									</div>
								</div>

							</c:forEach>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<%@ include file="../parts/js_link.jsp"%>

</body>
</html>
