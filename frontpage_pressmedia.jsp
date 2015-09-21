<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="it">
	<head>
		<jsp:include page="includes/meta.html"></jsp:include>

		<title>Template Press and Media</title>

		<jsp:include page="includes/css.html"></jsp:include>

		<!-- SPECIFIC CSS START HERE -->

		<!--generic CSS for Parsys Column container -->
		<link type="text/css" rel="stylesheet" href="css/ucg_parsys_column.css"/>

		<!-- SWIPER FRONTPAGE -->
		<link type="text/css" rel="stylesheet" href="css/videoplayer.css"/>
		<link type="text/css" rel="stylesheet" href="plugin/css/idangerous.swiper.css"/>
		<link type="text/css" rel="stylesheet" href="css/ucg_swiper_frontpage.css"/>
		<!-- SPACER -->
		<link type="text/css" rel="stylesheet" href="css/ucg_spacer.css"/>
		<!-- TABS -->
		<link type="text/css" rel="stylesheet" href="css/ucg_tab_component.css"/>
		<!-- VIDEO TEXT -->
		<link type="text/css" rel="stylesheet" href="css/videoplayer.css"/>
		<link type="text/css" rel="stylesheet" href="css/ucg_video_text_component.css"/>
		<!-- TITLE -->
		<link type="text/css" rel="stylesheet" href="css/ucg_title_component.css"/>
		<!-- TEXT -->
		<link type="text/css" rel="stylesheet" href="css/ucg_text_component.css"/>
		<!-- FORM -->
		<link type="text/css" rel="stylesheet" href="plugin/css/all.css"/>
		<link type="text/css" rel="stylesheet" href="css/form.css"/>
		<link type="text/css" rel="stylesheet" href="css/form-desktop.css"/>
		<!-- CALENDAR TOOL -->
		<link type="text/css" rel="stylesheet" href="css/ucg_calendar_tools_component.css"/>
		<!-- TEXT IMAGE -->
		<link type="text/css" rel="stylesheet" href="css/ucg_image_text_component.css"/>
		<!-- LIST LINK -->
		<link type="text/css" rel="stylesheet" href="css/ucg_link_component.css"/>
		<!-- HORIZONTAL LINE -->
		<link type="text/css" rel="stylesheet" href="css/ucg_horizontal_line_component.css"/>
		<!-- SOCIAL + SOCIAL FOOTER -->
		<link type="text/css" rel="stylesheet" href="css/ucg_social.css"/>

		<!-- SPECIFIC CSS END HERE -->

		<link type="text/css" rel="stylesheet" href="css/retina.css"/>

		<jsp:include page="includes/js.html"></jsp:include>

		<!-- SPECIFIC JS START HERE -->

		<!-- SWIPER FRONTPAGE -->
		<script type="text/javascript" src="js/videoplayer.js"></script>
		<script type="text/javascript" src="plugin/js/idangerous.swiper.js"></script>
		<script type="text/javascript" src="js/ucg_swiper_frontpage.js"></script>
		<!-- SPACER -->
		<script type="text/javascript" src="js/ucg_spacer.js"></script>
		<!-- TABS -->
		<script type="text/javascript" src="plugin/js/chosen.patched.jquery.js"></script>
		<script type="text/javascript" src="js/ucg_tab_component.js"></script>	
		<!-- TITLE -->
		<script type="text/javascript" src="js/ucg_title.js"></script>
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
											<iframe width="480" height="320" src="" frameborder="0" allowfullscreen></iframe>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- End Modal -->

						<div class="parsys contentpagewelcome-parsys">
							<div class="section">
								<!-- FRONTPAGE SWIPER -->
								<div class="panel ucg_swiper">
									<div class="swiper-container">
										<div class="swiper-wrapper">
											<!--First Slide-->
											<div class="swiper-slide">
												<img alt="Swipe 1" src="img/swiper-aboutus.jpg">
												<div class="ucg_swiper_content">
													<div class="container">
														<div class="ucg_swiper_text">
															<h1>Press & Media</h1>
															<h3>Federico Ghizzoni, Ceo</h3>
															<h4>CEO Federico Ghizzoni Presents the UniCredit Strategic Approach and its Future Perspectives</h4>
															<a class="video" href="javascript:void(0);" data-video="https://www.youtube.com/embed/j_kOGqFslos?autoplay=1" target="_self">Play video</a>
														</div>
													</div>
												</div>
											</div>

											<!--Second Slide-->
											<div class="swiper-slide">
												<img alt="Swipe 2" src="img/swiper-governance.jpg">
												<div class="ucg_swiper_content">
													<div class="container">
														<div class="ucg_swiper_text">
															<h1>Press & Media</h1>
															<h3>Shareholders Meeting</h3>
															<h4>An UniCredit Shareholders' Meeting was held in Rome in both its Ordinary and Extraordinary session on May 13, 2014. Visit of our partner and discover our corporate solutions.</h4>
															<a class="internal" href="javascript:void(0);" data-video="https://www.youtube.com/embed/j_kOGqFslos?autoplay=1" target="_self">Visit section</a>
														</div>
													</div>
												</div>
											</div>

											<!--Third Slide-->
											<div class="swiper-slide">
												<img alt="Swipe 3" src="img/swiper-investors.jpg">
												<div class="ucg_swiper_content">
													<div class="container">
														<div class="ucg_swiper_text">
															<h1>Press & Media</h1>
															<h3>3Q14 Group Results Presentations</h3>
															<h4>An UniCredit Shareholders' Meeting was held in Rome in both its Ordinary and Extraordinary session on May 13, 2014</h4>
															<a class="external" href="javascript:void(0);" data-video="https://www.youtube.com/embed/j_kOGqFslos?autoplay=1" target="_blank">Visit partners</a>
														</div>
													</div>
												</div>
											</div>
											<!--Etc..-->
										</div>
									</div>
									<div class="ucg_swiper_arrows">
										<div class="container">
											<div class="ucg_swiper_arrow ucg_swiper_arrow_left"><a href="javascript: void(0);"></a></div>
											<div class="ucg_swiper_arrow ucg_swiper_arrow_right"><a href="javascript: void(0);"></a></div>
										</div>
									</div>
								</div>
								<!-- FRONTPAGE SWIPER -->
							</div>
						</div>

						<div class="parsys contentpagewelcome-parsys">
							<div class="section">
								<!-- TABS -->
								<div class="ucg_tab">
									<div class="panel tabs">
										<div class="container">
											<div data-tabpanel="tabPanelOne" class="tab" style="padding-left: 89.5px; padding-right: 89.5px;">
												<div class="tabHeader">
													<a href="javascript:void(0);">Latest Press Release</a>
												</div>
											</div>
											<div data-tabpanel="tabPanelTwo" class="tab active" style="padding-left: 89.5px; padding-right: 89.5px;">
												<div class="tabHeader">
													<a href="javascript:void(0);">Latest News</a>
												</div>
											</div>
										</div>
									</div>

									<div class="panel dropdown" style="display: none;">
										<div class="container">
											<div class="col-xs-12">
												<select data-placeholder="Select category" class="chosen-select" name="pressAndNews" style="display: none;">
													<option data-value="tabPanelOne" value="tabPanelOne">Latest Press Release</option>
													<option data-value="tabPanelTwo" value="tabPanelTwo">Latest News</option>
												</select><div class="chosen-container chosen-container-single chosen-container-single-nosearch" style="width: 100%;" title=""><a tabindex="-1" class="chosen-single"><span>Latest Press Release</span><div><b></b></div></a><div class="chosen-drop"><div class="chosen-search"><input type="text" autocomplete="off" readonly=""></div><ul class="chosen-results"></ul></div></div>
											</div>
										</div>
									</div>

									<div class="panel tabsBody">
										<div class="container">
											<div class="tabPanel tabPanelOne">
												<div class="tabSection clearfix">
													<div class="panel ucg_text">
														<div class="container">
															<div class="ucg_text_container">
																<p class="ucg_news">
																	<span class="ucg_date"><b>15 November</b> 2014 - 11:00</span>
																	<span class="ucg_introTitle"><a class="ucg_titleLink" href="javascript:void(0);">"L'Arena di Verona incontra Berlino" un evento musicale di successo.</a></span>
																	<span class="ucg_intro">UniCredit, HypoVereinsbank e l'Ambasciata d'Italia a Berlino sono orgogliose di aver ospitato ieri sera per il sesto anno consecutivo il concerto "L'Arena di Verona incontra Berlino"...</span>
																</p>
																<p class="ucg_news">
																	<span class="ucg_date"><b>14 November</b> 2014 - 10:00</span>
																	<span class="ucg_introTitle"><a class="ucg_titleLink" href="javascript:void(0);">Resoconto intermedio di gestione al 30 settembre 2014</a></span>
																	<span class="ucg_intro">Si rende noto che il Resoconto intermedio di gestione al 30 settembre 2014 è disponibile al pubblico presso la Sede Legale e la Direzione Generale della Società, e pubblicato ...</span>
																</p>
																<p class="ucg_news">
																	<span class="ucg_date"><b>10 November</b> 2014 - 11:00</span>
																	<span class="ucg_introTitle"><a class="ucg_titleLink" href="javascript:void(0);">UniCredit: nominato il nuovo Responsabile della Divisione Central &amp; Eastern Europe (CEE)</a></span>
																	<span class="ucg_intro">Nel corso della riunione odierna, il Consiglio di Amministrazione di UniCredit ha nominato, con decorrenza 16 febbraio 2015, il signor Carlo Vivaldi quale nuovo responsabile della ...</span>
																</p>
																<div class="panel ucg_linklist">
																	<div class="container">
																		<ul class="ucg_link_container">
																			<li class="ucg_internal_link">
																				<a class="ucg_link" href="javascript:void(0);">See all press releases</a>
																			</li>
																		</ul>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>

											<div class="tabPanel tabPanelTwo selected">
												<div class="tabSection clearfix">
													<div class="panel ucg_video_text">
														<div class="container">
															<div class="ucg_video">
																<a data-video="https://www.youtube.com/embed/j_kOGqFslos?autoplay=1" href="javascript:void(0);" class="ucg_videoplayer_starter" style="width: 100px; height: 0px;"></a>
																<img title="Press and news" alt="Press and news" src="img/press_and_news.png" class="placeholder">
															</div>
															<div class="ucg_txt">
																<h3>Celebrating Christmas with UniCredit's Light-Covered Art in Milan</h3>
																<p>UniCredit will help celebrate Christmas at Milan's Gae Aulenti Square from December 6 to January 6 by erecting a Christmas tree sculpture that spells "Best Wishes" in all of our Group's languages and by lighting the spire of UniCredit Tower ...</p>
																<div class="panel ucg_linklist">
																	<div class="container">
																		<ul class="ucg_link_container">
																			<li class="ucg_link">
																				<a href="javascript:void(0);">Read more</a>
																			</li>
																		</ul>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="parsys contentpagewelcome-parsys">
													<div class="section">
														<div class="ucg_spacer" data-ucg-height-mobile="15" data-ucg-height="30"></div>
													</div>
												</div>
												<div class="parsys_column three-columns-box clearfix">
													<div class="parsys_column three-columns-box-c0">
														<div class="panel ucg_image_text">
															<div class="container">
																<div class="ucg_img">
																	<img src="img/real_life_banking.png" alt="">
																</div>
															</div>
														</div>
														<div class="panel ucg_text">
															<div class="container">
																<div class="ucg_text_container">
																	<p>
																		<span class="ucg_date"><b>15 November to 12 December 2014</b></span>
																		<span class="ucg_introTitle"><a class="ucg_titleLink" href="javascript:void(0);">Consolidated Quarterly Report as at 31.3.15 #2</a></span>
																	</p>
																</div>
															</div>
														</div>
													</div>
													<div class="parsys_column three-columns-box-c1">
														<div class="panel ucg_image_text">
															<div class="container">
																<div class="ucg_img">
																	<img src="img/DISTORSIONI_MOLASCHI.png" alt="">
																</div>
															</div>
														</div>
														<div class="panel ucg_text">
															<div class="container">
																<div class="ucg_text_container">
																	<p>
																		<span class="ucg_date"><b>15 November to 12 December 2014</b></span>
																		<span class="ucg_introTitle"><a class="ucg_titleLink" href="javascript:void(0);">Consolidated Quarterly Report as at 31.3.15 #2</a></span>
																	</p>
																</div>
															</div>
														</div>
													</div>
													<div class="parsys_column three-columns-box-c2">
														<div class="panel ucg_image_text">
															<div class="container">
																<div class="ucg_img">
																	<img src="img/RIFLESSI_TITTI_CIMMINO.png" alt="">
																</div>
															</div>
														</div>
														<div class="panel ucg_text">
															<div class="container">
																<div class="ucg_text_container">
																	<p>
																		<span class="ucg_date"><b>15 November to 12 December 2014</b></span>
																		<span class="ucg_introTitle"><a class="ucg_titleLink" href="javascript:void(0);">Consolidated Quarterly Report as at 31.3.15 #2</a></span>
																	</p>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="parsys contentpagewelcome-parsys">
													<div class="section">
														<!-- LINKLIST -->
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
										</div>
									</div>
								</div>
								<!-- TABS -->
							</div>
						</div>

						<div class="parsys contentpagewelcome-parsys">
							<div class="section">
								<div class="ucg_spacer" data-ucg-height-mobile="30" data-ucg-height="90"></div>
							</div>
						</div>

						<div class="panel grey">
							<div class="parsys contentpagewelcome-parsys">
								<div class="section">
									<div class="ucg_spacer" data-ucg-height-mobile="15" data-ucg-height="30"></div>
								</div>
							</div>
							<div class="parsys contentpagewelcome-parsys">
								<div class="section">
									<!-- CALENDAR TOOL -->
									<div class="panel ucg_calendar_tool">
										<div class="panel ucg_title">
											<div class="container">
												<div class="ucg_title_text_container">
													<div class="ucg_title_container">
														<h2>Calendar</h2>
													</div>
													<div class="ucg_subtitle">
														<h4></h4>
													</div>
												</div>
												<div class="ucg_title_image_container"></div>
											</div>
										</div>
										<div class="parsys_column three-columns-box clearfix swiper-container" data-type="event" data-name="Event001" data-category="">
											<div class="swiper-wrapper">
											</div>
										</div>
										<div class="ucg_calendar_tool_addon-container panel">
											<div class="container">
												<div class="ucg_calendar_tool_arrows panel hidden-xs">
													<div>
														<a class="prev" href="javascript:void(0);" data-target="Event001"></a>
														<a class="next" href="javascript:void(0);" data-target="Event001"></a>
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
									<!-- /END CALENDAR TOOL -->
								</div>
							</div>
							<div class="parsys contentpagewelcome-parsys">
								<div class="section">
									<div class="ucg_spacer" data-ucg-height-mobile="20" data-ucg-height="40"></div>
								</div>
							</div>
						</div>

						<div class="parsys contentpagewelcome-parsys">
							<div class="section">
								<div class="ucg_spacer" data-ucg-height-mobile="25" data-ucg-height="50"></div>
							</div>
						</div>

						<div class="parsys contentpagewelcome-parsys">
							<div class="section textimage">
								<!-- TITLE -->
								<div class="panel ucg_title_component">
									<div class="container">
										<div class="ucg_title_text_container">
											<div class="ucg_title">
												<h2>Journalist resources</h2>
											</div>
											<div class="ucg_subtitle"><h4></h4></div>
										</div>
										<div class="ucg_title_image"></div>
									</div>
								</div>
								<!-- TITLE -->
							</div>
						</div>

						<div class="parsys contentpagewelcome-parsys">
							<div class="section">
								<div class="ucg_spacer" data-ucg-height-mobile="20" data-ucg-height="40"></div>
							</div>
						</div>

						<div class="parsys_column three-columns-box clearfix">
							<div class="parsys_column three-columns-box-c0">
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
							</div>
							<div class="parsys_column three-columns-box-c1">
								<div class="panel ucg_image_text">
									<div class="container">
										<div class="ucg_img">
											<img src="img/DISTORSIONI_MOLASCHI.png" alt="">
										</div>
										<div class="ucg_txt">
											<h3>Innovation</h3>
											<p>As a leading European bank, we make it easy for our customers to seize the opportunities and meet the challenges of real life.</p>
											<div class="panel ucg_linklist">
												<div class="container">
													<ul class="ucg_link_container">
														<li class="ucg_internal_link">
															<a href="javascript:void(0);">Innovation at Unicredit</a>
														</li>
													</ul>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="parsys_column three-columns-box-c2">
								<div class="panel ucg_image_text">
									<div class="container">
										<div class="ucg_img">
											<img src="img/RIFLESSI_TITTI_CIMMINO.png" alt="">
										</div>
										<div class="ucg_txt">
											<h3>Our business model</h3>
											<p>The UniCredit business model is based on global functions specialization, customers proximity, holding global coordination.</p>
											<div class="panel ucg_linklist">
												<div class="container">
													<ul class="ucg_link_container">
														<li class="ucg_internal_link">
															<a href="javascript:void(0);">Business model</a>
														</li>
													</ul>
												</div>
											</div>
										</div>
									</div>
								</div>
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
								<div class="ucg_spacer" data-ucg-height-mobile="25" data-ucg-height="50"></div>
							</div>
						</div>
						<div class="parsys_column twoone-columns-box clearfix first-separator">
							<div class="parsys_column twoone-columns-box-c0">
								<!-- TITLE -->
								<div class="panel ucg_title ucg_no_image">
									<div class="container">
										<div class="ucg_cols ucg_cols_text col-xs-12">
											<div class="ucg_title_container">
												<h2>UniNews</h2>
											</div>
											<div class="ucg_subtitle_container"><h4></h4></div>
										</div>
										<div class="ucg_cols ucg_cols_image col-xs-12">
											<div class="ucg_title_image_container"></div>
										</div>
									</div>
								</div>
								<!-- TITLE -->
								<div class="parsys contentpagewelcome-parsys">
									<div class="section">
										<div class="ucg_spacer" data-ucg-height-mobile="15" data-ucg-height="30"></div>
									</div>
								</div>
								<!-- TEXT IMAGE -->
								<div class="panel ucg_image_text">
									<div class="container">
										<div class="ucg_txt">
											<p>As a leading European bank, we make it easy for our customers to seize the opportunities and meet the challenges of real life.</p>
										</div>
									</div>
								</div>
								<!-- TEXT IMAGE -->
								<div class="parsys contentpagewelcome-parsys">
									<div class="section">
										<div class="ucg_spacer" data-ucg-height-mobile="25" data-ucg-height="50"></div>
									</div>
								</div>
								<!-- LINKLIST -->
								<div class="panel ucg_linklist">
									<div class="container">
										<ul class="ucg_link_container">
											<li class="ucg_internal_link">
												<a href="javascript:void(0);">Innovation at Unicredit</a>
											</li>
											<li class="ucg_internal_link">
												<a href="javascript:void(0);">Innovation at Unicredit</a>
											</li>
										</ul>
									</div>
								</div>
								<!-- LINKLIST -->
							</div>
							<div class="parsys_column twoone-columns-box-c1">
								<!-- TITLE -->
								<div class="panel ucg_title ucg_no_image">
									<div class="container">
										<div class="ucg_cols ucg_cols_text col-xs-12">
											<div class="ucg_title_container">
												<h2>Contacts</h2>
											</div>
											<div class="ucg_subtitle_container"><h4></h4></div>
										</div>
										<div class="ucg_cols ucg_cols_image col-xs-12">
											<div class="ucg_title_image_container"></div>
										</div>
									</div>
								</div>
								<!-- TITLE -->
								<div class="parsys contentpagewelcome-parsys">
									<div class="section">
										<div class="ucg_spacer" data-ucg-height-mobile="15" data-ucg-height="30"></div>
									</div>
								</div>
								<!-- TEXT IMAGE -->
								<div class="panel ucg_image_text">
									<div class="container">
										<div class="ucg_txt">
											<div class="ucg_text_container">
												<p>Media relations<br>
													Fax: +39 02 8862 2802<br>
													<a class="ucg_mail" href="mailto:mediarelations@unicredit.eu">mediarelations@unicredit.eu</a>
												</p>
											</div>
										</div>
									</div>
								</div>
								<!-- TEXT IMAGE -->
								<div class="parsys contentpagewelcome-parsys">
									<div class="section">
										<div class="ucg_spacer" data-ucg-height-mobile="25" data-ucg-height="50"></div>
									</div>
								</div>
								<!-- LINKLIST -->
								<div class="panel ucg_linklist">
									<div class="container">
										<ul class="ucg_link_container">
											<li class="ucg_internal_link">
												<a href="#">Read the latest issue</a>
											</li>
										</ul>
									</div>
								</div>
								<!-- LINKLIST -->
							</div>
						</div>
						<div class="parsys contentpagewelcome-parsys">
							<div class="section">
								<div class="ucg_spacer" data-ucg-height-mobile="15" data-ucg-height="30"></div>
							</div>
						</div>
						<div class="panel grey">
							<div class="parsys contentpagewelcome-parsys">
								<div class="section">
									<div class="ucg_spacer" data-ucg-height-mobile="25" data-ucg-height="50"></div>
								</div>
							</div>
							<!-- TITLE -->
							<div class="parsys contentpagewelcome-parsys">
								<div class="parbase section textimage">
									<div class="panel ucg_title_component">
										<div class="container">
											<div class="ucg_title_text_container">
												<div class="ucg_title">
													<h2>From our social media channels</h2>
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
									<div class="ucg_spacer" data-ucg-height-mobile="15" data-ucg-height="30"></div>
								</div>
							</div>
							<!-- 2 COLUMN SOCIAL -->
							<div class="parsys_column two-columns-box clearfix">
								<div class="parsys_column two-columns-box-c0">
									<div class="panel ucg_social ucg_social_twitter">
										<div class="container">
											<div class="ucg_social_title">Unicredit champions facebook</div>
											<div class="ucg_social_image">
												<img src="img/social-twitter-c2.jpg" alt="">
											</div>
											<div class="clear visible-xs"></div>
											<div class="ucg_social_data">
												<span>21 November</span>
											</div>
											<div class="ucg_social_text">
												<p><a href="javascript:void(0);" class="tag">#Unicredit</a>: la <a href="javascript:void(0);" class="tag">#Turchia</a> rappresenta uno dei principali mercati di sbocco per molte eccellenze del territorio laziale</p>
											</div>
										</div>
										<div class="container">
											<div class="ucg_social_link">
												<a target="_blank" href="https://www.facebook.com/UniCreditChampionsIT">Follow us</a>
											</div>
										</div>
									</div>
								</div>
								<div class="parsys_column two-columns-box-c1">
									<div class="panel ucg_social ucg_social_googleplus">
										<div class="container">
											<div class="ucg_social_title">+UniCreditGroup</div>
											<div class="ucg_social_image">
												<img src="img/social-googleplus-c2.jpg" alt="">
											</div>
											<div class="clear visible-xs"></div>
											<div class="ucg_social_data">
												<span>28 November</span>
											</div>
											<div class="ucg_social_text">
												<p>Erogato il primo finanziamento in equity di UniCredit Start Lab in compartecipazione con il partner LVenture Group <a href="javascript:void(0);" class="tag">#Unicredit</a></p>
											</div>
										</div>
										<div class="container">
											<div class="ucg_social_link">
												<a target="_blank" href="https://www.facebook.com/UniCreditChampionsIT">Follow us</a>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- 2 COLUMN SOCIAL -->
							<div class="parsys_column two-columns-box clearfix">
								<div class="parsys_column two-columns-box-c0">
									<div class="panel ucg_linklist">
										<div class="container">
											<ul class="ucg_link_container">
												<li class="ucg_internal_link">
													<a href="#">See UniCredit Group’s social wall</a>
												</li>
											</ul>
										</div>
									</div>
								</div>
								<div class="parsys_column two-columns-box-c1">
									<!-- SOCIAL FOOTER -->
									<div class="panel ucg_social_footer">
										<div class="container">
											<div class="ucg_social_title">
												<span class="col-xs-12">Follow UniCredit Group also on</span>
												<div class="ucg_social_others col-xs-12">
													<a class="unicredit" href="javascript:void(0);"></a>
													<a class="twitter" href="javascript:void(0);"></a>
													<a class="linkedin" href="javascript:void(0);"></a>
													<a class="facebook" href="javascript:void(0);"></a>
													<a class="googleplus" href="javascript:void(0);"></a>
													<a class="pinterest" href="javascript:void(0);"></a>
												</div>
											</div>
										</div>
									</div>
									<!-- SOCIAL FOOTER -->
								</div>
							</div>
							<div class="clear"></div>
						</div>

						<!-- PAGE ENDS HERE -->

						<jsp:include page="includes/footer.html"></jsp:include>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>