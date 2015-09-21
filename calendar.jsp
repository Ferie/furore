<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="it">
	<head>
		<jsp:include page="includes/meta.html"></jsp:include>

		<title>Calendar</title>

		<jsp:include page="includes/css.html"></jsp:include>

		<!-- SPECIFIC CSS START HERE -->

		<link type="text/css" rel="stylesheet" href="plugin/css/chosen.min.css"/>
		<link type="text/css" rel="stylesheet" href="plugin/css/all.css"/>
		<link type="text/css" rel="stylesheet" href="plugin/css/datepicker3.css"/>
		<link type="text/css" rel="stylesheet" href="plugin/css/daterangepicker-bs3.css"/>

		<!--specific CSS for Breadcrumb Component-->
		<link type="text/css" rel="stylesheet" href="css/ucg_breadcrumb.css"/>
		<link type="text/css" rel="stylesheet" href="css/ucg_breadcrumb_links.css"/>

		<link type="text/css" rel="stylesheet" href="css/spinner.css"/>
		<link type="text/css" rel="stylesheet" href="css/form.css"/>
		<link type="text/css" rel="stylesheet" href="css/form-desktop.css"/>
		<link type="text/css" rel="stylesheet" href="css/calendar.css"/>
		<link type="text/css" rel="stylesheet" href="css/calendar-desktop.css"/>

		<!-- SPECIFIC CSS END HERE -->

		<link type="text/css" rel="stylesheet" href="css/retina.css"/>

		<jsp:include page="includes/js.html"></jsp:include>

		<!-- SPECIFIC JS START HERE -->

		<script type="text/javascript" src="plugin/js/heartcode-canvasloader.js"></script>
		<script type="text/javascript" src="plugin/js/icheck.min.js"></script>
		<script type="text/javascript" src="plugin/js/chosen.patched.jquery.js"></script>
		<script type="text/javascript" src="plugin/js/bootstrap-datepicker.js"></script>
		<script type="text/javascript" src="plugin/js/moment.min.js"></script>
		<script type="text/javascript" src="plugin/js/locales/bootstrap-datepicker.it.js"></script>
		<script type="text/javascript" src="plugin/js/daterangepicker.modified.js"></script>
		<script type="text/javascript" src="js/jquery.spinnerUBIS.js"></script>
		<script type="text/javascript" src="js/calendar.js"></script>

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

						<!-- BREADCRUMB -->
						<div class="panel ucg_breadcrumb">
							<div class="container">
								<div class="panel ucg_breadcrumb_crumbs col-xs-12">
									<div class="container">
										<ul>
											<li><a href="javascript:void(0);">Press & Media</a></li>
											<li>events Calendar</li>
										</ul>
									</div>
								</div>
								<div class="panel ucg_breadcrumb_addon">
									<div class="container">
									</div>
								</div>
								<div class="clear"></div>
							</div>
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
									<div class="col-xs-12 col-sm-6 with-cross">
										<input type="text" class="dark keywords form-control" name="keywords" placeholder="Search all events">
										<div class="keys dark cross"><a href="javascript:void(0);"></a></div>
									</div>
									<div class="col-xs-12 col-sm-3 with-cross">
										<div class="input-daterange dark">
											<div>Select range</div>
										</div>
										<div class="dates dark cross"><a href="javascript:void(0);"></a></div>
									</div>
									<div class="col-xs-12 col-sm-3">
										<div class="ucg_chosen_radio">
											<select name="category" class="chosen-select little-arrow with-deselect dark" data-placeholder="All categories">
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
							</div>
							<div class="panel" id="calendarMessages">
								<div class="panel number-results">
									<div class="container">
										<h3>6 upcoming events</h3>
									</div>
								</div>
							</div>
							<div class="panel" id="calendarPanelResults">
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
											<a href="calendar-detail-landscape.html" class="left">Read more</a>
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
											<a href="calendar-detail-portrait.html" class="left">Read more</a>
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
											<a href="calendar-detail-video.html" class="left">Read more</a>
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
											<a href="calendar-detail-landscape.html" class="left">Read more</a>
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
											<a href="calendar-detail-portrait.html" class="left">Read more</a>
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
											<a href="calendar-detail-video.html" class="left">Read more</a>
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
											<a href="calendar-detail-landscape.html" class="left">Read more</a>
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
											<a href="calendar-detail-portrait.html" class="left">Read more</a>
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
											<a href="calendar-detail-video.html" class="left">Read more</a>
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
											<a href="calendar-detail-landscape.html" class="left">Read more</a>
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
						</div>

						<!-- PAGE ENDS HERE -->

						<jsp:include page="includes/footer.html"></jsp:include>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>