<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="it">
	<head>
		<jsp:include page="includes/meta.html"></jsp:include>

		<title>Archives</title>

		<jsp:include page="includes/css.html"></jsp:include>

		<!-- SPECIFIC CSS START HERE -->

		<!--generic CSS for Parsys Column container -->
		<link type="text/css" rel="stylesheet" href="css/ucg_parsys_column.css"/>

		<link type="text/css" rel="stylesheet" href="plugin/css/chosen.min.css"/>
		<link type="text/css" rel="stylesheet" href="plugin/css/all.css"/>
		<link type="text/css" rel="stylesheet" href="plugin/css/datepicker3.css"/>
		<link type="text/css" rel="stylesheet" href="plugin/css/daterangepicker-bs3.css"/>
		<link type="text/css" rel="stylesheet" href="css/spinner.css"/>
		<link type="text/css" rel="stylesheet" href="css/form.css"/>
		<link type="text/css" rel="stylesheet" href="css/form-desktop.css"/>
		<link type="text/css" rel="stylesheet" href="css/archives.css"/>
		<link type="text/css" rel="stylesheet" href="css/archives-desktop.css"/>
		<!-- BREADCRUMB -->
		<link type="text/css" rel="stylesheet" href="css/ucg_breadcrumb.css"/>
		<link type="text/css" rel="stylesheet" href="css/ucg_breadcrumb_links.css"/>
		<link type="text/css" rel="stylesheet" href="css/ucg_sharing.css"/>

		<!-- SPECIFIC CSS END HERE -->

		<link type="text/css" rel="stylesheet" href="css/retina.css"/>

		<jsp:include page="includes/js.html"></jsp:include>

		<!-- SPECIFIC JS START HERE -->

		<script type="text/javascript" src="plugin/js/heartcode-canvasloader.js"></script>
		<script type="text/javascript" src="plugin/js/icheck.min.js"></script>
		<script type="text/javascript" src="plugin/js/chosen.jquery.min.js"></script>
		<script type="text/javascript" src="plugin/js/bootstrap-datepicker.js"></script>
		<script type="text/javascript" src="plugin/js/moment.min.js"></script>
		<script type="text/javascript" src="plugin/js/locales/bootstrap-datepicker.it.js"></script>
		<script type="text/javascript" src="plugin/js/daterangepicker.modified.js"></script>
		<script type="text/javascript" src="js/jquery.spinnerUBIS.js"></script>
		<script type="text/javascript" src="js/form.js"></script>
		<script type="text/javascript" src="js/archives.js"></script>

		<!-- SPECIFIC JS END HERE -->
	</head>

	<body>
		<jsp:include page="includes/message.html"></jsp:include>

		<jsp:include page="includes/header.html"></jsp:include>

		<jsp:include page="includes/search.html"></jsp:include>

		<div class="body-container-table">
			<div class="body-container-cell">
				<jsp:include page="includes/sidebar.html"></jsp:include>
			</div>

			<div class="body-container-cell">
				<div id="mainContainer">
					<div class="mainContainer-wrapper">

						<!-- PAGE STARTS HERE -->

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
												<!-- /END BUTTONS -->
												<!-- SHARING -->
												<div class="ucg_breadcrumb_sharing col-xs-12">
													<div class="icon collapsed">
														<a href="javascript:void(0);" data-target=".ucg_breadcrumb_sharing_panel.collapse" data-toggle="collapse">Share</a>
													</div>
												</div>
												<!-- /END SHARING -->
											</div>
										</div>
										<div class="clear"></div>
									</div>
									<!-- SHARING COLLAPSABLE-->
									<div class="panel panel-collapse ucg_breadcrumb_sharing_panel collapse">
										<div class="container">
											<div class="arrows">
												<img class="arrow-down" alt="Arrow Down" src="img/static/breadcrumb-share-down-arrow.png">
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
													<img alt="Cross" src="img/static/breadcrumb-share-cross.png">
												</a>
											</div>
										</div>
									</div>
									<!-- /END SHARING COLLAPSABLE-->
								</div>
								<!-- /END BREADCRUMB -->
							</div>
						</div>

						<div id="archives">
							<div class="panel">
								<div class="container">
									<h1>Press releases</h1>
								</div>
							</div>

							<div class="panel" id="archivesTools">
								<div class="container">
									<div class="col-xs-12 col-sm-3 with-cross">
										<input type="text" class="keywords form-control" name="keywords" placeholder="Search all events">
										<div class="keys cross"><a href="javascript:void(0);"></a></div>
									</div>
									<div class="col-xs-12 col-sm-3 with-cross">
										<div class="input-daterange">
											<div>Select range</div>
										</div>
										<div class="dates cross"><a href="javascript:void(0);"></a></div>
									</div>
									<div class="col-xs-12 col-sm-3">
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
									<div class="col-xs-12 col-sm-3">
										<div class="ucg_checkbox">
											<input class="icheckbox_ubis" type="checkbox" name="priceSensitive" id="priceSensitive"/>
											<label for="priceSensitive">Price sensitive only</label>
										</div>
									</div>
								</div>
							</div>

							<div class="panel" id="archivesMessages">
								<div class="panel number-results">
									<div class="container">
										<h3>6 upcoming events</h3>
									</div>
								</div>
							</div>

							<div class="panel" id="archivesPanelResults">
								<div class="panel event event1 highlighted">
									<div class="container">
										<div class="header col-xs-12">
											<div class="date col-xs-12">
												<ul class="days">
													<li>
														<h1>15</h1>
														<div class="labels">
															<span class="month">September</span>
															<span class="year">2014</span>
														</div>
													</li>
												</ul>
												<div class="labels">
													<span class="city">Milan</span>
													<span class="country">Italy</span>
												</div>
											</div>
											<div class="buttons col-xs-3 col-xs-push-9 col-sm-12 col-sm-push-0">
												<button class="add">Save</button>
											</div>
											<div class="categories right col-xs-9 col-xs-pull-3 col-sm-pull-0">
												<label class="highlighted">Highlighted</label>
												<label class="investors">Investors</label>
											</div>
										</div>
										<div class="body col-xs-12">
											<h2>Provisional UniCredit S.p.A. Balance Sheet data and Consolidated Balance Sheet as at 31.12.14</h2>
										</div>
										<div class="footer col-xs-12">
											<a href="calendar-detail.html" class="left">Read more</a>
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

								<div class="panel event event2">
									<div class="container">
										<div class="header col-xs-12">
											<div class="date col-xs-12">
												<ul class="days">
													<li>
														<h1>28</h1>
													</li>
													<li>
														<h1>29</h1>
														<div class="labels">
															<span class="month">November</span>
															<span class="year">2014</span>
														</div>
													</li>
												</ul>
												<div class="labels">
													<span class="city">Wien</span>
													<span class="country">Austria</span>
												</div>
											</div>
											<div class="buttons col-xs-3 col-xs-push-9 col-sm-12 col-sm-push-0">
												<button class="add">Save</button>
											</div>
											<div class="categories right col-xs-9 col-xs-pull-3 col-sm-pull-0">
												<label class="culturesociety">Culture and Society</label>
											</div>
										</div>
										<div class="body col-xs-12">
											<h2>Multimedia Exhibition Dedicated to Verdi and Wagner</h2>
										</div>
										<div class="footer col-xs-12">
											<a href="calendar-detail.html" class="left">Read more</a>
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

								<div class="panel event event3">
									<div class="container">
										<div class="header col-xs-12">
											<div class="date col-xs-12">
												<ul class="days">
													<li>
														<h1>28</h1>
														<div class="labels">
															<span class="month">Nov<span class="hidden-xs">ember</span></span>
															<span class="year">2014</span>
														</div>
													</li>
													<li>
														<h1>2</h1>
														<div class="labels">
															<span class="month">Dec<span class="hidden-xs">ember</span></span>
															<span class="year">2014</span>
														</div>
													</li>
												</ul>
												<div class="labels">
													<span class="city">Milan</span>
													<span class="country">Italy</span>
												</div>
											</div>
											<div class="buttons col-xs-3 col-xs-push-9 col-sm-12 col-sm-push-0">
												<button class="add">Save</button>
											</div>
											<div class="categories right col-xs-9 col-xs-pull-3 col-sm-pull-0">
												<label class="culturesociety">Culture and Society</label>
											</div>
										</div>
										<div class="body col-xs-12">
											<h2>Celebrating Christmas with UniCredit's Light-Covered Art in Milan</h2>
										</div>
										<div class="footer col-xs-12">
											<a href="calendar-detail.html" class="left">Read more</a>
											<a href="javascript:void(0);" class="attach right" data-memotext="Hide attachments" data-target=".event3 .attachments.collapse" data-toggle="collapse">5 attachments</a>
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

								<div class="panel event event4">
									<div class="container">
										<div class="header col-xs-12">
											<div class="date col-xs-12">
												<ul class="days">
													<li>
														<h1>30</h1>
														<div class="labels">
															<span class="month">November</span>
															<span class="year">2014</span>
														</div>
													</li>
												</ul>
												<div class="labels">
													<span class="city">Milan</span>
													<span class="country">Italy</span>
												</div>
											</div>
											<div class="buttons col-xs-3 col-xs-push-9 col-sm-12 col-sm-push-0">
												<button class="add">Save</button>
											</div>
											<div class="categories right col-xs-9 col-xs-pull-3 col-sm-pull-0">
												<label class="sustainability">Sustainability</label>
											</div>
										</div>
										<div class="body col-xs-12">
											<h2>Provisional UniCredit S.p.A. Balance Sheet data and Consolidated Balance Sheet as at 31.12.14</h2>
										</div>
										<div class="footer col-xs-12">
											<a href="calendar-detail.html" class="left">Read more</a>
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

								<div class="panel event event5">
									<div class="container">
										<div class="header col-xs-12">
											<div class="date col-xs-12">
												<ul class="days">
													<li>
														<h1>28</h1>
													</li>
													<li>
														<h1>29</h1>
														<div class="labels">
															<span class="month">November</span>
															<span class="year">2014</span>
														</div>
													</li>
												</ul>
												<div class="labels">
													<span class="city">Wien</span>
													<span class="country">Austria</span>
												</div>
											</div>
											<div class="buttons col-xs-3 col-xs-push-9 col-sm-12 col-sm-push-0">
												<button class="add">Save</button>
											</div>
											<div class="categories right col-xs-9 col-xs-pull-3 col-sm-pull-0">
												<label class="culturesociety">Culture and Society</label>
											</div>
										</div>
										<div class="body col-xs-12">
											<h2>Multimedia Exhibition Dedicated to Verdi and Wagner</h2>
										</div>
										<div class="footer col-xs-12">
											<a href="calendar-detail.html" class="left">Read more</a>
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

								<div class="panel event event6">
									<div class="container">
										<div class="header col-xs-12">
											<div class="date col-xs-12">
												<ul class="days">
													<li>
														<h1>28</h1>
														<div class="labels">
															<span class="month">Nov<span class="hidden-xs">ember</span></span>
															<span class="year">2014</span>
														</div>
													</li>
													<li>
														<h1>2</h1>
														<div class="labels">
															<span class="month">Dec<span class="hidden-xs">ember</span></span>
															<span class="year">2014</span>
														</div>
													</li>
												</ul>
												<div class="labels">
													<span class="city">Milan</span>
													<span class="country">Italy</span>
												</div>
											</div>
											<div class="buttons col-xs-3 col-xs-push-9 col-sm-12 col-sm-push-0">
												<button class="add">Save</button>
											</div>
											<div class="categories right col-xs-9 col-xs-pull-3 col-sm-pull-0">
												<label class="culturesociety">Culture and Society</label>
											</div>
										</div>
										<div class="body col-xs-12">
											<h2>Celebrating Christmas with UniCredit's Light-Covered Art in Milan</h2>
										</div>
										<div class="footer col-xs-12">
											<a href="calendar-detail.html" class="left">Read more</a>
											<a href="javascript:void(0);" class="attach right" data-memotext="Hide attachments" data-target=".event3 .attachments.collapse" data-toggle="collapse">5 attachments</a>
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

								<div class="panel event event7">
									<div class="container">
										<div class="header col-xs-12">
											<div class="date col-xs-12">
												<ul class="days">
													<li>
														<h1>30</h1>
														<div class="labels">
															<span class="month">November</span>
															<span class="year">2014</span>
														</div>
													</li>
												</ul>
												<div class="labels">
													<span class="city">Milan</span>
													<span class="country">Italy</span>
												</div>
											</div>
											<div class="buttons col-xs-3 col-xs-push-9 col-sm-12 col-sm-push-0">
												<button class="add">Save</button>
											</div>
											<div class="categories right col-xs-9 col-xs-pull-3 col-sm-pull-0">
												<label class="sustainability">Sustainability</label>
											</div>
										</div>
										<div class="body col-xs-12">
											<h2>Provisional UniCredit S.p.A. Balance Sheet data and Consolidated Balance Sheet as at 31.12.14</h2>
										</div>
										<div class="footer col-xs-12">
											<a href="calendar-detail.html" class="left">Read more</a>
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

								<div class="panel event event8">
									<div class="container">
										<div class="header col-xs-12">
											<div class="date col-xs-12">
												<ul class="days">
													<li>
														<h1>28</h1>
													</li>
													<li>
														<h1>29</h1>
														<div class="labels">
															<span class="month">November</span>
															<span class="year">2014</span>
														</div>
													</li>
												</ul>
												<div class="labels">
													<span class="city">Wien</span>
													<span class="country">Austria</span>
												</div>
											</div>
											<div class="buttons col-xs-3 col-xs-push-9 col-sm-12 col-sm-push-0">
												<button class="add">Save</button>
											</div>
											<div class="categories right col-xs-9 col-xs-pull-3 col-sm-pull-0">
												<label class="culturesociety">Culture and Society</label>
											</div>
										</div>
										<div class="body col-xs-12">
											<h2>Multimedia Exhibition Dedicated to Verdi and Wagner</h2>
										</div>
										<div class="footer col-xs-12">
											<a href="calendar-detail.html" class="left">Read more</a>
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

								<div class="panel event event9">
									<div class="container">
										<div class="header col-xs-12">
											<div class="date col-xs-12">
												<ul class="days">
													<li>
														<h1>28</h1>
														<div class="labels">
															<span class="month">Nov<span class="hidden-xs">ember</span></span>
															<span class="year">2014</span>
														</div>
													</li>
													<li>
														<h1>2</h1>
														<div class="labels">
															<span class="month">Dec<span class="hidden-xs">ember</span></span>
															<span class="year">2014</span>
														</div>
													</li>
												</ul>
												<div class="labels">
													<span class="city">Milan</span>
													<span class="country">Italy</span>
												</div>
											</div>
											<div class="buttons col-xs-3 col-xs-push-9 col-sm-12 col-sm-push-0">
												<button class="add">Save</button>
											</div>
											<div class="categories right col-xs-9 col-xs-pull-3 col-sm-pull-0">
												<label class="culturesociety">Culture and Society</label>
											</div>
										</div>
										<div class="body col-xs-12">
											<h2>Celebrating Christmas with UniCredit's Light-Covered Art in Milan</h2>
										</div>
										<div class="footer col-xs-12">
											<a href="calendar-detail.html" class="left">Read more</a>
											<a href="javascript:void(0);" class="attach right" data-memotext="Hide attachments" data-target=".event3 .attachments.collapse" data-toggle="collapse">5 attachments</a>
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

								<div class="panel event event10">
									<div class="container">
										<div class="header col-xs-12">
											<div class="date col-xs-12">
												<ul class="days">
													<li>
														<h1>30</h1>
														<div class="labels">
															<span class="month">November</span>
															<span class="year">2014</span>
														</div>
													</li>
												</ul>
												<div class="labels">
													<span class="city">Milan</span>
													<span class="country">Italy</span>
												</div>
											</div>
											<div class="buttons col-xs-3 col-xs-push-9 col-sm-12 col-sm-push-0">
												<button class="add">Save</button>
											</div>
											<div class="categories right col-xs-9 col-xs-pull-3 col-sm-pull-0">
												<label class="sustainability">Sustainability</label>
											</div>
										</div>
										<div class="body col-xs-12">
											<h2>Provisional UniCredit S.p.A. Balance Sheet data and Consolidated Balance Sheet as at 31.12.14</h2>
										</div>
										<div class="footer col-xs-12">
											<a href="calendar-detail.html" class="left">Read more</a>
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
								<!-- END EVENTS LOADED -->

								<div id="moreEvents"></div>

								<div class="panel" id="loadMore">
									<div class="panel">
										<div class="container">
											<button class="btn btn-small">Load More</button>
										</div>
									</div>
								</div>
							</div>
						</div>

						<!-- PAGE ENDS HERE -->

						<jsp:include page="includes/footer.html"></jsp:include>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>