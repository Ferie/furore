<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="it">
	<head>
		<jsp:include page="includes/meta.html"></jsp:include>

		<title>Template Sustainability</title>

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
		<!-- TITLE -->
		<link type="text/css" rel="stylesheet" href="css/ucg_title_component.css"/>
		<!-- TEXT -->
		<link type="text/css" rel="stylesheet" href="css/ucg_text_component.css"/>
		<!-- INFOGRAFIC -->
		<link type="text/css" rel="stylesheet" href="css/ucg_infografic_component.css"/>
		<!-- TEXT IMAGE -->
		<link type="text/css" rel="stylesheet" href="css/ucg_image_text_component.css"/>
		<!-- LIST LINK -->
		<link type="text/css" rel="stylesheet" href="css/ucg_link_component.css"/>
		<!-- ADS -->
		<link type="text/css" rel="stylesheet" href="css/ucg_ads_component.css"/>
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
		<!-- TITLE -->
		<script type="text/javascript" src="js/ucg_title.js"></script>
		<!-- ADS -->
		<script type="text/javascript" src="js/ucg_ads.js"></script>

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
															<h1>Sustainability</h1>
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
															<h1>Sustainability</h1>
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
															<h1>Sustainability</h1>
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
								<div class="ucg_spacer" data-ucg-height-mobile="25" data-ucg-height="50"></div>
							</div>
						</div>
						<div class="parsys contentpagewelcome-parsys">
							<div class="section">
								<!-- TITLE -->
								<div class="panel ucg_title_component">
									<div class="container">
										<div class="ucg_title_text_container">
											<div class="ucg_title">
												<h2>A Sustainable Bank</h2>
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
								<div class="ucg_spacer" data-ucg-height-mobile="10" data-ucg-height="20"></div>
							</div>
						</div>
						<div class="parsys contentpagewelcome-parsys">
							<div class="section"><!-- TEXT -->
								<div class="panel ucg_text">
									<div class="container">
										<div class="ucg_text_container">
											<p>
												Austria<a class="apix">1</a> is one of the core markets of UniCredit Group, together with Germany, Italy and Central and Eastern Europe.<br>
												Within <b>UniCredit Group</b>, Bank Austria is responsible for all banking operations in the growth markets of Central and Eastern Europe (CEE), with the exception of Poland.
											</p>
										</div>
									</div>
								</div>
								<!-- TEXT -->
							</div>
						</div>
						<div class="parsys contentpagewelcome-parsys">
							<div class="section">
								<!-- INFOGRAFIC -->
								<div class="panel ucg_infografic">
									<div class="panel ucg_infografic_container">
										<div class="container">
											<div class="ucg_infografic_text">
												<div class="title">Operating profit (loss)</div>
												<div class="value">2,145</div>
												<div class="title">Net profit (loss)<a class="apix">3</a></div>
												<div class="value">722</div>
												<div class="title">Shareholders' equity</div>
												<div class="value">51,357</div>
												<div class="panel ucg_linklist">
													<div class="container">
														<ul class="ucg_link_container">
															<li class="ucg_internal_link">
																<a href="javascript:void(0);">Full financial highlights</a>
															</li>
														</ul>
													</div>
												</div>
											</div>
											<div class="panel ucg_image">
												<div class="ucg_image_container">
													<img src="img/ucg_infografic_type.png" alt="">
												</div>
												<div class="panel ucg_linklist">
													<div class="container">
														<ul class="ucg_link_container">
															<li class="ucg_internal_link">
																<a href="javascript:void(0);">See Group Balance</a>
															</li>
														</ul>
													</div>
												</div>
											</div>
											<div class="panel ucg_image">
												<div class="ucg_image_container">
													<img src="img/ucg_infografic_geopgraphicl.png" alt="">
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- INFOGRAFIC -->
							</div>
						</div>
						<div class="parsys contentpagewelcome-parsys">
							<div class="section">
								<div class="ucg_spacer" data-ucg-height-mobile="10" data-ucg-height="20"></div>
							</div>
						</div>
						<div class="panel grey">
							<div class="parsys contentpagewelcome-parsys">
								<div class="section">
									<div class="ucg_spacer" data-ucg-height-mobile="20" data-ucg-height="45"></div>
								</div>
							</div>
							<div class="parsys contentpagewelcome-parsys">
								<div class="section">
									<!-- TITLE -->
									<div class="panel ucg_title ucg_no_image">
										<div class="container">
											<div class="ucg_cols ucg_cols_text col-xs-12">
												<div class="ucg_title_container">
													<h2>Our multi-stakeholder approach</h2>
												</div>
												<div class="ucg_subtitle_container"><h4></h4></div>
											</div>
											<div class="ucg_cols ucg_cols_image col-xs-12">
												<div class="ucg_title_image_container"></div>
											</div>
										</div>
									</div>
									<!-- TITLE -->
								</div>
							</div>
							<div class="parsys contentpagewelcome-parsys">
								<div class="section">
									<div class="ucg_spacer" data-ucg-height-mobile="15" data-ucg-height="35"></div>
								</div>
							</div>
							<div class="parsys_column three-columns-box clearfix">
								<div class="parsys_column three-columns-box-c0">
									<div class="panel ucg_image_text">
										<div class="container">
											<div class="ucg_txt">
												<h3>Commercial banking activities</h3>
												<p>Investing in improvements to our business model and our banking skills so we can work more closely with customers and differentiate our services.</p>
											</div>
										</div>
									</div>
								</div>
								<div class="parsys_column three-columns-box-c1">
									<div class="panel ucg_image_text">
										<div class="container">
											<div class="ucg_txt">
												<h3>Corporate citizenship</h3>
												<p>Fostering financial inclusion, encouraging our customers to be better-informed and empowering citizens to participate more fully in the economic system; and by conserving natural resources to protect the environment.</p>

											</div>
										</div>
									</div>
								</div>
								<div class="parsys_column three-columns-box-c2">
									<div class="panel ucg_image_text">
										<div class="container">
											<div class="ucg_txt">
												<h3>Innovation</h3>
												<p>Supporting initiatives outside of a bank's traditional functions to help society address a variety of important needs, particularly in times of crisis.</p>

											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="parsys contentpagewelcome-parsys">
								<div class="section">
									<div class="panel ucg_linklist">
										<div class="container">
											<ul class="ucg_link_container">
												<li class="ucg_internal_link">
													<a href="javascript:void(0);">Learn more about our Culture of Sustainability</a>
												</li>
											</ul>
										</div>
									</div>
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
								<div class="ucg_spacer" data-ucg-height-mobile="20" data-ucg-height="45"></div>
							</div>
						</div>
						<div class="parsys contentpagewelcome-parsys">
							<div class="section">
								<!-- TITLE -->
								<div class="panel ucg_title ucg_no_image">
									<div class="container">
										<div class="ucg_cols ucg_cols_text col-xs-12">
											<div class="ucg_title_container">
												<h2>Our Commitment</h2>
											</div>
											<div class="ucg_subtitle_container"><h4></h4></div>
										</div>
										<div class="ucg_cols ucg_cols_image col-xs-12">
											<div class="ucg_title_image_container"></div>
										</div>
									</div>
								</div>
								<!-- TITLE -->
							</div>
						</div>
						<div class="parsys contentpagewelcome-parsys">
							<div class="section">
								<div class="ucg_spacer" data-ucg-height-mobile="15" data-ucg-height="35"></div>
							</div>
						</div>
						<div class="parsys_column onetwo-columns-box clearfix">
							<div class="parsys_column onetwo-columns-box-c0">
								<!-- TEXT IMAGE -->
								<div class="panel ucg_image_text">
									<div class="container">
										<div class="ucg_img">
											<img src="img/bkg_unicredit.png" alt="">
										</div>
									</div>
								</div>
								<!-- TEXT IMAGE -->
							</div>
							<div class="parsys_column onetwo-columns-box-c1">
								<!-- TEXT IMAGE -->
								<div class="panel ucg_image_text">
									<div class="container">
										<div class="ucg_txt">
											<h3>Innovation</h3>
											<p>As a leading European bank, we make it easy for our customers to seize the opportunities and meet the challenges of real life.</p>
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
										</div>
									</div>
								</div>
								<!-- TEXT IMAGE -->
							</div>
						</div>
						<div class="parsys_column onetwo-columns-box clearfix">
							<div class="parsys_column onetwo-columns-box-c0">
								<!-- TEXT IMAGE -->
								<div class="panel ucg_image_text">
									<div class="container">
										<div class="ucg_img">
											<img src="img/bkg_unicredit.png" alt="">
										</div>
									</div>
								</div>
								<!-- TEXT IMAGE -->
							</div>
							<div class="parsys_column onetwo-columns-box-c1">
								<!-- TEXT IMAGE -->
								<div class="panel ucg_image_text">
									<div class="container">
										<div class="ucg_txt">
											<h3>Innovation</h3>
											<p>As a leading European bank, we make it easy for our customers to seize the opportunities and meet the challenges of real life.</p>
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
										</div>
									</div>
								</div>
								<!-- TEXT IMAGE -->
							</div>
						</div>
						<div class="parsys_column onetwo-columns-box clearfix">
							<div class="parsys_column onetwo-columns-box-c0">
								<!-- TEXT IMAGE -->
								<div class="panel ucg_image_text">
									<div class="container">
										<div class="ucg_img">
											<img src="img/bkg_unicredit.png" alt="">
										</div>
									</div>
								</div>
								<!-- TEXT IMAGE -->
							</div>
							<div class="parsys_column onetwo-columns-box-c1">
								<!-- TEXT IMAGE -->
								<div class="panel ucg_image_text">
									<div class="container">
										<div class="ucg_txt">
											<h3>Innovation</h3>
											<p>As a leading European bank, we make it easy for our customers to seize the opportunities and meet the challenges of real life.</p>
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
										</div>
									</div>
								</div>
								<!-- TEXT IMAGE -->
							</div>
						</div>
						<div class="parsys_column onetwo-columns-box clearfix">
							<div class="parsys_column onetwo-columns-box-c0">
								<!-- TEXT IMAGE -->
								<div class="panel ucg_image_text">
									<div class="container">
										<div class="ucg_img">
											<img src="img/bkg_unicredit.png" alt="">
										</div>
									</div>
								</div>
								<!-- TEXT IMAGE -->
							</div>
							<div class="parsys_column onetwo-columns-box-c1">
								<!-- TEXT IMAGE -->
								<div class="panel ucg_image_text">
									<div class="container">
										<div class="ucg_txt">
											<h3>Innovation</h3>
											<p>As a leading European bank, we make it easy for our customers to seize the opportunities and meet the challenges of real life.</p>
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
										</div>
									</div>
								</div>
								<!-- TEXT IMAGE -->
							</div>
						</div>
						<div class="parsys_column onetwo-columns-box clearfix">
							<div class="parsys_column onetwo-columns-box-c0">
								<!-- TEXT IMAGE -->
								<div class="panel ucg_image_text">
									<div class="container">
										<div class="ucg_img">
											<img src="img/bkg_unicredit.png" alt="">
										</div>
									</div>
								</div>
								<!-- TEXT IMAGE -->
							</div>
							<div class="parsys_column onetwo-columns-box-c1">
								<!-- TEXT IMAGE -->
								<div class="panel ucg_image_text">
									<div class="container">
										<div class="ucg_txt">
											<h3>Innovation</h3>
											<p>As a leading European bank, we make it easy for our customers to seize the opportunities and meet the challenges of real life.</p>
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
										</div>
									</div>
								</div>
								<!-- TEXT IMAGE -->
							</div>
						</div>
						<div class="panel grey">
							<div class="parsys contentpagewelcome-parsys">
								<div class="section">
									<div class="ucg_spacer" data-ucg-height-mobile="20" data-ucg-height="45"></div>
								</div>
							</div>
							<div class="parsys contentpagewelcome-parsys">
								<div class="section">
										<div class="panel ucg_title">
											<div class="container">
												<div class="ucg_title_text_container">
													<div class="ucg_title_container">
														<h2>See also</h2>
													</div>
													<div class="ucg_subtitle">
													</div>
												</div>
												<div class="ucg_title_image_container">
												</div>
											</div>
										</div>
								</div>
							</div>
							<div class="parsys contentpagewelcome-parsys">
								<div class="section">
									<div class="ucg_spacer" data-ucg-height-mobile="15" data-ucg-height="35"></div>
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
												<div class="ucg_link">
													<a href="javascript:void(0);">Students programs</a>
												</div>
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
												<div class="ucg_link">
													<a href="javascript:void(0);">Students programs</a>
												</div>
												<div class="ucg_link">
													<a href="javascript:void(0);">Students programs</a>
												</div>
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
												<h3>Contacts</h3>
												<p>
												<b>Group Sustainability Unit</b><br/>
												Tel: +39 02 88624397 / 24246<br/>
												<a class="ucg_mail" href="mailto:groupsustainability@unicredit.eu">groupsustainability@unicredit.eu</a>
												</p>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="parsys contentpagewelcome-parsys">
								<div class="section">
									<!-- ADS -->
									<div class="panel ucg_ads">
										<div class="swiper-container">
											<div class="swiper-wrapper">
												<!--First Slide-->
												<div class="swiper-slide">
													<img alt="Swipe 1" src="img/ads_swiper_champions.jpg">
													<div class="ucg_ads_content">
														<div class="ucg_ads_text white">
															<h3>Unicredit is the official Bank of the UEFA Champions League</h3>
															<h4></h4>
															<a class="internal" href="https://www.youtube.com/embed/j_kOGqFslos?autoplay=1" target="_blank">Read more</a>
														</div>
													</div>
												</div>
												<div class="swiper-slide">
													<img alt="Swipe 2" src="img/ads_swiper_foobar01.jpg">
													<div class="ucg_ads_content">
														<div class="ucg_ads_text white">
															<h3>Unicredit is the official Bank of the UEFA Champions League 1</h3>
															<h4></h4>
															<a class="external" href="https://www.youtube.com/embed/j_kOGqFslos?autoplay=1" target="_blank">Visit our site</a>
														</div>
													</div>
												</div>
												<div class="swiper-slide">
													<img alt="Swipe 3" src="img/ads_swiper_foobar02.jpg">
													<div class="ucg_ads_content">
														<div class="ucg_ads_text dark">
															<h3>Unicredit is the official Bank of the UEFA Champions League 2</h3>
															<h4></h4>
															<a class="video" href="https://www.youtube.com/embed/j_kOGqFslos?autoplay=1" target="_self">Play video</a>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<!-- ADS -->
								</div>
							</div>
							<div class="parsys contentpagewelcome-parsys">
								<div class="section">
									<div class="ucg_spacer" data-ucg-height-mobile="20" data-ucg-height="45"></div>
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
									<div class="ucg_spacer" data-ucg-height-mobile="15" data-ucg-height="30"></div>
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