<!DOCTYPE html>
<html lang="it">
	<head>
		<?php require_once("../includes/meta.html"); ?>

		<title>Breadcrumb Component</title>

		<?php require_once("../includes/css.html"); ?>

		<!-- SPECIFIC CSS START HERE -->

		<!--generic CSS for Parsys Column container-->
		<link type="text/css" rel="stylesheet" href="../css/ucg_parsys_column.css"/>

		<!--specific CSS for Breadcrumb Component-->
		<link type="text/css" rel="stylesheet" href="../css/ucg_breadcrumb.css"/>
		<link type="text/css" rel="stylesheet" href="../css/ucg_breadcrumb_links.css"/>
		<link type="text/css" rel="stylesheet" href="../css/ucg_sharing.css"/>

		<!-- SPECIFIC CSS END HERE -->

		<link type="text/css" rel="stylesheet" href="../css/retina.css"/>

		<?php require_once("../includes/js.html"); ?>

		<!-- SPECIFIC JS START HERE -->

		<!--specific JS for Sharing Component-->
		<script type="text/javascript" src="../js/ucg_sharing.js"></script>

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

						<div class="example">Breadcrumb Component</div>
						<div class="example">Breadcrumb Component Full page width</div>
						<div class="parsys contentpagewelcome-parsys">
							<div class="section">
								<!-- BREADCRUMB -->
								<div class="panel ucg_breadcrumb">
									<div class="container">
										<div class="panel ucg_breadcrumb_crumbs col-xs-12">
											<div class="container">
												<ul>
													<li><a href="javascript:void(0);">Breadcrum first level</a></li>
													<li><a href="javascript:void(0);">Second level</a></li>
													<li><a href="javascript:void(0);">Third level</a></li>
													<li>Fourth level</li>
												</ul>
											</div>
										</div>
										<div class="clear"></div>
									</div>
								</div>
								<!-- BREADCRUMB -->
							</div>
						</div>
						<div class="example">Breadcrumb Component Full page width sharing component</div>
						<div class="parsys contentpagewelcome-parsys">
							<div class="section">
								<!-- BREADCRUMB -->
								<div class="panel ucg_breadcrumb">
									<div class="container">
										<div class="panel ucg_breadcrumb_crumbs col-xs-12">
											<div class="container">
												<ul>
													<li><a href="javascript:void(0);">Breadcrum first level</a></li>
													<li><a href="javascript:void(0);">Second level</a></li>
													<li><a href="javascript:void(0);">Third level</a></li>
													<li>Fourth level</li>
												</ul>
											</div>
										</div>
										<div class="panel ucg_breadcrumb_addon">
											<div class="container">
												<!-- SHARING -->
												<div class="ucg_breadcrumb_sharing col-xs-12">
													<div class="icon collapsed">
														<a href="javascript:void(0);" data-target=".ucg_breadcrumb_sharing_panel.collapse" data-toggle="collapse">Share</a>
													</div>
												</div>
												<!-- SHARING -->
											</div>
										</div>
										<div class="clear"></div>

									</div>
									<!-- SHARING COLLAPSABLE-->
										<div class="panel panel-collapse ucg_breadcrumb_sharing_panel collapse">
											<div class="container">
												<div class="arrows">
													<img class="arrow-down" alt="Arrow Down" src="../img/static/breadcrumb-share-down-arrow.png">
												</div>
												<div class="col-xs-12 col-sm-4 col-md-3 left">
													<h2>Share this event on:</h2>
												</div>
												<div class="col-xs-12 col-sm-7 col-md-8">
													<ul>
														<li class="col-xs-6"><a href="javascript:void(0);" class="facebook">Facebook</a></li>
														<li class="col-xs-6"><a href="javascript:void(0);" class="twitter">Twitter</a></li>
														<li class="col-xs-6"><a href="javascript:void(0);" class="linkedin">LinkedIn</a></li>
														<li class="col-xs-6"><a href="javascript:void(0);" class="googleplus">Google +</a></li>
													</ul>
												</div>
												<div class="closer hidden-xs">
													<a href="javascript:void(0);" data-target=".ucg_breadcrumb_sharing_panel.collapse" data-toggle="collapse">
														<img alt="Cross" src="../img/static/breadcrumb-share-cross.png">
													</a>
												</div>
											</div>
										</div>
										<!-- SHARING COLLAPSABLE-->
								</div>
								<!-- BREADCRUMB -->
							</div>
						</div>
						<div class="example">Breadcrumb Component Full page width buttons and sharing</div>
						<div class="parsys contentpagewelcome-parsys">
							<div class="section">
								<!-- BREADCRUMB -->
								<div class="panel ucg_breadcrumb">
									<div class="container">
										<div class="panel ucg_breadcrumb_crumbs col-xs-12">
											<div class="container">
												<ul>
													<li><a href="javascript:void(0);">Breadcrum first level</a></li>
													<li><a href="javascript:void(0);">Second level</a></li>
													<li><a href="javascript:void(0);">Third level</a></li>
													<li>Fourth level</li>
												</ul>
											</div>
										</div>
										<div class="panel ucg_breadcrumb_addon">
											<div class="container">
												<!-- BUTTONS -->
												<div class="ucg_breadcrumb_links col-xs-12">
													<a class="second-crosslink" href="javascript:void(0);">Second crosslink</a>
													<a class="first-crosslink" href="javascript:void(0);">First crosslink</a>
												</div>
												<!-- BUTTONS -->
												<!-- SHARING -->
												<div class="ucg_breadcrumb_sharing col-xs-12">
													<div class="icon collapsed">
														<a href="javascript:void(0);" data-target=".ucg_breadcrumb_sharing_panel.collapse" data-toggle="collapse">Share</a>
													</div>
												</div>
												<!-- SHARING -->
											</div>
										</div>
										<div class="clear"></div>

									</div>
									<!-- SHARING COLLAPSABLE-->
										<div class="panel panel-collapse ucg_breadcrumb_sharing_panel collapse">
											<div class="container">
												<div class="arrows">
													<img class="arrow-down" alt="Arrow Down" src="../img/static/breadcrumb-share-down-arrow.png">
												</div>
												<div class="col-xs-12 col-sm-4 col-md-3 left">
													<h2>Share this event on:</h2>
												</div>
												<div class="col-xs-12 col-sm-7 col-md-8">
													<ul>
														<li class="col-xs-6"><a href="javascript:void(0);" class="facebook">Facebook</a></li>
														<li class="col-xs-6"><a href="javascript:void(0);" class="twitter">Twitter</a></li>
														<li class="col-xs-6"><a href="javascript:void(0);" class="linkedin">LinkedIn</a></li>
														<li class="col-xs-6"><a href="javascript:void(0);" class="googleplus">Google +</a></li>
													</ul>
												</div>
												<div class="closer hidden-xs">
													<a href="javascript:void(0);" data-target=".ucg_breadcrumb_sharing_panel.collapse" data-toggle="collapse">
														<img alt="Cross" src="../img/static/breadcrumb-share-cross.png">
													</a>
												</div>
											</div>
										</div>
										<!-- SHARING COLLAPSABLE-->
								</div>
								<!-- BREADCRUMB -->
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