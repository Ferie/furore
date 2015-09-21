<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="it">
	<head>
		<jsp:include page="includes/meta.html"></jsp:include>

		<title>Board of Directors</title>

		<jsp:include page="includes/css.html"></jsp:include>

		<!-- SPECIFIC CSS START HERE -->

		<!--generic CSS for Parsys Column container -->
		<link type="text/css" rel="stylesheet" href="css/ucg_parsys_column.css"/>

		<!-- SPACER COMPONENT -->
		<link type="text/css" rel="stylesheet" href="css/ucg_spacer.css"/>
		<!-- BREADCRUMB -->
		<link type="text/css" rel="stylesheet" href="css/ucg_breadcrumb.css"/>
		<link type="text/css" rel="stylesheet" href="css/ucg_breadcrumb_links.css"/>
		<link type="text/css" rel="stylesheet" href="css/ucg_sharing.css"/>
		<!-- HORIZONTAL LINE -->
		<link type="text/css" rel="stylesheet" href="css/ucg_horizontal_line_component.css"/>
		<!-- TITLE COMPONENT -->
		<link type="text/css" rel="stylesheet" href="css/ucg_title_component.css"/>
		<!-- TEXT ON IMAGE COMPONENT -->
		<link type="text/css" rel="stylesheet" href="css/ucg_image_component.css"/>
		<!-- IMAGE TEXT COMPONENT -->
		<link type="text/css" rel="stylesheet" href="css/ucg_image_text_component.css"/>
		<!-- LINK LIST COMPONENT -->
		<link type="text/css" rel="stylesheet" href="css/ucg_link_component.css"/>
		<!-- TAB COMPONENT -->
		<link type="text/css" rel="stylesheet" href="plugin/css/chosen.min.css">
		<link type="text/css" rel="stylesheet" href="css/ucg_tab_component.css"/>
		<!-- SOCIAL + SOCIAL FOOTER COMPONENT -->
		<link type="text/css" rel="stylesheet" href="css/ucg_social.css"/>
		<link type="text/css" rel="stylesheet" href="css/board_of_directors.css"/>

		<!-- SPECIFIC CSS END HERE -->

		<link type="text/css" rel="stylesheet" href="css/retina.css"/>

		<jsp:include page="includes/js.html"></jsp:include>

		<!-- SPECIFIC JS START HERE -->

		<!-- SPACER COMPONENT -->
		<script type="text/javascript" src="js/ucg_spacer.js"></script>
		<!-- TITLE COMPONENT -->
		<script type="text/javascript" src="js/ucg_title.js"></script>
		<!-- TAB COMPONENT -->
		<script type="text/javascript" src="plugin/js/chosen.patched.jquery.js"></script>
		<script type="text/javascript" src="js/ucg_tab_component.js"></script>
		<!-- SPACER COMPONENT -->
		<script type="text/javascript" src="js/ucg_spacer.js"></script>
		<!-- TITLE COMPONENT -->
		<script type="text/javascript" src="js/ucg_title.js"></script>
		<!-- TAB COMPONENT -->
		<script type="text/javascript" src="plugin/js/chosen.patched.jquery.js"></script>
		<script type="text/javascript" src="js/ucg_tab_component.js"></script>

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

						<div id="boardOfDirectors">
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

							<div class="parsys contentpagewelcome-parsys">
								<div class="section">
									<!-- HORIZONTAL LINE -->
									<div class="ucg_horizontal_line">
										<div class="spacer1"></div>
										<div class="spacer2"></div>
									</div>
									<!-- /END HORIZONTAL LINE -->
								</div>
							</div>

							<div class="parsys contentpagewelcome-parsys">
								<div class="section">
									<div class="ucg_spacer" data-ucg-height-mobile="20" data-ucg-height="20"></div>
								</div>
							</div>

							<div class="parsys contentpagewelcome-parsys">
								<div class="section">
									<!-- TITLE SEO -->
									<div class="panel ucg_seo_title">
										<div class="container">
											<h1 class="singlePage">Board of Directors</h1>
										</div>
									</div>
									<!-- /END TITLE SEO -->
								</div>
							</div>

							<div class="parsys contentpagewelcome-parsys">
								<div class="section">
									<div class="ucg_spacer" data-ucg-height-mobile="20" data-ucg-height="20"></div>
								</div>
							</div>

							<div class="parsys contentpagewelcome-parsys">
								<div class="section">
									<!-- HORIZONTAL LINE -->
									<div class="ucg_horizontal_line">
										<div class="spacer1"></div>
										<div class="spacer2"></div>
									</div>
									<!-- /END HORIZONTAL LINE -->
								</div>
							</div>

							<div class="parsys contentpagewelcome-parsys">
								<div class="section textimage">
									<!-- SPACER -->
									<div class="ucg_spacer" data-ucg-height="36" data-ucg-height-mobile="36"></div>
									<!-- /END SPACER -->
								</div>
							</div>

							<div class="parsys_column two-columns-box clearfix">
								<div class="parsys_column two-columns-box-c0">
									<!-- TITLE -->
									<div class="panel ucg_title">
										<div class="container">
											<div class="ucg_title_text_container">
												<div class="ucg_title_container">
													<h3>Chairman</h3>
												</div>
												<div class="ucg_subtitle"></div>
											</div>
											<div class="ucg_title_image_container"></div>
										</div>
									</div>
									<!-- /END TITLE -->
									<!-- TEXT ON IMAGE -->
									<div class="panel ucg_image">
										<div class="container">
											<div class="ucg_image_container">
												<img src="img/bod_1.png" alt="">
												<div class="ucg_text_on_image_container bottom_left">
													<div class="ucg_text_on_image">
														<h4>Giuseppe Vita</h4>
													</div>
													<div class="panel ucg_linklist">
														<div class="container">
															<ul class="ucg_link_container">
																<li class="ucg_internal_link">
																	<a href="curriculum_vitae.html">Complete CV</a>
																</li>
															</ul>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<!-- /END TEXT ON IMAGE -->
								</div>
								<div class="parsys_column two-columns-box-c1">
									<div class="ucg_spacer" data-ucg-height="0" data-ucg-height-mobile="40"></div>
									<!-- TITLE -->
									<div class="panel ucg_title">
										<div class="container">
											<div class="ucg_title_text_container">
												<div class="ucg_title_container">
													<h3>Chief Executive Officer</h3>
												</div>
												<div class="ucg_subtitle"></div>
											</div>
											<div class="ucg_title_image_container"></div>
										</div>
									</div>
									<!-- /END TITLE -->
									<!-- TEXT ON IMAGE -->
									<div class="panel ucg_image">
										<div class="container">
											<div class="ucg_image_container">
												<img src="img/bod_2.png" alt="">
												<div class="ucg_text_on_image_container bottom_left">
													<div class="ucg_text_on_image">
														<h4>Federico Ghizzoni</h4>
													</div>
													<div class="panel ucg_linklist">
														<div class="container">
															<ul class="ucg_link_container">
																<li class="ucg_internal_link">
																	<a href="curriculum_vitae.html">Complete CV</a>
																</li>
															</ul>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<!-- /END TEXT ON IMAGE -->
								</div>
							</div>

							<div class="parsys contentpagewelcome-parsys">
								<div class="section textimage">
									<!-- SPACER -->
									<div class="ucg_spacer" data-ucg-height="16" data-ucg-height-mobile="16"></div>
									<!-- /END SPACER -->
								</div>
							</div>

							<div class="parsys contentpagewelcome-parsys">
								<div class="section textimage">
									<!-- TAB -->
									<div class="ucg_tab">
										<div class="panel hidden-xs tabs">
											<div class="container">
												<div class="tab active" data-tabpanel="tabPanelOne">
													<div class="tabHeader">
														<a href="javascript:void(0);">Statutory Auditors</a>
													</div>
												</div>
												<div class="tab" data-tabpanel="tabPanelTwo">
													<div class="tabHeader">
														<a href="javascript:void(0);">Directors</a>
													</div>
												</div>
												<div class="tab" data-tabpanel="tabPanelThree">
													<div class="tabHeader">
														<a href="javascript:void(0);">Secretary</a>
													</div>
												</div>
											</div>
										</div>

										<div class="panel visible-xs dropdown">
											<div class="container">
												<div class="col-xs-12">
													<select name="boardOfDirectorsSelect" class="chosen-select" data-placeholder="Select business type">
														<option value="tabPanelOne" data-value="tabPanelOne">Statutory Auditors</option>
														<option value="tabPanelTwo" data-value="tabPanelTwo">Directors</option>
														<option value="tabPanelThree" data-value="tabPanelThree">Secretary</option>
													</select>
												</div>
											</div>
										</div>

										<div class="panel tabsBody">
											<div class="container">
												<div class="tabPanel tabPanelOne selected">
													<div class="tabSection clearfix">
														<div class="resume">
															<!-- IMAGE TEXT -->
															<div class="panel ucg_image_text">
																<div class="container">
																	<div class="ucg_image_container">
																		<img src="img/bod_3.png" alt="">
																	</div>
																	<div class="ucg_txt">
																		<p class="bodName">Paolo Fiorentino</p>
																		<p class="bodOccupation">Deputy General Manager - Chief Operating Officer</p>
																	</div>
																</div>
															</div>
															<!-- /END IMAGE TEXT -->
															<!-- LINK -->
															<div class="panel ucg_linklist">
																<div class="container">
																	<div class="ucg_link_container">
																		<div class="ucg_link">
																			<a href="javascript:void(0);">Complete CV</a>
																		</div>
																	</div>
																</div>
															</div>
															<!-- /END LINK -->
														</div>
														<div class="resume">
															<!-- IMAGE TEXT -->
															<div class="panel ucg_image_text">
																<div class="container">
																	<div class="ucg_image_container">
																		<img src="img/bod_4.png" alt="">
																	</div>
																	<div class="ucg_txt">
																		<p class="bodName">Roberto Nicastro</p>
																		<p class="bodOccupation">Deputy General Manager</p>
																	</div>
																</div>
															</div>
															<!-- /END IMAGE TEXT -->
															<!-- LINK -->
															<div class="panel ucg_linklist">
																<div class="container">
																	<div class="ucg_link_container">
																		<div class="ucg_link">
																			<a href="javascript:void(0);">Complete CV</a>
																		</div>
																	</div>
																</div>
															</div>
															<!-- /END LINK -->
														</div>
														<div class="resume">
															<!-- IMAGE TEXT -->
															<div class="panel ucg_image_text">
																<div class="container">
																	<div class="ucg_image_container">
																		<img src="img/bod_3.png" alt="">
																	</div>
																	<div class="ucg_txt">
																		<p class="bodName">Paolo Fiorentino</p>
																		<p class="bodOccupation">Deputy General Manager - Chief Operating Officer</p>
																	</div>
																</div>
															</div>
															<!-- /END IMAGE TEXT -->
															<!-- LINK -->
															<div class="panel ucg_linklist">
																<div class="container">
																	<div class="ucg_link_container">
																		<div class="ucg_link">
																			<a href="javascript:void(0);">Complete CV</a>
																		</div>
																	</div>
																</div>
															</div>
															<!-- /END LINK -->
														</div>
														<div class="resume">
															<!-- IMAGE TEXT -->
															<div class="panel ucg_image_text">
																<div class="container">
																	<div class="ucg_image_container">
																		<img src="img/bod_4.png" alt="">
																	</div>
																	<div class="ucg_txt">
																		<p class="bodName">Roberto Nicastro</p>
																		<p class="bodOccupation">Deputy General Manager</p>
																	</div>
																</div>
															</div>
															<!-- /END IMAGE TEXT -->
															<!-- LINK -->
															<div class="panel ucg_linklist">
																<div class="container">
																	<div class="ucg_link_container">
																		<div class="ucg_link">
																			<a href="javascript:void(0);">Complete CV</a>
																		</div>
																	</div>
																</div>
															</div>
															<!-- /END LINK -->
														</div>
														<div class="resume">
															<!-- IMAGE TEXT -->
															<div class="panel ucg_image_text">
																<div class="container">
																	<div class="ucg_image_container">
																		<img src="img/bod_3.png" alt="">
																	</div>
																	<div class="ucg_txt">
																		<p class="bodName">Paolo Fiorentino</p>
																		<p class="bodOccupation">Deputy General Manager - Chief Operating Officer</p>
																	</div>
																</div>
															</div>
															<!-- /END IMAGE TEXT -->
															<!-- LINK -->
															<div class="panel ucg_linklist">
																<div class="container">
																	<div class="ucg_link_container">
																		<div class="ucg_link">
																			<a href="javascript:void(0);">Complete CV</a>
																		</div>
																	</div>
																</div>
															</div>
															<!-- /END LINK -->
														</div>
														<div class="resume">
															<!-- IMAGE TEXT -->
															<div class="panel ucg_image_text">
																<div class="container">
																	<div class="ucg_image_container">
																		<img src="img/bod_4.png" alt="">
																	</div>
																	<div class="ucg_txt">
																		<p class="bodName">Roberto Nicastro</p>
																		<p class="bodOccupation">Deputy General Manager</p>
																	</div>
																</div>
															</div>
															<!-- /END IMAGE TEXT -->
															<!-- LINK -->
															<div class="panel ucg_linklist">
																<div class="container">
																	<div class="ucg_link_container">
																		<div class="ucg_link">
																			<a href="javascript:void(0);">Complete CV</a>
																		</div>
																	</div>
																</div>
															</div>
															<!-- /END LINK -->
														</div>
														<div class="resume">
															<!-- IMAGE TEXT -->
															<div class="panel ucg_image_text">
																<div class="container">
																	<div class="ucg_image_container">
																		<img src="img/bod_3.png" alt="">
																	</div>
																	<div class="ucg_txt">
																		<p class="bodName">Paolo Fiorentino</p>
																		<p class="bodOccupation">Deputy General Manager - Chief Operating Officer</p>
																	</div>
																</div>
															</div>
															<!-- /END IMAGE TEXT -->
															<!-- LINK -->
															<div class="panel ucg_linklist">
																<div class="container">
																	<div class="ucg_link_container">
																		<div class="ucg_link">
																			<a href="javascript:void(0);">Complete CV</a>
																		</div>
																	</div>
																</div>
															</div>
															<!-- /END LINK -->
														</div>
														<div class="resume">
															<!-- IMAGE TEXT -->
															<div class="panel ucg_image_text">
																<div class="container">
																	<div class="ucg_image_container">
																		<img src="img/bod_4.png" alt="">
																	</div>
																	<div class="ucg_txt">
																		<p class="bodName">Roberto Nicastro</p>
																		<p class="bodOccupation">Deputy General Manager</p>
																	</div>
																</div>
															</div>
															<!-- /END IMAGE TEXT -->
															<!-- LINK -->
															<div class="panel ucg_linklist">
																<div class="container">
																	<div class="ucg_link_container">
																		<div class="ucg_link">
																			<a href="javascript:void(0);">Complete CV</a>
																		</div>
																	</div>
																</div>
															</div>
															<!-- /END LINK -->
														</div>
														<div class="resume">
															<!-- IMAGE TEXT -->
															<div class="panel ucg_image_text">
																<div class="container">
																	<div class="ucg_image_container">
																		<img src="img/bod_3.png" alt="">
																	</div>
																	<div class="ucg_txt">
																		<p class="bodName">Paolo Fiorentino</p>
																		<p class="bodOccupation">Deputy General Manager - Chief Operating Officer</p>
																	</div>
																</div>
															</div>
															<!-- /END IMAGE TEXT -->
															<!-- LINK -->
															<div class="panel ucg_linklist">
																<div class="container">
																	<div class="ucg_link_container">
																		<div class="ucg_link">
																			<a href="javascript:void(0);">Complete CV</a>
																		</div>
																	</div>
																</div>
															</div>
															<!-- /END LINK -->
														</div>
														<div class="resume">
															<!-- IMAGE TEXT -->
															<div class="panel ucg_image_text">
																<div class="container">
																	<div class="ucg_image_container">
																		<img src="img/bod_4.png" alt="">
																	</div>
																	<div class="ucg_txt">
																		<p class="bodName">Roberto Nicastro</p>
																		<p class="bodOccupation">Deputy General Manager</p>
																	</div>
																</div>
															</div>
															<!-- /END IMAGE TEXT -->
															<!-- LINK -->
															<div class="panel ucg_linklist">
																<div class="container">
																	<div class="ucg_link_container">
																		<div class="ucg_link">
																			<a href="javascript:void(0);">Complete CV</a>
																		</div>
																	</div>
																</div>
															</div>
															<!-- /END LINK -->
														</div>
														<div class="resume">
															<!-- IMAGE TEXT -->
															<div class="panel ucg_image_text">
																<div class="container">
																	<div class="ucg_image_container">
																		<img src="img/bod_3.png" alt="">
																	</div>
																	<div class="ucg_txt">
																		<p class="bodName">Paolo Fiorentino</p>
																		<p class="bodOccupation">Deputy General Manager - Chief Operating Officer</p>
																	</div>
																</div>
															</div>
															<!-- /END IMAGE TEXT -->
															<!-- LINK -->
															<div class="panel ucg_linklist">
																<div class="container">
																	<div class="ucg_link_container">
																		<div class="ucg_link">
																			<a href="javascript:void(0);">Complete CV</a>
																		</div>
																	</div>
																</div>
															</div>
															<!-- /END LINK -->
														</div>
														<div class="resume">
															<!-- IMAGE TEXT -->
															<div class="panel ucg_image_text">
																<div class="container">
																	<div class="ucg_image_container">
																		<img src="img/bod_4.png" alt="">
																	</div>
																	<div class="ucg_txt">
																		<p class="bodName">Roberto Nicastro</p>
																		<p class="bodOccupation">Deputy General Manager</p>
																	</div>
																</div>
															</div>
															<!-- /END IMAGE TEXT -->
															<!-- LINK -->
															<div class="panel ucg_linklist">
																<div class="container">
																	<div class="ucg_link_container">
																		<div class="ucg_link">
																			<a href="javascript:void(0);">Complete CV</a>
																		</div>
																	</div>
																</div>
															</div>
															<!-- /END LINK -->
														</div>
													</div>
												</div>

												<div class="tabPanel tabPanelTwo">
													<div class="tabSection clearfix">
														<div class="resume">
															<!-- IMAGE TEXT -->
															<div class="panel ucg_image_text">
																<div class="container">
																	<div class="ucg_image_container">
																		<img src="img/bod_5.png" alt="">
																	</div>
																	<div class="ucg_txt">
																		<p class="bodName">Valentina Ferrari</p>
																		<p class="bodOccupation">Financial Director</p>
																	</div>
																</div>
															</div>
															<!-- /END IMAGE TEXT -->
															<!-- LINK -->
															<div class="panel ucg_linklist">
																<div class="container">
																	<div class="ucg_link_container">
																		<div class="ucg_link">
																			<a href="javascript:void(0);">Complete CV</a>
																		</div>
																	</div>
																</div>
															</div>
															<!-- /END LINK -->
														</div>
														<div class="resume">
															<!-- IMAGE TEXT -->
															<div class="panel ucg_image_text">
																<div class="container">
																	<div class="ucg_image_container">
																		<img src="img/bod_6.png" alt="">
																	</div>
																	<div class="ucg_txt">
																		<p class="bodName">Federica Carbone</p>
																		<p class="bodOccupation">Sales Director - General Manager</p>
																	</div>
																</div>
															</div>
															<!-- /END IMAGE TEXT -->
															<!-- LINK -->
															<div class="panel ucg_linklist">
																<div class="container">
																	<div class="ucg_link_container">
																		<div class="ucg_link">
																			<a href="javascript:void(0);">Complete CV</a>
																		</div>
																	</div>
																</div>
															</div>
															<!-- /END LINK -->
														</div>
														<div class="resume">
															<!-- IMAGE TEXT -->
															<div class="panel ucg_image_text">
																<div class="container">
																	<div class="ucg_image_container">
																		<img src="img/bod_5.png" alt="">
																	</div>
																	<div class="ucg_txt">
																		<p class="bodName">Valentina Ferrari</p>
																		<p class="bodOccupation">Financial Director</p>
																	</div>
																</div>
															</div>
															<!-- /END IMAGE TEXT -->
															<!-- LINK -->
															<div class="panel ucg_linklist">
																<div class="container">
																	<div class="ucg_link_container">
																		<div class="ucg_link">
																			<a href="javascript:void(0);">Complete CV</a>
																		</div>
																	</div>
																</div>
															</div>
															<!-- /END LINK -->
														</div>
														<div class="resume">
															<!-- IMAGE TEXT -->
															<div class="panel ucg_image_text">
																<div class="container">
																	<div class="ucg_image_container">
																		<img src="img/bod_6.png" alt="">
																	</div>
																	<div class="ucg_txt">
																		<p class="bodName">Federica Carbone</p>
																		<p class="bodOccupation">Sales Director - General Manager</p>
																	</div>
																</div>
															</div>
															<!-- /END IMAGE TEXT -->
															<!-- LINK -->
															<div class="panel ucg_linklist">
																<div class="container">
																	<div class="ucg_link_container">
																		<div class="ucg_link">
																			<a href="javascript:void(0);">Complete CV</a>
																		</div>
																	</div>
																</div>
															</div>
															<!-- /END LINK -->
														</div>
														<div class="resume">
															<!-- IMAGE TEXT -->
															<div class="panel ucg_image_text">
																<div class="container">
																	<div class="ucg_image_container">
																		<img src="img/bod_5.png" alt="">
																	</div>
																	<div class="ucg_txt">
																		<p class="bodName">Valentina Ferrari</p>
																		<p class="bodOccupation">Financial Director</p>
																	</div>
																</div>
															</div>
															<!-- /END IMAGE TEXT -->
															<!-- LINK -->
															<div class="panel ucg_linklist">
																<div class="container">
																	<div class="ucg_link_container">
																		<div class="ucg_link">
																			<a href="javascript:void(0);">Complete CV</a>
																		</div>
																	</div>
																</div>
															</div>
															<!-- /END LINK -->
														</div>
														<div class="resume">
															<!-- IMAGE TEXT -->
															<div class="panel ucg_image_text">
																<div class="container">
																	<div class="ucg_image_container">
																		<img src="img/bod_6.png" alt="">
																	</div>
																	<div class="ucg_txt">
																		<p class="bodName">Federica Carbone</p>
																		<p class="bodOccupation">Sales Director - General Manager</p>
																	</div>
																</div>
															</div>
															<!-- /END IMAGE TEXT -->
															<!-- LINK -->
															<div class="panel ucg_linklist">
																<div class="container">
																	<div class="ucg_link_container">
																		<div class="ucg_link">
																			<a href="javascript:void(0);">Complete CV</a>
																		</div>
																	</div>
																</div>
															</div>
															<!-- /END LINK -->
														</div>
														<div class="resume">
															<!-- IMAGE TEXT -->
															<div class="panel ucg_image_text">
																<div class="container">
																	<div class="ucg_image_container">
																		<img src="img/bod_5.png" alt="">
																	</div>
																	<div class="ucg_txt">
																		<p class="bodName">Valentina Ferrari</p>
																		<p class="bodOccupation">Financial Director</p>
																	</div>
																</div>
															</div>
															<!-- /END IMAGE TEXT -->
															<!-- LINK -->
															<div class="panel ucg_linklist">
																<div class="container">
																	<div class="ucg_link_container">
																		<div class="ucg_link">
																			<a href="javascript:void(0);">Complete CV</a>
																		</div>
																	</div>
																</div>
															</div>
															<!-- /END LINK -->
														</div>
														<div class="resume">
															<!-- IMAGE TEXT -->
															<div class="panel ucg_image_text">
																<div class="container">
																	<div class="ucg_image_container">
																		<img src="img/bod_6.png" alt="">
																	</div>
																	<div class="ucg_txt">
																		<p class="bodName">Federica Carbone</p>
																		<p class="bodOccupation">Sales Director - General Manager</p>
																	</div>
																</div>
															</div>
															<!-- /END IMAGE TEXT -->
															<!-- LINK -->
															<div class="panel ucg_linklist">
																<div class="container">
																	<div class="ucg_link_container">
																		<div class="ucg_link">
																			<a href="javascript:void(0);">Complete CV</a>
																		</div>
																	</div>
																</div>
															</div>
															<!-- /END LINK -->
														</div>
														<div class="resume">
															<!-- IMAGE TEXT -->
															<div class="panel ucg_image_text">
																<div class="container">
																	<div class="ucg_image_container">
																		<img src="img/bod_5.png" alt="">
																	</div>
																	<div class="ucg_txt">
																		<p class="bodName">Valentina Ferrari</p>
																		<p class="bodOccupation">Financial Director</p>
																	</div>
																</div>
															</div>
															<!-- /END IMAGE TEXT -->
															<!-- LINK -->
															<div class="panel ucg_linklist">
																<div class="container">
																	<div class="ucg_link_container">
																		<div class="ucg_link">
																			<a href="javascript:void(0);">Complete CV</a>
																		</div>
																	</div>
																</div>
															</div>
															<!-- /END LINK -->
														</div>
														<div class="resume">
															<!-- IMAGE TEXT -->
															<div class="panel ucg_image_text">
																<div class="container">
																	<div class="ucg_image_container">
																		<img src="img/bod_6.png" alt="">
																	</div>
																	<div class="ucg_txt">
																		<p class="bodName">Federica Carbone</p>
																		<p class="bodOccupation">Sales Director - General Manager</p>
																	</div>
																</div>
															</div>
															<!-- /END IMAGE TEXT -->
															<!-- LINK -->
															<div class="panel ucg_linklist">
																<div class="container">
																	<div class="ucg_link_container">
																		<div class="ucg_link">
																			<a href="javascript:void(0);">Complete CV</a>
																		</div>
																	</div>
																</div>
															</div>
															<!-- /END LINK -->
														</div>
														<div class="resume">
															<!-- IMAGE TEXT -->
															<div class="panel ucg_image_text">
																<div class="container">
																	<div class="ucg_image_container">
																		<img src="img/bod_5.png" alt="">
																	</div>
																	<div class="ucg_txt">
																		<p class="bodName">Valentina Ferrari</p>
																		<p class="bodOccupation">Financial Director</p>
																	</div>
																</div>
															</div>
															<!-- /END IMAGE TEXT -->
															<!-- LINK -->
															<div class="panel ucg_linklist">
																<div class="container">
																	<div class="ucg_link_container">
																		<div class="ucg_link">
																			<a href="javascript:void(0);">Complete CV</a>
																		</div>
																	</div>
																</div>
															</div>
															<!-- /END LINK -->
														</div>
														<div class="resume">
															<!-- IMAGE TEXT -->
															<div class="panel ucg_image_text">
																<div class="container">
																	<div class="ucg_image_container">
																		<img src="img/bod_6.png" alt="">
																	</div>
																	<div class="ucg_txt">
																		<p class="bodName">Federica Carbone</p>
																		<p class="bodOccupation">Sales Director - General Manager</p>
																	</div>
																</div>
															</div>
															<!-- /END IMAGE TEXT -->
															<!-- LINK -->
															<div class="panel ucg_linklist">
																<div class="container">
																	<div class="ucg_link_container">
																		<div class="ucg_link">
																			<a href="javascript:void(0);">Complete CV</a>
																		</div>
																	</div>
																</div>
															</div>
															<!-- /END LINK -->
														</div>
													</div>
												</div>

												<div class="tabPanel tabPanelThree">
													<div class="tabSection clearfix">
														<div class="resume">
															<!-- IMAGE TEXT -->
															<div class="panel ucg_image_text">
																<div class="container">
																	<div class="ucg_image_container">
																		<img src="img/bod_7.png" alt="">
																	</div>
																	<div class="ucg_txt">
																		<p class="bodName">Riccardo Rossi</p>
																		<p class="bodOccupation">Secretary Manager</p>
																	</div>
																</div>
															</div>
															<!-- /END IMAGE TEXT -->
															<!-- LINK -->
															<div class="panel ucg_linklist">
																<div class="container">
																	<div class="ucg_link_container">
																		<div class="ucg_link">
																			<a href="javascript:void(0);">Complete CV</a>
																		</div>
																	</div>
																</div>
															</div>
															<!-- /END LINK -->
														</div>
														<div class="resume">
															<!-- IMAGE TEXT -->
															<div class="panel ucg_image_text">
																<div class="container">
																	<div class="ucg_image_container">
																		<img src="img/bod_8.png" alt="">
																	</div>
																	<div class="ucg_txt">
																		<p class="bodName">Anna Rossetti</p>
																		<p class="bodOccupation">General Secretary</p>
																	</div>
																</div>
															</div>
															<!-- /END IMAGE TEXT -->
															<!-- LINK -->
															<div class="panel ucg_linklist">
																<div class="container">
																	<div class="ucg_link_container">
																		<div class="ucg_link">
																			<a href="javascript:void(0);">Complete CV</a>
																		</div>
																	</div>
																</div>
															</div>
															<!-- /END LINK -->
														</div>
														<div class="resume">
															<!-- IMAGE TEXT -->
															<div class="panel ucg_image_text">
																<div class="container">
																	<div class="ucg_image_container">
																		<img src="img/bod_7.png" alt="">
																	</div>
																	<div class="ucg_txt">
																		<p class="bodName">Riccardo Rossi</p>
																		<p class="bodOccupation">Secretary Manager</p>
																	</div>
																</div>
															</div>
															<!-- /END IMAGE TEXT -->
															<!-- LINK -->
															<div class="panel ucg_linklist">
																<div class="container">
																	<div class="ucg_link_container">
																		<div class="ucg_link">
																			<a href="javascript:void(0);">Complete CV</a>
																		</div>
																	</div>
																</div>
															</div>
															<!-- /END LINK -->
														</div>
														<div class="resume">
															<!-- IMAGE TEXT -->
															<div class="panel ucg_image_text">
																<div class="container">
																	<div class="ucg_image_container">
																		<img src="img/bod_8.png" alt="">
																	</div>
																	<div class="ucg_txt">
																		<p class="bodName">Anna Rossetti</p>
																		<p class="bodOccupation">General Secretary</p>
																	</div>
																</div>
															</div>
															<!-- /END IMAGE TEXT -->
															<!-- LINK -->
															<div class="panel ucg_linklist">
																<div class="container">
																	<div class="ucg_link_container">
																		<div class="ucg_link">
																			<a href="javascript:void(0);">Complete CV</a>
																		</div>
																	</div>
																</div>
															</div>
															<!-- /END LINK -->
														</div>
														<div class="resume">
															<!-- IMAGE TEXT -->
															<div class="panel ucg_image_text">
																<div class="container">
																	<div class="ucg_image_container">
																		<img src="img/bod_7.png" alt="">
																	</div>
																	<div class="ucg_txt">
																		<p class="bodName">Riccardo Rossi</p>
																		<p class="bodOccupation">Secretary Manager</p>
																	</div>
																</div>
															</div>
															<!-- /END IMAGE TEXT -->
															<!-- LINK -->
															<div class="panel ucg_linklist">
																<div class="container">
																	<div class="ucg_link_container">
																		<div class="ucg_link">
																			<a href="javascript:void(0);">Complete CV</a>
																		</div>
																	</div>
																</div>
															</div>
															<!-- /END LINK -->
														</div>
														<div class="resume">
															<!-- IMAGE TEXT -->
															<div class="panel ucg_image_text">
																<div class="container">
																	<div class="ucg_image_container">
																		<img src="img/bod_8.png" alt="">
																	</div>
																	<div class="ucg_txt">
																		<p class="bodName">Anna Rossetti</p>
																		<p class="bodOccupation">General Secretary</p>
																	</div>
																</div>
															</div>
															<!-- /END IMAGE TEXT -->
															<!-- LINK -->
															<div class="panel ucg_linklist">
																<div class="container">
																	<div class="ucg_link_container">
																		<div class="ucg_link">
																			<a href="javascript:void(0);">Complete CV</a>
																		</div>
																	</div>
																</div>
															</div>
															<!-- /END LINK -->
														</div>
														<div class="resume">
															<!-- IMAGE TEXT -->
															<div class="panel ucg_image_text">
																<div class="container">
																	<div class="ucg_image_container">
																		<img src="img/bod_7.png" alt="">
																	</div>
																	<div class="ucg_txt">
																		<p class="bodName">Riccardo Rossi</p>
																		<p class="bodOccupation">Secretary Manager</p>
																	</div>
																</div>
															</div>
															<!-- /END IMAGE TEXT -->
															<!-- LINK -->
															<div class="panel ucg_linklist">
																<div class="container">
																	<div class="ucg_link_container">
																		<div class="ucg_link">
																			<a href="javascript:void(0);">Complete CV</a>
																		</div>
																	</div>
																</div>
															</div>
															<!-- /END LINK -->
														</div>
														<div class="resume">
															<!-- IMAGE TEXT -->
															<div class="panel ucg_image_text">
																<div class="container">
																	<div class="ucg_image_container">
																		<img src="img/bod_8.png" alt="">
																	</div>
																	<div class="ucg_txt">
																		<p class="bodName">Anna Rossetti</p>
																		<p class="bodOccupation">General Secretary</p>
																	</div>
																</div>
															</div>
															<!-- /END IMAGE TEXT -->
															<!-- LINK -->
															<div class="panel ucg_linklist">
																<div class="container">
																	<div class="ucg_link_container">
																		<div class="ucg_link">
																			<a href="javascript:void(0);">Complete CV</a>
																		</div>
																	</div>
																</div>
															</div>
															<!-- /END LINK -->
														</div>
														<div class="resume">
															<!-- IMAGE TEXT -->
															<div class="panel ucg_image_text">
																<div class="container">
																	<div class="ucg_image_container">
																		<img src="img/bod_7.png" alt="">
																	</div>
																	<div class="ucg_txt">
																		<p class="bodName">Riccardo Rossi</p>
																		<p class="bodOccupation">Secretary Manager</p>
																	</div>
																</div>
															</div>
															<!-- /END IMAGE TEXT -->
															<!-- LINK -->
															<div class="panel ucg_linklist">
																<div class="container">
																	<div class="ucg_link_container">
																		<div class="ucg_link">
																			<a href="javascript:void(0);">Complete CV</a>
																		</div>
																	</div>
																</div>
															</div>
															<!-- /END LINK -->
														</div>
														<div class="resume">
															<!-- IMAGE TEXT -->
															<div class="panel ucg_image_text">
																<div class="container">
																	<div class="ucg_image_container">
																		<img src="img/bod_8.png" alt="">
																	</div>
																	<div class="ucg_txt">
																		<p class="bodName">Anna Rossetti</p>
																		<p class="bodOccupation">General Secretary</p>
																	</div>
																</div>
															</div>
															<!-- /END IMAGE TEXT -->
															<!-- LINK -->
															<div class="panel ucg_linklist">
																<div class="container">
																	<div class="ucg_link_container">
																		<div class="ucg_link">
																			<a href="javascript:void(0);">Complete CV</a>
																		</div>
																	</div>
																</div>
															</div>
															<!-- /END LINK -->
														</div>
														<div class="resume">
															<!-- IMAGE TEXT -->
															<div class="panel ucg_image_text">
																<div class="container">
																	<div class="ucg_image_container">
																		<img src="img/bod_7.png" alt="">
																	</div>
																	<div class="ucg_txt">
																		<p class="bodName">Riccardo Rossi</p>
																		<p class="bodOccupation">Secretary Manager</p>
																	</div>
																</div>
															</div>
															<!-- /END IMAGE TEXT -->
															<!-- LINK -->
															<div class="panel ucg_linklist">
																<div class="container">
																	<div class="ucg_link_container">
																		<div class="ucg_link">
																			<a href="javascript:void(0);">Complete CV</a>
																		</div>
																	</div>
																</div>
															</div>
															<!-- /END LINK -->
														</div>
														<div class="resume">
															<!-- IMAGE TEXT -->
															<div class="panel ucg_image_text">
																<div class="container">
																	<div class="ucg_image_container">
																		<img src="img/bod_8.png" alt="">
																	</div>
																	<div class="ucg_txt">
																		<p class="bodName">Anna Rossetti</p>
																		<p class="bodOccupation">General Secretary</p>
																	</div>
																</div>
															</div>
															<!-- /END IMAGE TEXT -->
															<!-- LINK -->
															<div class="panel ucg_linklist">
																<div class="container">
																	<div class="ucg_link_container">
																		<div class="ucg_link">
																			<a href="javascript:void(0);">Complete CV</a>
																		</div>
																	</div>
																</div>
															</div>
															<!-- /END LINK -->
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<!-- /END TAB -->
								</div>
							</div>
						</div>

						<div class="panel grey">
							<div class="parsys contentpagewelcome-parsys">
								<div class="section">
									<div class="ucg_spacer" data-ucg-height-mobile="20" data-ucg-height="40"></div>
								</div>
							</div>

							<!-- TITLE -->
							<div class="parsys contentpagewelcome-parsys">
								<div class="parbase section textimage">
									<div class="panel ucg_title_component">
										<div class="container">
											<div class="ucg_title_text_container">
												<div class="ucg_title">
													<h2>Follow UniCredit Group also on</h2>
												</div>
												<div class="ucg_subtitle"><h4></h4></div>
											</div>
											<div class="ucg_title_image"></div>
										</div>
									</div>
								</div>
							</div>
							<!-- /END TITLE -->

							<div class="parsys contentpagewelcome-parsys">
								<div class="section">
									<div class="ucg_spacer" data-ucg-height-mobile="20" data-ucg-height="40"></div>
								</div>
							</div>

							<!-- 3 COLUMN SOCIAL -->
							<div class="parsys_column three-columns-box clearfix">
								<div class="parsys_column three-columns-box-c0">
									<div class="panel ucg_social ucg_social_facebook">
										<div class="container">
											<div class="ucg_social_title">Unicredit champions facebook</div>
											<div class="ucg_social_image">
												<img alt="" src="img/social-facebook-c3.jpg">
											</div>
											<div class="clear visible-xs"></div>
											<div class="ucg_social_data">
												<span>21 November</span>
											</div>
											<div class="ucg_social_text">
												<p>We wish you a good weekend with this quote by Steven Gerrard... Click LIKE if you agree!</p>
											</div>
										</div>
										<div class="container">
											<div class="ucg_social_link">
												<a href="https://www.facebook.com/UniCreditChampionsIT" target="_blank">Become a fan</a>
											</div>
										</div>
									</div>
								</div>
								<div class="parsys_column three-columns-box-c1">
									<div class="panel ucg_social ucg_social_twitter no_image">
										<div class="container">
											<div class="ucg_social_title">@UniCredit_PR</div>
											<div class="ucg_social_image"></div>
											<div class="ucg_social_data">
												<span>28 November</span>
											</div>
											<div class="ucg_social_text">
												<p>
													<a class="tag" href="javascript:void(0);">#Cultura</a>: dal 28-11 c/o lo Spazio <a class="tag" href="javascript:void(0);">#Trento</a> UniCredit di Palazzo Firmian la mostra '<a class="tag" href="javascript:void(0);">#PAD</a>, PaesaggioArchitetturaDesign' <a class="shortLink" href="javascript:void(0);">http://goo.gl/NSMBDJ</a>
												</p>
											</div>
										</div>
										<div class="container">
											<div class="ucg_social_link">
												<a href="https://www.facebook.com/UniCreditChampionsIT" target="_blank">Follow us</a>
											</div>
										</div>
									</div>
								</div>
								<div class="parsys_column three-columns-box-c2">
									<div class="panel ucg_social ucg_social_youtube">
										<div class="container">
											<div class="ucg_social_title">Unicredit Channel</div>
											<div class="ucg_social_image">
												<a class="ucg_videoplayer_starter" href="javascript:void(0);">
													<!-- <img title="Go to video" alt="Go to video" src="img/static/videoplayer_play.png"> -->
												</a>
												<img alt="" src="img/social-youtube-c3.jpg">
											</div>
											<div class="clear visible-xs"></div>
											<div class="ucg_social_data">
												<span>28 November</span>
											</div>
											<div class="ucg_social_text">
												<p>UniCredit Tower.</p>
											</div>
										</div>
										<div class="container">
											<div class="ucg_social_link">
												<a href="https://www.facebook.com/UniCreditChampionsIT" target="_blank">Subscribe</a>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- /END 3 COLUMN SOCIAL -->

							<div class="parsys contentpagewelcome-parsys">
								<div class="parbase section">
									<!-- SOCIAL FOOTER -->
									<div class="panel ucg_social_footer">
										<div class="container">
											<div class="ucg_social_title">
												<span class="col-xs-12">Follow UniCredit Group also on</span>
												<div class="ucg_social_others col-xs-12">
													<a href="javascript:void(0);" class="unicredit"></a>
													<a href="javascript:void(0);" class="twitter"></a>
													<a href="javascript:void(0);" class="linkedin"></a>
													<a href="javascript:void(0);" class="facebook"></a>
													<a href="javascript:void(0);" class="googleplus"></a>
													<a href="javascript:void(0);" class="pinterest"></a>
												</div>
											</div>
										</div>
									</div>
									<!-- SOCIAL FOOTER -->
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