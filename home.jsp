<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="it">
	<head>
		<jsp:include page="includes/meta.html"></jsp:include>

		<title>Home Page</title>

		<jsp:include page="includes/css.html"></jsp:include>

		<!-- SPECIFIC CSS START HERE -->

		<!--generic CSS for Parsys Column container -->
		<link type="text/css" rel="stylesheet" href="css/ucg_parsys_column.css"/>

		<!-- TITLE -->
		<link type="text/css" rel="stylesheet" href="css/ucg_title_component.css"/>
		<!-- HOME SWIPER -->
		<link type="text/css" rel="stylesheet" href="plugin/css/idangerous.swiper.css"/>
		<link type="text/css" rel="stylesheet" href="css/videoplayer.css"/>
		<link type="text/css" rel="stylesheet" href="css/ucg_swiper_homepage.css"/>
		<!-- SPACER -->
		<link type="text/css" rel="stylesheet" href="css/ucg_spacer.css"/>
		<!-- INTRADAY -->
		<link type="text/css" rel="stylesheet" href="css/ucg_intraday_component.css"/>
		<!-- IMAGE -->
		<link type="text/css" rel="stylesheet" href="css/ucg_image_component.css"/>
		<!-- LIST LINK -->
		<link type="text/css" rel="stylesheet" href="css/ucg_link_component.css"/>
		<!-- CONTAINER SWIPER -->
		<link type="text/css" rel="stylesheet" href="css/ucg_container_swiper.css"/>
		<!-- TEXT IMAGE -->
		<link type="text/css" rel="stylesheet" href="css/ucg_image_text_component.css"/>
		<!-- HORIZONTAL LINE -->
		<link type="text/css" rel="stylesheet" href="css/ucg_horizontal_line_component.css"/>
		<!-- FORM -->
		<link type="text/css" rel="stylesheet" href="plugin/css/all.css"/>
		<link type="text/css" rel="stylesheet" href="css/form.css"/>
		<link type="text/css" rel="stylesheet" href="css/form-desktop.css"/>
		<!-- CALENDAR TOOL -->
		<link type="text/css" rel="stylesheet" href="css/ucg_calendar_tools_component.css"/>
		<!-- TEXT -->
		<link type="text/css" rel="stylesheet" href="css/ucg_text_component.css"/>
		<!-- WORLDWIDE OUR PRESENCE -->
		<link type="text/css" rel="stylesheet" href="css/ucg_our_worldwide_presence_component.css"/>
		<!-- SOCIAL + SOCIAL FOOTER -->
		<link type="text/css" rel="stylesheet" href="css/ucg_social.css"/>

		<!-- SPECIFIC CSS END HERE -->

		<link type="text/css" rel="stylesheet" href="css/retina.css"/>

		<jsp:include page="includes/js.html"></jsp:include>

		<!-- SPECIFIC JS START HERE -->

		<!-- TITLE -->
		<script type="text/javascript" src="js/ucg_title.js"></script>
		<!-- HOME SWIPER -->
		<script type="text/javascript" src="plugin/js/idangerous.swiper.js"></script>
		<script type="text/javascript" src="js/videoplayer.js"></script>
		<script type="text/javascript" src="js/ucg_swiper_homepage.js"></script>
		<!-- SPACER -->
		<script type="text/javascript" src="js/ucg_spacer.js"></script>	
		<!-- INTRADAY -->
		<script type="text/javascript" src="js/ucg_intraday.js"></script>
		<!-- LIST LINK -->
		<!-- CONTAINER SWIPER -->
		<script type="text/javascript" src="js/ucg_container_swiper.js"></script>
		<!-- FORM -->
		<script type="text/javascript" src="plugin/js/icheck.min.js"></script>
		<script type="text/javascript" src="js/form.js"></script>
		<!-- CALENDAR TOOL -->
		<script type="text/javascript" src="plugin/js/doT.min.js"></script>
		<script type="text/javascript" src="js/ucg_calendar_tools.js"></script>

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

						<!-- Modal -->
						<div class="ucg_videoplayer_container">
							<div class="ucg_videoplayer modal fade" tabindex="-1" role="dialog" aria-labelledby="ucg_videoplayer" aria-hidden="true">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
										</div>
										<div class="modal-body">
											<iframe width="480px" height="320px" src="" frameborder="0" allowfullscreen></iframe>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- Modal -->

						<div class="parsys contentpagewelcome-parsys">
							<div class="section">
							<!-- HOME SWIPER -->
								<div class="panel ucg_swiper_hp">
									<div class="swiper-container">
										<div class="swiper-wrapper">
											<!--First Slide-->
											<div class="swiper-slide">
												<img alt="Swipe 1" src="img/swiper-aboutus.jpg" data-thumb="img/swiper-aboutus-thumb.jpg" data-order="0">
												<div class="ucg_swiper_hp_content">
													<div class="container">
														<div class="ucg_swiper_hp_title">
															<h3>Federico Ghizzoni, Ceo</h3>
														</div>
														<div class="ucg_swiper_hp_text">
															<h4>CEO Federico Ghizzoni Presents the UniCredit Strategic Approach and its Future Perspectives</h4>
															<a class="video" href="javascript:void(0);" data-video="https://www.youtube.com/embed/j_kOGqFslos?autoplay=1" target="_self">Play video</a>
														</div>
													</div>
												</div>
											</div>

											<!--Second Slide-->
											<div class="swiper-slide">
												<img alt="Swipe 2" src="img/swiper-governance.jpg" data-thumb="img/swiper-governance-thumb.jpg" data-order="1">
												<div class="ucg_swiper_hp_content">
													<div class="container">
														<div class="ucg_swiper_hp_title">
															<h3>Shareholders Meeting</h3>
														</div>
														<div class="ucg_swiper_hp_text">
															<h4>An UniCredit Shareholders' Meeting was held in Rome in both its Ordinary and Extraordinary session on May 13, 2014. Visit of our partner and discover our corporate solutions.</h4>
															<a class="internal" href="javascript:void(0);" data-video="https://www.youtube.com/embed/j_kOGqFslos?autoplay=1" target="_self">Visit section</a>
														</div>
													</div>
												</div>
											</div>

											<!--Third Slide-->
											<div class="swiper-slide">
												<img alt="Swipe 3" src="img/swiper-investors.jpg" data-thumb="img/swiper-investors-thumb.jpg" data-order="2">
												<div class="ucg_swiper_hp_content">
													<div class="container">
														<div class="ucg_swiper_hp_title">
															<h3>3Q14 Group Results Presentations</h3>
														</div>
														<div class="ucg_swiper_hp_text">
															<h4>An UniCredit Shareholders' Meeting was held in Rome in both its Ordinary and Extraordinary session on May 13, 2014</h4>
															<a class="external" href="javascript:void(0);" data-video="https://www.youtube.com/embed/j_kOGqFslos?autoplay=1" target="_blank">Visit partners</a>
														</div>
													</div>
												</div>
											</div>
											<!--Etc..-->
										</div>
									</div>
									<div class="ucg_swiper_hp_arrows">
										<div class="container">
											<div class="ucg_swiper_hp_arrow ucg_swiper_hp_arrow_left"><a href="javascript: void(0);"></a></div>
											<div class="ucg_swiper_hp_arrow ucg_swiper_hp_arrow_right"><a href="javascript: void(0);"></a></div>
										</div>
									</div>
									<div class="ucg_swiper_hp_pagination hidden-xs">
										<div class="container">
											<div class="swiper_pagination"></div>
										</div>
									</div>
								</div>
							<!-- HOME SWIPER -->
							</div>
						</div>

						<div class="parsys contentpagewelcome-parsys">
							<div class="section">
								<div class="ucg_spacer" data-ucg-height-mobile="40" data-ucg-height="40"></div>
							</div>
						</div>

						<!-- TITLE -->
						<div class="parsys contentpagewelcome-parsys">
							<div class="parbase section textimage">
								<div class="panel ucg_title_component">
									<div class="container">
										<div class="ucg_title_text_container">
											<div class="ucg_title">
												<h2>Financial highlights</h2>
											</div>
											<div class="ucg_subtitle"><h4></h4></div>
										</div>
										<div class="ucg_title_image"></div>
									</div>
								</div>
							</div>
						</div>
						<!-- TITLE -->

						<div class="parsys contentpagewelcome-parsys">
							<div class="section">
								<div class="ucg_spacer" data-ucg-height-mobile="10" data-ucg-height="20"></div>
							</div>
						</div>

						<div class="parsys_column three-columns-box clearfix">
							<div class="parsys_column three-columns-box-c0">
							<!-- INTRADAY -->
								<div class="panel ucg_intraday without-image">
										<div class="container">
											<div class="ucg_intraday_title">
												<span>UNICREDIT SHARE - INTRADAY</span>
											</div>
											<div class="ucg_intraday_text">
												<div class="title">Last price</div>
												<span class="value">6,16</span>
												<span class="currency">&euro;</span>
												<span class="trend up">+ 0,24</span>
												<div class="clear"></div>
											</div>
											<div class="ucg_intraday_date">
												<span class="day">06</span>
												<span class="month">October</span>
												<span class="year">2014</span>
												<div class="right">
													<span class="hours">12</span>
													<span class="minutes">20</span>
												</div>
												<div class="clear"></div>
											</div>
										</div>
									</div>
									<div class="panel ucg_linklist">
										<div class="container">
											<ul class="ucg_link_container">
												<li class="ucg_internal_link">
													<a href="#">Details</a>
												</li>
											</ul>
										</div>
									</div>
							<!-- INTRADAY -->
							</div>

							<div class="parsys_column three-columns-box-c1">
							<!-- CONTAINER SWIPER -->
								<div class="ucg_container_swiper panel swiper" data-name="Container002">
									<div class="container">
										<div class="ucg_container_swiper_pagination">
											<div class="ucg_container_name">
												<h4>Highlights</h4>
											</div>
											<div class="swiper_pagination"></div>
										</div>
										<div class="swiper-container">
											<div class="swiper-wrapper">
												<div class="swiper-slide">
													<div class="panel ucg_image_text">
														<div class="container">
															<div class="ucg_img">
																<img src="img/Milan_HQ.png" alt="">
															</div>
															<div class="ucg_txt">
																<h3>Corporate Governance report</h3>
																<p>As a leading European bank, we make it easy for our customers to seize the opportunities and meet the challenges of real life.</p>
																<div class="panel ucg_linklist">
																	<div class="container">
																		<ul class="ucg_link_container">
																			<li class="ucg_internal_link">
																				<a href="javascript:void(0);">Organizational structure</a>
																			</li>
																			<li class="ucg_internal_link">
																				<a href="javascript:void(0);">Management</a>
																			</li>
																		</ul>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="swiper-slide">
													<div class="ucg_text">
														<div class="ucg_text_container">
															<p>
																<span class="ucg_date"><b>14 November</b> 2014 - 10:00</span>
																<span class="ucg_introTitle"><a class="ucg_titleLink" href="javascript:void(0);">Resoconto intermedio di gestione al 30 settembre 2014</a></span>
																<span class="ucg_intro">Si rende noto che il Resoconto intermedio di gestione al 30 settembre 2014 è disponibile al pubblico presso la Sede Legale e la Direzione Generale della Società, e pubblicato ...</span>
															</p>
															<div class="panel ucg_linklist">
																<div class="container">
																	<ul class="ucg_link_container">
																		<li class="ucg_internal_link">
																			<a href="#">See all press releases</a>
																		</li>
																	</ul>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="swiper-slide">
													<div class="ucg_text">
														<div class="ucg_text_container">
															<p>
																<span class="ucg_date"><b>10 November</b> 2014 - 11:00</span>
																<span class="ucg_introTitle"><a class="ucg_titleLink" href="javascript:void(0);">UniCredit: nominato il nuovo Responsabile della Divisione Central &amp; Eastern Europe (CEE)</a></span>
																<span class="ucg_intro">Nel corso della riunione odierna, il Consiglio di Amministrazione di UniCredit ha nominato, con decorrenza 16 febbraio 2015, il signor Carlo Vivaldi quale nuovo responsabile della ...</span>
															</p>
															<div class="panel ucg_linklist">
																<div class="container">
																	<ul class="ucg_link_container">
																		<li class="ucg_internal_link">
																			<a href="#">See all press releases</a>
																		</li>
																	</ul>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							<!-- CONTAINER SWIPER -->
							</div>

							<div class="parsys_column three-columns-box-c2">
							<!-- TEXT IMAGE -->
								<div class="ucg_title ucg_no_image">
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
								<div class="panel ucg_image_text">
									<div class="container">
										<div class="ucg_img">
											<img src="img/real_life_banking.png" alt="">
										</div>
										<div class="ucg_txt">
											<h3>Real-life banking</h3>
											<p>As a leading European bank, we make it easy for our customers to seize the opportunities and meet the challenges of real life.</p>
											<div class="panel ucg_linklist">
												<div class="container">
													<ul class="ucg_link_container">
														<li class="ucg_internal_link">
															<a href="javascript:void(0);">Learn more about our identity</a>
														</li>
													</ul>
												</div>
											</div>
										</div>
									</div>
								</div>
							<!-- TEXT IMAGE -->
							</div>
						</div>

						<div class="panel grey">
							<div class="parsys contentpagewelcome-parsys">
								<div class="section">
									<div class="ucg_spacer" data-ucg-height-mobile="10" data-ucg-height="20"></div>
								</div>
							</div>
							<div class="parsys contentpagewelcome-parsys">
								<div class="section">
								<!-- CALENDAR TOOL -->
								<div class="panel ucg_calendar_tool">
									<div class="parsys_column two-columns-box clearfix">
										<div class="parsys_column two-columns-box-c0">
											<div class="panel ucg_title">
												<div class="container">
													<div class="ucg_title_text_container">
														<div class="ucg_title_container">
															<h2>Events</h2>
														</div>
														<div class="ucg_subtitle">
															<h4></h4>
														</div>
													</div>
													<div class="ucg_title_image_container"></div>
												</div>
											</div>
										</div>
										<div class="parsys_column two-columns-box-c1">
											<div class="panel ucg_calendar_tool_controller">
												<div class="container">
													<div class="ucg_radio checked col-xs-6">
														<input class="iradio_ubis" checked type="radio" name="switchcalendar" value="event" data-swiper="Events001"/>
														<label for="switchcalendar">All Events</label>
													</div>
													<div class="ucg_radio col-xs-6">
														<input class="iradio_ubis" type="radio" name="switchcalendar" value="financial" data-swiper="Events001"/>
														<label for="switchcalendar">Financial Events</label>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="parsys_column three-columns-box clearfix swiper-container" data-type="event" data-name="Events001" data-category="">
										<div class="swiper-wrapper">
										</div>
									</div>
									<div class="ucg_calendar_tool_addon-container panel">
										<div class="container">
											<div class="ucg_calendar_tool_arrows panel hidden-xs">
												<div>
													<a class="prev" href="javascript:void(0);" data-target="Events001"></a>
													<a class="next" href="javascript:void(0);" data-target="Events001"></a>
												</div>
											</div>
											<div class="panel ucg_linklist">
												<ul class="ucg_link_container">
													<li class="ucg_internal_link">
														<a href="javascript:void(0);">Financial highlights</a>
													</li>
												</ul>
											</div>
										</div>
									</div>
								</div>
								<!-- CALENDAR TOOL -->
								</div>
							</div>
							<div class="parsys contentpagewelcome-parsys">
								<div class="section">
									<div class="ucg_spacer" data-ucg-height-mobile="10" data-ucg-height="20"></div>
								</div>
							</div>
						</div>

						<div class="parsys contentpagewelcome-parsys">
							<div class="section">
								<div class="ucg_spacer" data-ucg-height-mobile="20" data-ucg-height="40"></div>
							</div>
						</div>

						<div class="parsys_column first-separator twoone-columns-box clearfix">
							<div class="parsys_column twoone-columns-box-c0">
								<div class="ucg_container_swiper panel" data-name="Container001">
									<div class="container">
										<div class="ucg_container_swiper_pagination">
											<div class="ucg_container_name">
												<h4>Press Releases</h4>
											</div>
											<div class="swiper_pagination"></div>
										</div>
										<div class="swiper-container">
											<div class="swiper-wrapper">
												<div class="swiper-slide">
													<div class="ucg_text">
														<div class="ucg_text_container">
															<p>
																<span class="ucg_date"><b>14 November</b> 2014 - 10:00</span>
																<span class="ucg_introTitle"><a class="ucg_titleLink" href="javascript:void(0);">Resoconto intermedio di gestione al 30 settembre 2014</a></span>
																<span class="ucg_intro">Si rende noto che il Resoconto intermedio di gestione al 30 settembre 2014 è disponibile al pubblico presso la Sede Legale e la Direzione Generale della Società, e pubblicato ...</span>
															</p>
															<div class="panel ucg_linklist">
																<div class="container">
																	<ul class="ucg_link_container">
																		<li class="ucg_internal_link">
																			<a href="#">See all press releases</a>
																		</li>
																	</ul>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="swiper-slide">
													<div class="panel ucg_image_text">
														<div class="container">
															<div class="ucg_img">
																<img src="img/Milan_HQ.png" alt="">
															</div>
															<div class="ucg_txt">
																<h3>Corporate Governance report</h3>
																<p>As a leading European bank, we make it easy for our customers to seize the opportunities and meet the challenges of real life.</p>
																<div class="panel ucg_linklist">
																	<div class="container">
																		<ul class="ucg_link_container">
																			<li class="ucg_internal_link">
																				<a href="javascript:void(0);">Organizational structure</a>
																			</li>
																			<li class="ucg_internal_link">
																				<a href="javascript:void(0);">Management</a>
																			</li>
																		</ul>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="swiper-slide">
													<div class="ucg_text">
														<div class="ucg_text_container">
															<p>
																<span class="ucg_date"><b>10 November</b> 2014 - 11:00</span>
																<span class="ucg_introTitle"><a class="ucg_titleLink" href="javascript:void(0);">UniCredit: nominato il nuovo Responsabile della Divisione Central &amp; Eastern Europe (CEE)</a></span>
																<span class="ucg_intro">Nel corso della riunione odierna, il Consiglio di Amministrazione di UniCredit ha nominato, con decorrenza 16 febbraio 2015, il signor Carlo Vivaldi quale nuovo responsabile della ...</span>
															</p>
															<div class="panel ucg_linklist">
																<div class="container">
																	<ul class="ucg_link_container">
																		<li class="ucg_internal_link">
																			<a href="#">See all press releases</a>
																		</li>
																	</ul>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="parsys_column twoone-columns-box-c1">
								<!-- CONTAINER SWIPER -->
								<div class="ucg_container_swiper panel" data-name="Container003">
									<div class="container">
										<div class="ucg_container_swiper_pagination">
											<div class="ucg_container_name">
												<h4>Highlights</h4>
											</div>
											<div class="swiper_pagination"></div>
										</div>
										<div class="swiper-container">
											<div class="swiper-wrapper">
												<div class="swiper-slide">
													<div class="panel ucg_image_text">
														<div class="container">
															<div class="ucg_img">
																<img src="img/Milan_HQ.png" alt="">
															</div>
															<div class="ucg_txt">
																<h3>Corporate Governance report</h3>
																<p>As a leading European bank, we make it easy for our customers to seize the opportunities and meet the challenges of real life.</p>
																<div class="panel ucg_linklist">
																	<div class="container">
																		<ul class="ucg_link_container">
																			<li class="ucg_internal_link">
																				<a href="javascript:void(0);">Organizational structure</a>
																			</li>
																			<li class="ucg_internal_link">
																				<a href="javascript:void(0);">Management</a>
																			</li>
																		</ul>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="swiper-slide">
													<div class="ucg_text">
														<div class="ucg_text_container">
															<p>
																<span class="ucg_date"><b>14 November</b> 2014 - 10:00</span>
																<span class="ucg_introTitle"><a class="ucg_titleLink" href="javascript:void(0);">Resoconto intermedio di gestione al 30 settembre 2014</a></span>
																<span class="ucg_intro">Si rende noto che il Resoconto intermedio di gestione al 30 settembre 2014 è disponibile al pubblico presso la Sede Legale e la Direzione Generale della Società, e pubblicato ...</span>
															</p>
															<div class="panel ucg_linklist">
																<div class="container">
																	<ul class="ucg_link_container">
																		<li class="ucg_internal_link">
																			<a href="#">See all press releases</a>
																		</li>
																	</ul>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="swiper-slide">
													<div class="ucg_text">
														<div class="ucg_text_container">
															<p>
																<span class="ucg_date"><b>10 November</b> 2014 - 11:00</span>
																<span class="ucg_introTitle"><a class="ucg_titleLink" href="javascript:void(0);">UniCredit: nominato il nuovo Responsabile della Divisione Central &amp; Eastern Europe (CEE)</a></span>
																<span class="ucg_intro">Nel corso della riunione odierna, il Consiglio di Amministrazione di UniCredit ha nominato, con decorrenza 16 febbraio 2015, il signor Carlo Vivaldi quale nuovo responsabile della ...</span>
															</p>
															<div class="panel ucg_linklist">
																<div class="container">
																	<ul class="ucg_link_container">
																		<li class="ucg_internal_link">
																			<a href="#">See all press releases</a>
																		</li>
																	</ul>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							<!-- CONTAINER SWIPER -->
							</div>
						</div>

						<div class="parsys contentpagewelcome-parsys">
							<div class="section">
								<!-- HORIZONTAL LINE -->
								<div class="ucg_horizontal_line">
									<div class="spacer1"></div>
									<div class="spacer2"></div>
								</div>
								<!-- HORIZONTAL LINE -->
							</div>
						</div>

						<div class="parsys contentpagewelcome-parsys">
							<div class="section">
								<div class="ucg_spacer" data-ucg-height-mobile="20" data-ucg-height="45"></div>
							</div>
						</div>

						<div class="parsys contentpagewelcome-parsys">
							<div class="section">
							<!-- TITLE WORLDWIDE OUR PRESENCE -->
								<div class="panel ucg_title ucg_no_image">
									<div class="container">
										<div class="ucg_cols ucg_cols_text col-xs-12">
											<div class="ucg_title_container">
												<h2>Our worldwide presence</h2>
											</div>
											<div class="ucg_subtitle_container"><h4></h4></div>
										</div>
										<div class="ucg_cols ucg_cols_image col-xs-12">
											<div class="ucg_title_image_container"></div>
										</div>
									</div>
								</div>
							<!-- TITLE WORLDWIDE OUR PRESENCE -->
							</div>
						</div>

						<div class="parsys contentpagewelcome-parsys">
							<div class="section">
								<div class="ucg_spacer" data-ucg-height-mobile="25" data-ucg-height="50"></div>
							</div>
						</div>

						<div class="parsys contentpagewelcome-parsys">
							<div class="section">
							<!-- WORLDWIDE OUR PRESENCE -->
								<div class="panel ucg_our_worldwide_presence">
									<div class="container">
										<div class="row_box col-xs-12 col-sm-4 left">
											<div class="text-left col-xs-12">More than</div>
											<div class="imageBranches col-xs-4"></div>
											<div class="number col-xs-8">7,000</div>
											<div class="text-uppercase col-xs-12">Branches</div>
										</div>
										<div class="row_box col-xs-12 col-sm-4 left">
											<div class="text-left col-xs-12">We are present in</div>
											<div class="imageCountries col-xs-4"></div>
											<div class="number col-xs-8">17</div>
											<div class="text-uppercase col-xs-12">countries</div>
										</div>
										<div class="row_box col-xs-12 col-sm-4 left">
											<div class="text-left col-xs-12">More than</div>
											<div class="imageEmployers col-xs-4"></div>
											<div class="number col-xs-8">150,000</div>
											<div class="text-uppercase col-xs-12">Employers</div>
										</div>
									</div>
								</div>
							<!-- WORLDWIDE OUR PRESENCE -->
							</div>
						</div>

						<div class="parsys contentpagewelcome-parsys">
							<div class="section">
							<!-- LINKLIST WORLDWIDE OUR PRESENCE -->
								<div class="panel ucg_linklist">
									<div class="container">
										<ul class="ucg_link_container">
											<li class="ucg_internal_link">
												<a href="javascript:void(0);">UniCredit around the world</a>
											</li>
										</ul>
									</div>
								</div>
							<!-- LINKLIST WORLDWIDE OUR PRESENCE -->
							</div>
						</div>

						<div class="parsys contentpagewelcome-parsys">
							<div class="section">
								<div class="ucg_spacer" data-ucg-height-mobile="20" data-ucg-height="40"></div>
							</div>
						</div>

						<div class="panel grey">
							<div class="parsys contentpagewelcome-parsys">
								<div class="section">
									<div class="ucg_spacer" data-ucg-height-mobile="40" data-ucg-height="40"></div>
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
							<!-- TITLE -->
							<div class="parsys contentpagewelcome-parsys">
								<div class="section">
									<div class="ucg_spacer" data-ucg-height-mobile="30" data-ucg-height="40"></div>
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
											<div class="ucg_social_image">
											</div>
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
							<!-- 3 COLUMN SOCIAL -->
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
								<!-- SOCIAL FOOTER -->
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