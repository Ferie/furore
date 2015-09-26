<!DOCTYPE html>
<html lang="it">
	<head>
		<?php require_once("../includes/meta.html"); ?>

		<title>Calendar no results</title>

		<?php require_once("../includes/css.html"); ?>

		<!-- SPECIFIC CSS START HERE -->

		<link type="text/css" rel="stylesheet" href="../plugin/css/chosen.min.css"/>
		<link type="text/css" rel="stylesheet" href="../plugin/css/all.css"/>
		<link type="text/css" rel="stylesheet" href="../plugin/css/datepicker3.css"/>
		<link type="text/css" rel="stylesheet" href="../plugin/css/daterangepicker-bs3.css"/>

		<!--specific CSS for Breadcrumb Component-->
		<link type="text/css" rel="stylesheet" href="../css/ucg_breadcrumb.css"/>
		<link type="text/css" rel="stylesheet" href="../css/ucg_breadcrumb_links.css"/>
		<link type="text/css" rel="stylesheet" href="../css/ucg_sharing.css"/>

		<link type="text/css" rel="stylesheet" href="../css/spinner.css"/>
		<link type="text/css" rel="stylesheet" href="../css/form.css"/>
		<link type="text/css" rel="stylesheet" href="../css/form-desktop.css"/>
		<link type="text/css" rel="stylesheet" href="../css/calendar.css"/>
		<link type="text/css" rel="stylesheet" href="../css/calendar-desktop.css"/>

		<!-- SPECIFIC CSS END HERE -->

		<link type="text/css" rel="stylesheet" href="../css/retina.css"/>

		<?php require_once("../includes/js.html"); ?>

		<!-- SPECIFIC JS START HERE -->

		<script type="text/javascript" src="../plugin/js/heartcode-canvasloader.js"></script>
		<script type="text/javascript" src="../plugin/js/icheck.min.js"></script>
		<script type="text/javascript" src="../plugin/js/chosen.patched.jquery.js"></script>
		<script type="text/javascript" src="../plugin/js/bootstrap-datepicker.js"></script>
		<script type="text/javascript" src="../plugin/js/moment.min.js"></script>
		<script type="text/javascript" src="../plugin/js/locales/bootstrap-datepicker.it.js"></script>
		<script type="text/javascript" src="../plugin/js/daterangepicker.modified.js"></script>
		<script type="text/javascript" src="../js/jquery.spinnerUBIS.js"></script>
		<script type="text/javascript" src="../js/calendar.js"></script>
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
						<!-- /END BREADCRUMB -->

						<div id="calendar">
							<div class="panel">
								<div class="container">
									<h1>Events Calendar</h1>
								</div>
							</div>
							<div class="panel" id="calendarTools">
								<div class="container">
									<div class="col-xs-12 col-md-6 with-cross">
										<input type="text" class="keywords form-control" name="keywords" placeholder="Search all events">
										<div class="keys cross"><a href="javascript:void(0);"></a></div>
									</div>
									<div class="col-xs-12 col-md-3 with-cross">
										<div class="input-daterange">
											<div>Select range</div>
										</div>
										<div class="dates cross"><a href="javascript:void(0);"></a></div>
									</div>
									<div class="col-xs-12 col-md-3">
										<select name="category" class="chosen-select" data-placeholder="All categories">
											<option value=""></option>
											<option value="all">All categories (20)</option>
											<option value="financial">Financial (3)</option>
											<option value="sustainability">Sustainability (10)</option>
											<option value="culturesociety">Culture and Society (12)</option>
											<option value="careers">Careers (7)</option>
											<option value="business">Business (9)</option>
										</select>
									</div>
								</div>
							</div>
							<div class="panel" id="calendarMessages">
								<div class="panel number-results warn">
									<div class="container">
										<h3>No future events</h3>
									</div>
								</div>
								<div class="panel past-events">
									<div class="container">
										<h3>Past events</h3>
									</div>
								</div>
							</div>
							<div class="panel" id="calendarPanelResults">
								<div class="panel event past event1">
									<div class="container">
										<div class="header col-xs-12">
											<div class="date col-xs-12">
												<span>15 November</span> 2014
											</div>
											<div class="categories right">
												<label class="investors">Investors</label>
											</div>
										</div>
										<div class="body col-xs-12">
											<h2>Provisional UniCredit S.p.A. Balance Sheet data and Consolidated Balance Sheet as at 31.12.14</h2>
										</div>
										<div class="footer col-xs-12">
											<a href="javascript:void(0);" class="left">Read more</a>
											<a href="javascript:void(0);" class="attach right" data-memotext="Hide attachments" data-target=".event1 .attachments.collapse" data-toggle="collapse">5 attachments</a>
											<div class="col-xs-12 attachments panel-collapse collapse">
												<ul>
													<li><a href="javascript: void(0);"><span>Pdf</span>UniCredit SpA 2013 Reports and Accounts</a></li>
													<li><a href="javascript: void(0);"><span>Pdf</span>2013 Consolidated Reports and Accounts</a></li>
													<li><a href="javascript: void(0);"><span>Doc</span>Press release (Italian only)</a></li>
												</ul>
											</div>
										</div>
									</div>
								</div>
								<div class="panel event past event2">
									<div class="container">
										<div class="header col-xs-12">
											<div class="date col-xs-12">
												<span>15 November</span> 2014
											</div>
											<div class="categories right">
												<label class="investors">Investors</label>
											</div>
										</div>
										<div class="body col-xs-12">
											<h2>Provisional UniCredit S.p.A. Balance Sheet data and Consolidated Balance Sheet as at 31.12.14</h2>
										</div>
										<div class="footer col-xs-12">
											<a href="javascript:void(0);" class="left">Read more</a>
											<a href="javascript:void(0);" class="attach right" data-memotext="Hide attachments" data-target=".event2 .attachments.collapse" data-toggle="collapse">5 attachments</a>
											<div class="col-xs-12 attachments panel-collapse collapse">
												<ul>
													<li><a href="javascript: void(0);"><span>Pdf</span>UniCredit SpA 2013 Reports and Accounts</a></li>
													<li><a href="javascript: void(0);"><span>Pdf</span>2013 Consolidated Reports and Accounts</a></li>
													<li><a href="javascript: void(0);"><span>Doc</span>Press release (Italian only)</a></li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>		
							<!-- END EVENTS LOADED -->
							<div id="moreEvents">
							</div>
							<div class="panel" id="loadMore">
								<div class="panel">
									<div class="container">
										<button class="btn btn-small">Load More</button>
									</div>
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