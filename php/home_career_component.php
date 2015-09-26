<!DOCTYPE html>
<html lang="it">
	<head>
		<?php require_once("../includes/meta.html"); ?>

		<title>Career Component</title>

		<?php require_once("../includes/css.html"); ?>

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

		<?php require_once("../includes/js.html"); ?>

		<!-- SPECIFIC JS START HERE -->

		<!--specific JS for Career Component-->
		<script type="text/javascript" src="../js/ucg_career_component.js"></script>

		<!-- SPECIFIC JS END HERE -->
	</head>

	<body>
		<?php require_once("../includes/message.html"); ?>

		<?php require_once("../includes/header.html"); ?>

		<?php require_once("../includes/search.html"); ?>

		<div class="body-container-table">
			<div class="body-container-cell">
				<?php require_once("../includes/sidebar.html"); ?>
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

						<?php require_once("../includes/footer.html"); ?>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>