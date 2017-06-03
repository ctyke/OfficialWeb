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
						Article management
						<a href="<c:url value="/admin/blog/add"/>" class="btn btn-primary" role="button">Add</a>
					</h1>
				</div>
			</div>

			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading">Article List</div>
						<div class="panel-body">

							<c:forEach items="${articleList}" var="article">

								<div class="col-sm-6 col-md-4 col-lg-2">
									<div class="thumbnail">
										<div class="caption">
											<h3>${article.title}</h3>
											<input type="hidden" id="id" name="id" value="${article.id}" />
											<p>${article.summary}</p>
											<p>
												<a href="<c:url value="/admin/blog/edit-${article.id}"/>" class="btn btn-primary" role="button">Modify</a>
												<a href="<c:url value="/admin/blog/delete-${article.id}"/>" class="btn btn-primary" role="button">Delete</a>
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
