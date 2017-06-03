<%@ include file="../parts/taglib.jsp"%>

<!DOCTYPE HTML>
<html lang="zh-cmn-Hant">

<head>

<%@ include file="../parts/head_meta.jsp"%>
<%@ include file="../parts/head_link.jsp"%>
<link href="<c:url value="/resources/css/font-awesome.min.css"/>" rel="stylesheet">
<link href="<c:url value="/resources/css/editor.css"/>" type="text/css" rel="stylesheet" />
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
						<div class="panel-heading">Create A New Account</div>
						<div class="panel-body">
							<div class="row">
								<div class="col-lg-12">
									<form:form method="POST" action="/portal/admin/blog/add" modelAttribute="article">
										<form:input type="hidden" path="id" id="id" />
										<div class="form-group">
											<label for="title">Title</label>
											<form:input path="title" id="title" cssClass="form-control" />
											<form:errors path="title" cssClass="help-block" />
										</div>
										<div class="form-group">
											<label for="coverImg">Cover Images URL</label>
											<form:input path="coverImg" id="coverImg" cssClass="form-control" />
											<form:errors path="coverImg" cssClass="help-block" />
										</div>
										<div class="form-group">
											<label for="summary">Summary</label>
											<form:input path="summary" id="summary" cssClass="form-control" />
											<form:errors path="summary" cssClass="help-block" />
										</div>

										<form:textarea path="content" id="content" cssClass="txtEditor" />
										<form:errors path="content" cssClass="help-block" />

										<button type="submit" id="textContent" class="btn btn-default">Submit Button</button>
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
	<script src="<c:url value="/resources/js/editor.js"/>"></script>
	<script>
		$(document).ready(function() {
			$(".txtEditor").Editor();

			$("#textContent").click(function() {

				alert($(".txtEditor").Editor("getText"));
				$("textarea.txtEditor").val($(".txtEditor").Editor("getText"));
				alert($("textarea.txtEditor").val());
			});
		});
	</script>
</body>
</html>

