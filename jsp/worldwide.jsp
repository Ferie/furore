<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="it">
	<head>
		<jsp:include page="../includes/meta.html"></jsp:include>

		<title>Worldwide</title>

		<jsp:include page="../includes/css.html"></jsp:include>

		<!-- SPECIFIC CSS START HERE -->

		<link rel="stylesheet" href="../css/worldwide.css">
		<link rel="stylesheet" href="../css/worldwide-desktop.css">

		<!-- BREADCRUMB -->
		<link type="text/css" rel="stylesheet" href="../css/ucg_breadcrumb.css"/>
		<link type="text/css" rel="stylesheet" href="../css/ucg_breadcrumb_links.css"/>
		<link type="text/css" rel="stylesheet" href="../css/ucg_sharing.css"/>

		<!-- SPECIFIC CSS END HERE -->

		<link type="text/css" rel="stylesheet" href="../css/retina.css"/>

		<jsp:include page="../includes/js.html"></jsp:include>

		<!-- SPECIFIC JS START HERE -->

		<script src="../js/worldwide.js"></script>

		<!-- BREADCRUMB -->
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

						<div class="parsys contentpagewelcome-parsys">
							<div class="section">
								<!-- BREADCRUMB -->
								<div class="panel ucg_breadcrumb">
									<div class="container">
										<div class="panel ucg_breadcrumb_crumbs col-xs-12">
											<div class="container">
												<ul>
													<li><a href="javascript:void(0);">Info</a></li>
													<li>Our worldwide presence</li>
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

						<div id="worldwide">
							<div class="panel" id="worldwideTitle">
								<div class="container">
									<h1>Our Worldwide presence</h1>
								</div>
							</div>

							<div class="panel" id="worldwideMap">
								<div class="container">
									<div class="hidden-xs">
										<div class="map">
											<img src="../img/static/worldwide-cartina.png" alt="Mappa del mondo" class="cartina">
										</div>
										<div class="cerchio americas" data-continent="americas">
											<div class="center">
												<div class="continent">americas</div>
												<div class="number">3</div>
												<div class="companies">Companies & Offices</div>
											</div>
										</div>
										<div class="cerchio europe" data-continent="europe">
											<div class="center">
												<div class="continent">europe</div>
												<div class="number">29</div>
												<div class="companies">Companies & Offices</div>
											</div>
										</div>
										<div class="cerchio africa" data-continent="africa">
											<div class="center">
												<div class="continent">middle-est<br>and africa</div>
												<div class="number">3</div>
												<div class="companies">Companies & Offices</div>
											</div>
										</div>
										<div class="cerchio asia" data-continent="asia">
											<div class="center">
												<div class="continent">asia<br>and oceania</div>
												<div class="number">12</div>
												<div class="companies">Companies & Offices</div>
											</div>
										</div>
									</div>
									<div class="briefText visible-xs">
										UniCredit currently operates in more than <b>50 countries</b>, with a total of <b>12.000 branches and 30 representative offices</b> around the world.
									</div>
								</div>
							</div>

							<div class="panel-group" id="accordion">
								<div class="panel worldwideCountries collapsed" id="europe">
									<div class="container">
										<div class="continentTitle" data-toggle="collapse" data-target="#europe .collapse" data-parent="#accordion">
											Europe
										</div>
										<div class="arrow visible-xs"></div>
									</div>
									<div class="container countries">
										<div class="continentCountries col-sm-4">
											<div class="mainCountry"><a href="worldwideCountry.html">Italy</a></div>
											<div class="country"><a href="worldwideCountry.html">Bosnia & Herzegovina</a></div>
											<div class="country"><a href="worldwideCountry.html">Czech Republic</a></div>
											<div class="country"><a href="worldwideCountry.html">Greece</a></div>
											<div class="country"><a href="worldwideCountry.html">Latvia</a></div>
											<div class="country"><a href="worldwideCountry.html">Macedonia</a></div>
											<div class="country"><a href="worldwideCountry.html">Norway</a></div>
											<div class="country"><a href="worldwideCountry.html">San Marino</a></div>
											<div class="country"><a href="worldwideCountry.html">Slovenia</a></div>
											<div class="country"><a href="worldwideCountry.html">Ukraine</a></div>
										</div>
										<div class="continentCountries col-sm-4">
											<div class="country"><a href="worldwideCountry.html">Austria</a></div>
											<div class="country"><a href="worldwideCountry.html">Bulgaria</a></div>
											<div class="country"><a href="worldwideCountry.html">Estonia</a></div>
											<div class="country"><a href="worldwideCountry.html">Hungary</a></div>
											<div class="country"><a href="worldwideCountry.html">Lithuania</a></div>
											<div class="country"><a href="worldwideCountry.html">Montenegro</a></div>
											<div class="country"><a href="worldwideCountry.html">Poland</a></div>
											<div class="country"><a href="worldwideCountry.html">Serbia</a></div>
											<div class="country"><a href="worldwideCountry.html">Spain</a></div>
											<div class="country"><a href="worldwideCountry.html">United Kingdom</a></div>
										</div>
										<div class="continentCountries col-sm-4">
											<div class="country"><a href="worldwideCountry.html">Belgium</a></div>
											<div class="country"><a href="worldwideCountry.html">Croatia</a></div>
											<div class="country"><a href="worldwideCountry.html">France</a></div>
											<div class="country"><a href="worldwideCountry.html">Ireland</a></div>
											<div class="country"><a href="worldwideCountry.html">Luxembourg</a></div>
											<div class="country"><a href="worldwideCountry.html">Netherlands</a></div>
											<div class="country"><a href="worldwideCountry.html">Romania</a></div>
											<div class="country"><a href="worldwideCountry.html">Slovakia</a></div>
											<div class="country"><a href="worldwideCountry.html">Switzerland</a></div>
										</div>
									</div>
								</div>

								<div class="panel worldwideCountries collapsed" id="asia">
									<div class="container">
										<div class="continentTitle" data-toggle="collapse" data-target="#asia .collapse" data-parent="#accordion">
											Asia and Oceania
										</div>
										<div class="arrow visible-xs"></div>
									</div>
									<div class="container countries">
										<div class="continentCountries col-sm-4">
											<div class="country"><a href="worldwideCountry.html">Australia</a></div>
											<div class="country"><a href="worldwideCountry.html">Hong Kong</a></div>
											<div class="country"><a href="worldwideCountry.html">Japan</a></div>
											<div class="country"><a href="worldwideCountry.html">South Korea</a></div>
										</div>
										<div class="continentCountries col-sm-4">
											<div class="country"><a href="worldwideCountry.html">Azerbaijan</a></div>
											<div class="country"><a href="worldwideCountry.html">India</a></div>
											<div class="country"><a href="worldwideCountry.html">Russia</a></div>
											<div class="country"><a href="worldwideCountry.html">Turkey</a></div>
										</div>
										<div class="continentCountries col-sm-4">
											<div class="country"><a href="worldwideCountry.html">China</a></div>
											<div class="country"><a href="worldwideCountry.html">Indonesia</a></div>
											<div class="country"><a href="worldwideCountry.html">Singapore</a></div>
											<div class="country"><a href="worldwideCountry.html">Vietnam</a></div>
										</div>
									</div>
								</div>

								<div class="panel worldwideCountries collapsed" id="africa">
									<div class="container">
										<div class="continentTitle" data-toggle="collapse" data-target="#africa .collapse" data-parent="#accordion">
											Middle-East and Africa
										</div>
										<div class="arrow visible-xs"></div>
									</div>
									<div class="container countries">
										<div class="continentCountries col-sm-4">
											<div class="country"><a href="worldwideCountry.html">Libya</a></div>
										</div>
										<div class="continentCountries col-sm-4">
											<div class="country"><a href="worldwideCountry.html">South Africa</a></div>
										</div>
										<div class="continentCountries col-sm-4">
											<div class="country"><a href="worldwideCountry.html">United Arab Emirates</a></div>
										</div>
									</div>
								</div>

								<div class="panel worldwideCountries collapsed" id="americas">
									<div class="container">
										<div class="continentTitle" data-toggle="collapse" data-target="#americas .collapse" data-parent="#accordion">
											Americas
										</div>
										<div class="arrow visible-xs"></div>
									</div>
									<div class="container countries">
										<div class="continentCountries col-sm-4">
											<div class="country"><a href="worldwideCountry.html">Argentina</a></div>
										</div>
										<div class="continentCountries col-sm-4">
											<div class="country"><a href="worldwideCountry.html">Brasil</a></div>
										</div>
										<div class="continentCountries col-sm-4">
											<div class="country"><a href="worldwideCountry.html">United States</a></div>
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