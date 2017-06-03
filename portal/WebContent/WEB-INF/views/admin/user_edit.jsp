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
					<h1 class="page-header">Account management</h1>
				</div>
			</div>

			<div class="row">

				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading">Edit User Account</div>
						<div class="panel-body">
							<div class="row">
								<div class="col-lg-6">
									<form:form method="POST" action="/portal/admin/acc/edit-${user.id}" modelAttribute="user">
										<form:input type="hidden" path="id" id="id" />
										<div class="form-group">
											<label for="name">Name</label>
											<form:input path="name" id="name" cssClass="form-control" />
											<form:errors path="name" cssClass="help-block" />
										</div>
										<div class="form-group">
											<label for="password">Password</label>
											<form:password path="password" id="password" cssClass="form-control" />
											<form:errors path="password" cssClass="help-block" />
										</div>
										<div class="form-group">
											<label for="avatar">Avatar (URL Link)</label>
											<form:input path="avatar" id="avatar" cssClass="form-control" />
											<form:errors path="avatar" cssClass="help-block" />
										</div>

										<button type="submit" class="btn btn-default">Submit Button</button>
										<button type="reset" class="btn btn-default">Reset Button</button>
									</form:form>
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<%@ include file="../parts/js_link.jsp"%>

</body>
</html>
