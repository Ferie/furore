<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="it">
	<head>
		<jsp:include page="../includes/meta.html"></jsp:include>

		<title>Calendar Detail Video</title>

		<jsp:include page="../includes/css.html"></jsp:include>

		<!-- SPECIFIC CSS START HERE -->

		<link type="text/css" rel="stylesheet" href="../css/calendar.css"/>
		<link type="text/css" rel="stylesheet" href="../css/calendar-desktop.css"/>

		<!--specific CSS for Breadcrumb Component-->
		<link type="text/css" rel="stylesheet" href="../css/ucg_breadcrumb.css"/>
		<link type="text/css" rel="stylesheet" href="../css/ucg_breadcrumb_links.css"/>
		<link type="text/css" rel="stylesheet" href="../css/ucg_sharing.css"/>

		<!-- SPECIFIC CSS END HERE -->

		<link type="text/css" rel="stylesheet" href="../css/retina.css"/>

		<jsp:include page="../includes/js.html"></jsp:include>

		<!-- SPECIFIC JS START HERE -->

		<!--specific JS for Sharing Component-->
		<script type="text/javascript" src="../js/ucg_sharing.js"></script>

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
							<div id="singleEvent">
								<div class="title panel">
									<div class="container">
										<h1>UniCredit Sponsors Turin Concert Marking Fall of Berlin Wall</h1>
									</div>
								</div>
								<div  class="embeddedVideo body panel event">
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
									</div>

									<div class="container">
										<div class="video col-xs-12 col-sm-7 col-md-6 col-lg-5">
											<!-- Modal -->
											<div class="ucg_videoplayer_container">
												<div class="ucg_videoplayer modal fade" tabindex="-1" role="dialog" aria-labelledby="ucg_videoplayer" aria-hidden="true">
													<div class="modal-dialog">
														<div class="modal-content">
															<div class="modal-header">
																<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
															</div>
															<div class="modal-body">
																<iframe width="480" height="320" src="" frameborder="0" allowfullscreen></iframe>
															</div>
														</div>
													</div>
												</div>
											</div>
											<!-- End Modal -->
											<a href="javascript:void(0);" data-video="https://www.youtube.com/embed/j_kOGqFslos?autoplay=1"><img src="../img/static/videoplayer_play.png" alt="Play video" title="Play video"></a>
											<img class="placeholder" src="../img/cover_landscape_001.jpg" alt="Image of Turin's Teatro Regio" title="Image of Turin's Teatro Regio">
										</div>
										<div class="text col-xs-12 col-sm-5 col-md-6 col-lg-7">
											<p class="subtitle">
												UniCredit is proud to sponsor "Nove Novembre. Berlino 1989: il suono dei muri che cadono," a November 9 concert at Turin's Teatro Regio that commemorates the 25th anniversary of the fall of the Berlin Wall. Brating the 25th anniversary of the fall of the Berlin Wall.
											</p>
											<p>
												This extraordinary event, which opens the "Turin Meets Berlin" project, will feature cellist and composer Giovanni Sollima performing with 100 fellow cellists. Broadcast live on channel RAI5, the event will include remarks by writer Andrea Bajani and actress Michela Cescon, and incorporate compelling historic images and video.<br/>
												UniCredit strongly believes music is a universal language that facilitates dialogue between different people and cultures. For this reason, our bank supports musical endeavors across Europe, including this important initiative celebrating the 25th anniversary of the fall of the Berlin Wall.<br/>
												This tremendous concert brings UniCredit closer to two of its most important territories - Italy, with Turin, and Germany, with Berlin - and unites great music with triumphant history in the name of collaboration and development.
											</p>
										</div>
									</div>
								</div>

								<div class="info panel">
									<div class="container">
										<div class="col-xs-12 col-sm-4">
											<div class="header">Additional info</div>
											<ul class="body">
												<li class="infoElement">
													<h4>Address:</h4>
													<p>Teatro Regio - Ticket office Piazza Castello 215, Turin</p>
												</li>
												<li class="infoElement">
													<h4>Phone:</h4>
													<p>+39 011 8815 241/242</p>
												</li>
												<li class="infoElement">
													<h4>Tickets:</h4>
													<p>€10 standard admission, €8 under 25 years old</p>
												</li>
												<li class="infoElement">
													<h4>Start time:</h4>
													<p>10:00 pm</p>
												</li>
											</ul>
										</div>
										<div class="col-xs-12 col-sm-4">
											<div class="header">Attachments</div>
											<ul class="body">
												<li class="attachElement"><a href="javascript: void(0);"><span>Pdf</span>UniCredit SpA 2013 Reports and Accounts</a></li>
												<li class="attachElement"><a href="javascript: void(0);"><span>Pdf</span>2013 Consolidated Reports and Accounts</a></li>
												<li class="attachElement"><a href="javascript: void(0);"><span>Doc</span>Press release (Italian only)</a></li>
											</ul>
										</div>
										<div class="col-xs-12 col-sm-4">
											<div class="header">Links</div>
											<ul class="body">
												<li class="linkElement"><a href="javascript: void(0);">Teatro Regio di Torino website</a></li>
											</ul>
											<div class="footer">
												<a href="javascript: void(0);">See all press releases</a>
											</div>
										</div>
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