<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="it">
	<head>
		<jsp:include page="../includes/meta.html"></jsp:include>

		<title>Career Component</title>

		<jsp:include page="../includes/css.html"></jsp:include>

		<!-- SPECIFIC CSS START HERE -->

		<!--generic CSS for Parsys Column container-->
		<link type="text/css" rel="stylesheet" href="../css/ucg_parsys_column.css"/>

		<!--specific CSS for Career Component-->
		<link type="text/css" rel="stylesheet" href="../css/ucg_career_component.css"/>

		<!--imported CSS component-->
		<link type="text/css" rel="stylesheet" href="../css/form.css"/>
		<link type="text/css" rel="stylesheet" href="../css/ucg_link_component.css"/>

		<!-- SPECIFIC CSS END HERE -->

		<link type="text/css" rel="stylesheet" href="../css/retina.css"/>

		<jsp:include page="../includes/js.html"></jsp:include>

		<!-- SPECIFIC JS START HERE -->

		<!--specific JS for Career Component-->
		<script type="text/javascript" src="../js/ucg_career_component.js"></script>

		<!-- SPECIFIC JS END HERE -->
	</head>

	<body>
		<jsp:include page="../includes/message.html"></jsp:include>

		<jsp:include page="../includes/header.html"></jsp:include>

		<jsp:include page="../includes/search.html"></jsp:include>

		<div class="body-container-table">
			<div class="body-container-cell">
				<jsp:include page="../includes/sidebar.html"></jsp:include>
			</div>

			<div class="body-container-cell">
				<div id="mainContainer">
					<div class="mainContainer-wrapper">

						<!-- PAGE STARTS HERE -->

						<div class="example">Career Component</div>
						<div class="example">Career Component Full page width</div>
						<div class="panel ucg_career" data-history-name="historyOne">
							<div class="container">
								<div class="ucg_career_intro">
									If you are looking for employment opportunities in <a href="javascript:void(0);">Italy</a> or <a href="javascript:void(0);">Austria</a>, start here:
								</div>
								<div class="ucg_job_opportunities col-xs-12 col-sm-8 col-md-6 with-cross">
									<input type="text" class="keywords form-control" name="keywords" placeholder="Search job opportunities in Italy and Austria" data-placeholder="Search job opportunities in Italy and Austria" data-mobile-placeholder="Search job opportunities">
									<div class="keys cross"><a href="javascript:void(0);"></a></div>
								</div>
								<div class="ucg_profile clearfix">
									<div class="panel ucg_linklist">
										<div class="container">
											<ul class="ucg_link_container">
												<li class="ucg_internal_link">
													<a href="javascript:void(0);">Create your profile and upload your CV</a>
												</li>
											</ul>
										</div>
									</div>
									<div class="panel ucg_linklist">
										<div class="container">
											<ul class="ucg_link_container accessProfile">
												<li class="ucg_internal_link">
													<a href="javascript:void(0);">Access your profile</a>
												</li>
											</ul>
										</div>
									</div>
								</div>
							</div>
							<div class="panel ucg_linklist link_other_countries">
								<div class="container">
									<ul class="ucg_link_container">
										<li class="ucg_internal_link">
											<a href="javascript:void(0);">Look for job opportunities in other countries</a>
										</li>
									</ul>
								</div>
							</div>
						</div>

						<!-- PAGE ENDS HERE -->

						<jsp:include page="../includes/footer.html"></jsp:include>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>