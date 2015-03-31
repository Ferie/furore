<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="it">
<head>
	<meta charset="utf-8"> 
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Template Investors</title>
	
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
	<!-- INTRADAY -->
	<link type="text/css" rel="stylesheet" href="css/ucg_intraday_component.css"/>
	<!-- TEXT -->
	<link type="text/css" rel="stylesheet" href="css/ucg_text_component.css"/>
	<!-- CONTAINER SWIPER -->
	<link type="text/css" rel="stylesheet" href="css/ucg_container_swiper.css"/>
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
	<!-- ADS -->
	<link type="text/css" rel="stylesheet" href="css/ucg_ads_component.css"/>
    
	
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
	<!-- INTRADAY -->
	<script type="text/javascript" src="js/ucg_intraday.js"></script>
	<!-- CONTAINER SWIPER -->
	<script type="text/javascript" src="js/ucg_container_swiper.js"></script>
	<!-- FORM -->
	<script type="text/javascript" src="plugin/js/icheck.min.js"></script>
	<script type="text/javascript" src="js/form.js"></script>
	<!-- CALENDAR TOOL -->
	<script type="text/javascript" src="plugin/js/doT.min.js"></script>
	<script type="text/javascript" src="js/ucg_calendar_tools.js"></script>
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
			
			<!-- PAGE START HERE -->
			
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
													<h1>Investors</h1>			
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
													<h1>Investors</h1>			
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
													<h1>Investors</h1>			
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
						<div class="ucg_spacer" data-ucg-height-mobile="20" data-ucg-height="40"></div>
					</div>
				</div>
				<div class="parsys contentpagewelcome-parsys">
					<div class="section">
						<!-- TITLE -->
						<div class="panel ucg_title_component">
							<div class="container">
								<div class="ucg_title_text_container">
									<div class="ucg_title">
										<h2>UniCredit Share - Intraday</h2>
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
				<div class="parsys_column twoone-columns-box clearfix">
					<div class="parsys_column twoone-columns-box-c0">
						<div class="panel ucg_image ucg_intraday">
							<div class="container">
								<div class="ucg_img">
									<img src="img/ucg_intraday_graph.png" alt="">
								</div>
							</div>
						</div>
					</div>
					<div class="parsys_column twoone-columns-box-c1">
						<div class="panel ucg_intraday with-image">
							<div class="container">
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
					</div>
				</div>		
				<div class="parsys contentpagewelcome-parsys">
					<div class="section">
						<!-- LINKLIST -->
						<div class="panel ucg_linklist">
							<div class="container">
								<ul class="ucg_link_container">
									<li class="ucg_internal_link">
										<a href="javascript:void(0);">Share details</a>
									</li>
								</ul>
							</div>
						</div>
						<!-- LINKLIST -->				
					</div>
				</div>
				<div class="parsys contentpagewelcome-parsys">
					<div class="section">
						<div class="ucg_spacer" data-ucg-height-mobile="15" data-ucg-height="35"></div>
					</div>
				</div>
				<div class="panel grey">
					<div class="parsys contentpagewelcome-parsys">
						<div class="section">
							<div class="ucg_spacer" data-ucg-height-mobile="25" data-ucg-height="50"></div>
						</div>
					</div>
					<div class="parsys contentpagewelcome-parsys">
						<div class="section">
							<!-- TITLE -->
							<div class="panel ucg_title ucg_no_image">
								<div class="container">
									<div class="ucg_cols ucg_cols_text col-xs-12">
										<div class="ucg_title_container">
											<h2>Investors toolkit</h2>
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
							<div class="ucg_spacer" data-ucg-height-mobile="5" data-ucg-height="10"></div>
						</div>
					</div>
				</div>
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
										<h2>Financial Calendar</h2>
									</div>
									<div class="ucg_subtitle">
										<h4></h4>
									</div>
								</div>
								<div class="ucg_title_image_container"></div>
							</div>
						</div>					
						<div class="parsys_column three-columns-box clearfix swiper-container" data-type="financial" data-name="Financial001" data-category="">	
							<div class="swiper-wrapper">
							</div>
						</div>
						<div class="ucg_calendar_tool_addon-container panel">
								<div class="container">
									<div class="ucg_calendar_tool_arrows panel hidden-xs">
										<div>
											<a class="prev" href="javascript:void(0);" data-target="Financial001"></a>
											<a class="next" href="javascript:void(0);" data-target="Financial001"></a>
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
						<div class="ucg_spacer" data-ucg-height-mobile="45" data-ucg-height="30"></div>
					</div>
				</div>
				<div class="panel grey">
					<div class="parsys contentpagewelcome-parsys">
						<div class="section">
							<div class="ucg_spacer" data-ucg-height-mobile="35" data-ucg-height="40"></div>
						</div>
					</div>
					<div class="parsys contentpagewelcome-parsys">
						<div class="section">
							<!-- TITLE -->
							<div class="panel ucg_title ucg_no_image">
								<div class="container">
									<div class="ucg_cols ucg_cols_text col-xs-12">
										<div class="ucg_title_container">
											<h2>Focus On</h2>
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
							<div class="ucg_spacer" data-ucg-height-mobile="15" data-ucg-height="20"></div>
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
										<p>
										As a leading European bank, we make it easy for our customers to seize the opportunities and meet the challenges of real life.<br/>
										
										</p>
										<div class="panel ucg_linklist">
											<div class="container">
												<ul class="ucg_link_container">
													<li class="ucg_download_link">
														<a href="javascript:void(0);"><b>PDF</b> | 2013 Consolidated Reports</a> (301kb)
													</li>
													<li class="ucg_external_link">
														<a href="javascript:void(0);">Innovation at Unicredit</a>
													</li>
													<li class="ucg_external_link">
														<a href="javascript:void(0);">Innovation at Unicredit</a>
													</li>
													<li class="ucg_external_link">
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
					<div class="parsys_column three-columns-box clearfix">
						<div class="parsys_column three-columns-box-c0">
							<div class="panel ucg_title underlined ucg_no_image">
								<div class="container">
									<div class="ucg_cols ucg_cols_text col-xs-12">
										<div class="ucg_title_container">
											<h5>Highlights and reports</h5>
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
							<div class="panel ucg_text">
								<div class="container">
									<div class="ucg_text_container">
										<p>Keep updated and download the latest documents</p>
									</div>
									<div class="panel ucg_linklist">
										<div class="container">
											<ul class="ucg_link_container">
												<li class="ucg_link">
													<a href="javascript:void(0);">Financial highlights</a>
												</li>
												<li class="ucg_link">
													<a href="javascript:void(0);">Financial reports</a>
												</li>
												<li class="ucg_link">
													<a href="javascript:void(0);">Presentations</a>
												</li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="parsys_column three-columns-box-c1">
							<div class="panel ucg_title underlined ucg_no_image">
								<div class="container">
									<div class="ucg_cols ucg_cols_text col-xs-12">
										<div class="ucg_title_container">
										<h5>Private Shareholders</h5>
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
							<div class="panel ucg_text">
								<div class="container">
									<div class="ucg_text_container">
										<p>Learn more about UniCredit’s policies about private shareholders</p>
									</div>
									<div class="panel ucg_linklist">
										<div class="container">
											<ul class="ucg_link_container">
												<li class="ucg_link">
													<a href="javascript:void(0);">Financial highlights</a>
												</li>
												<li class="ucg_link">
													<a href="javascript:void(0);">Financial reports</a>
												</li>
												<li class="ucg_link">
													<a href="javascript:void(0);">Presentations</a>
												</li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="parsys_column three-columns-box-c2">
							<div class="panel ucg_title underlined ucg_no_image">
								<div class="container">
									<div class="ucg_cols ucg_cols_text col-xs-12">
										<div class="ucg_title_container">
										<h5>Contacts</h5>
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
							<div class="panel ucg_linklist">
								<div class="container">
									<ul class="ucg_link_container">
										<li class="ucg_mail">
											<a href="mailto:investorrelations@unicredit.eu">investorrelations@unicredit.eu</a>
										</li>
										<li class="ucg_mail">
											<a href="mailto:azionisti@unicredit.eu">azionisti@unicredit.eu</a>
										</li>
									</ul>
								</div>
							</div>
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
						<div class="ucg_spacer" data-ucg-height-mobile="25" data-ucg-height="50"></div>
					</div>
				</div>
				<div class="parsys contentpagewelcome-parsys">
					<div class="section">
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
													<div class="ucg_news">
														<span class="ucg_date"><b>15 November</b> 2014 - 11:00</span>
														<span class="ucg_introTitle"><a class="ucg_titleLink" href="javascript:void(0);">"L'Arena di Verona incontra Berlino" un evento musicale di successo.</a></span>
														<span class="ucg_intro">UniCredit, HypoVereinsbank<a class="apix">1</a> e l'Ambasciata d'Italia a Berlino sono orgogliose di aver ospitato ieri sera per il sesto anno consecutivo il concerto "L'Arena di Verona incontra Berlino" ...</span>
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
										<div class="swiper-slide">
											<div class="ucg_text">
												<div class="ucg_text_container">
													<div class="ucg_news">
														<span class="ucg_date"><b>14 November</b> 2014 - 10:00</span>
														<span class="ucg_introTitle"><a href="javascript:void(0);" class="ucg_titleLink">Resoconto intermedio di gestione al 30 settembre 2014</a></span>
														<span class="ucg_intro">Si rende noto che il Resoconto intermedio di gestione al 30 settembre 2014 è disponibile al pubblico presso la Sede Legale e la Direzione Generale della Società, e pubblicato ...</span>
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
										<div class="swiper-slide">
											<div class="ucg_text">
												<div class="ucg_text_container">
													<div class="ucg_news">
														<span class="ucg_date"><b>10 November</b> 2014 - 11:00</span>
														<span class="ucg_introTitle"><a href="javascript:void(0);" class="ucg_titleLink">UniCredit: nominato il nuovo Responsabile della Divisione Central & Eastern Europe (CEE)</a></span>
														<span class="ucg_intro">Nel corso della riunione odierna, il Consiglio di Amministrazione di UniCredit ha nominato, con decorrenza 16 febbraio 2015, il signor Carlo Vivaldi quale nuovo responsabile della ...</span>
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
					</div>
				</div>
				<div class="parsys contentpagewelcome-parsys">
					<div class="section">
						<div class="ucg_spacer" data-ucg-height-mobile="15" data-ucg-height="30"></div>
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
			<!-- PAGE END HERE -->
						
				<jsp:include page="includes/footer.html"></jsp:include>
			</div>
		</div>
	</div>
</div>
</body>
</html>