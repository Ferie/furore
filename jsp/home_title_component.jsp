<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="it">
	<head>
		<jsp:include page="../includes/meta.html"></jsp:include>

		<title>Title Component</title>

		<jsp:include page="../includes/css.html"></jsp:include>

		<!-- SPECIFIC CSS START HERE -->

		<!--generic CSS for Parsys Column container -->
		<link type="text/css" rel="stylesheet" href="../css/ucg_parsys_column.css"/>

		<!--specific CSS for Title Component-->
		<link type="text/css" rel="stylesheet" href="../css/ucg_title_component.css"/>

		<!--imported CSS component-->
		<link type="text/css" rel="stylesheet" href="../css/ucg_text_component.css"/>
		<link type="text/css" rel="stylesheet" href="../css/ucg_link_component.css"/>

		<!-- SPECIFIC CSS END HERE -->

		<link type="text/css" rel="stylesheet" href="../css/retina.css"/>

		<jsp:include page="../includes/js.html"></jsp:include>

		<!-- SPECIFIC JS START HERE -->

		<!--specific JS for Title Component-->
		<script type="text/javascript" src="../js/ucg_title.js"></script>

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

						<div class="example">Title component</div>
						<div class="example">Frontpage SEO Title component</div>
						<div class="panel ucg_seo_title">
							<div class="container">
								<h1>About Us</h1>
							</div>
						</div>

						<div class="example">Single Page SEO Title component</div>
						<div class="panel ucg_seo_title">
							<div class="container">
								<h1 class="singlePage">Events Calendar</h1>
							</div>
						</div>

						<div class="example">Title component full width title only</div>
						<div class="panel ucg_title ucg_no_image">
							<div class="container">
								<div class="ucg_cols ucg_cols_text col-xs-12">
									<div class="ucg_title_container">
										<h2>Who we are, and what we do</h2>
									</div>
									<div class="ucg_subtitle_container">
										<h4></h4>
									</div>
								</div>
								<div class="ucg_cols ucg_cols_image col-xs-12">
									<div class="ucg_title_image_container">
									</div>
								</div>
							</div>
						</div>

						<div class="example">Title component full width with title and subtitle</div>
						<div class="panel ucg_title ucg_no_image">
							<div class="container">
								<div class="ucg_cols ucg_cols_text col-xs-12">
									<div class="ucg_title_container">
										<h2>The recruitment process</h2>
									</div>
									<div class="ucg_subtitle_container">
										<h4>Meet our managers and HR representative</h4>
									</div>
								</div>
								<div class="ucg_cols ucg_cols_image col-xs-12">
									<div class="ucg_title_image_container">
									</div>
								</div>
							</div>
						</div>

						<div class="example">Title component full width with additional image</div>
						<div class="panel ucg_title">
							<div class="container">
								<div class="ucg_cols ucg_cols_text col-xs-12">
									<div class="ucg_title_container">
										<h2>Discover what set us apart</h2>
									</div>
									<div class="ucg_subtitle_container">
										<h4>Students and graduates</h4>
									</div>
								</div>
								<div class="ucg_cols ucg_cols_image col-xs-12">
									<div class="ucg_title_image_container">
										<img src="../img/top_employer.png" width="165" height="68" alt="">
									</div>
								</div>
							</div>
						</div>

						<div class="example">Title components in a CQ5 columns (1/2 - 1/2)</div>
						<div class="parsys_column two-columns-box clearfix">
							<div class="parsys_column two-columns-box-c0">
								<div class="panel ucg_title ucg_no_image">
									<div class="container">
										<div class="ucg_cols ucg_cols_text col-xs-12">
											<div class="ucg_title_container">
													<h2>Our multi-stakeholder approach</h2>
											</div>
											<div class="ucg_subtitle_container">
													<h4>Commercial banking activities</h4>
											</div>
										</div>
										<div class="ucg_cols ucg_cols_image col-xs-12">
											<div class="ucg_title_image_container">
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="parsys_column two-columns-box-c1">
								<div class="panel ucg_title">
									<div class="container">
										<div class="ucg_cols ucg_cols_text col-xs-12">
											<div class="ucg_title_container">
												<h2>Students and graduates</h2>
											</div>
											<div class="ucg_subtitle_container">
											</div>
										</div>
										<div class="ucg_cols ucg_cols_image col-xs-12">
											<div class="ucg_title_image_container">
												<img src="../img/top_employer.png" width="165" height="68" alt="">
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="example">Title components with underscore in a CQ5 columns (1/3 - 1/3 - 1/3)<br>See Careears PSD</div>
						<div class="parsys_column three-columns-box clearfix">
							<div class="parsys_column three-columns-box-c0">
								<div class="panel ucg_title underlined ucg_no_image">
									<div class="container">
										<div class="ucg_cols ucg_cols_text col-xs-12">
											<div class="ucg_title_container">
												<h5>Highlights and reports</h5>
											</div>
											<div class="ucg_subtitle_container">
											</div>
										</div>
										<div class="ucg_cols ucg_cols_image col-xs-12">
											<div class="ucg_title_image_container">
											</div>
										</div>
									</div>
								</div>
								<div class="panel ucg_text">
									<div class="container">
										<div class="ucg_text_container">
											<p>Keep updated and download the latest documents</p>
										</div>
										<div class="panel ucg_linklist">
											<div class="container">
												<ul class="ucg_link_container">
													<li class="ucg_link">
														<a href="javascript:void(0);">Financial highlights</a>
													</li>
													<li class="ucg_link">
														<a href="javascript:void(0);">Financial reports</a>
													</li>
													<li class="ucg_link">
														<a href="javascript:void(0);">Presentations</a>
													</li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="parsys_column three-columns-box-c1">
								<div class="panel ucg_title underlined ucg_no_image">
									<div class="container">
										<div class="ucg_cols ucg_cols_text col-xs-12">
											<div class="ucg_title_container">
											<h5>Private Shareholders</h5>
											</div>
											<div class="ucg_subtitle_container">
											</div>
										</div>
										<div class="ucg_cols ucg_cols_image col-xs-12">
											<div class="ucg_title_image_container">
											</div>
										</div>
									</div>
								</div>
								<div class="panel ucg_text">
									<div class="container">
										<div class="ucg_text_container">
											<p>Learn more about UniCredit’s policies about private shareholders</p>
										</div>
										<div class="panel ucg_linklist">
											<div class="container">
												<ul class="ucg_link_container">
													<li class="ucg_link">
														<a href="javascript:void(0);">Financial highlights</a>
													</li>
													<li class="ucg_link">
														<a href="javascript:void(0);">Financial reports</a>
													</li>
													<li class="ucg_link">
														<a href="javascript:void(0);">Presentations</a>
													</li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="parsys_column three-columns-box-c2">
								<div class="panel ucg_title ucg_no_image">
									<div class="container">
										<div class="ucg_cols ucg_cols_text col-xs-12">
											<div class="ucg_title_container">
												<h6>Contacts</h6>
											</div>
											<div class="ucg_subtitle_container">
											</div>
										</div>
										<div class="ucg_cols ucg_cols_image col-xs-12">
											<div class="ucg_title_image_container">
											</div>
										</div>
									</div>
								</div>
								<div class="panel ucg_linklist">
									<div class="container">
										<ul class="ucg_link_container">
											<li class="ucg_mail">
												<a href="mailto:investorrelations@unicredit.eu">investorrelations@unicredit.eu</a>
											</li>
											<li class="ucg_mail">
												<a href="mailto:azionisti@unicredit.eu">azionisti@unicredit.eu</a>
											</li>
										</ul>
									</div>
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