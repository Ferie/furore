<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="it">
<head>
	<meta charset="utf-8"> 
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Curriculum Vitae</title>
	
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
		<!-- IMAGE TEXT COMPONENT -->
		<link type="text/css" rel="stylesheet" href="css/ucg_image_text_component.css"/>
		<!-- SOCIAL + SOCIAL FOOTER COMPONENT -->
		<link type="text/css" rel="stylesheet" href="css/ucg_social.css"/>
		<link type="text/css" rel="stylesheet" href="css/curriculum_vitae.css"/>
	
	<!-- SPECIFIC CSS END HERE -->    
       
    <link type="text/css" rel="stylesheet" href="css/retina.css"/>
	
	<jsp:include page="includes/js.html"></jsp:include>
    
	<!-- SPECIFIC JS START HERE -->
		
		<!-- SPACER COMPONENT -->
		<script type="text/javascript" src="js/ucg_spacer.js"></script>
		<!-- TITLE COMPONENT -->
		<script type="text/javascript" src="js/ucg_title.js"></script>
	
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
			
				<div id="curriculumVitae">
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
						<div class="section textimage">
							<!-- SPACER -->
							<div class="ucg_spacer" data-ucg-height="47" data-ucg-height-mobile="47"></div>
							<!-- /END SPACER -->
						</div>
					</div>
	
					<div class="parsys_column onetwo-columns-box clearfix">
						<div class="parsys_column onetwo-columns-box-c0">
							<!-- IMAGE TEXT -->
							<div class="panel ucg_image_text">
								<div class="container">
									<div class="ucg_img">
										<img src="img/giuseppe_vita.png" alt="">
									</div>
									<div class="ucg_txt">
										<p>Born in <b>Favara (Agrigento - Italy)</b> on <b>April 28th 1935</b></p>
									</div>
								</div>
							</div>
							<!-- /END IMAGE TEXT -->
							<!-- SPACER -->
							<div class="ucg_spacer" data-ucg-height="5" data-ucg-height-mobile="5"></div>
							<!-- /END SPACER -->
							<!-- TITLE -->
							<div class="panel ucg_title underlined ucg_no_image">
								<div class="container">
									<div class="ucg_cols ucg_cols_text col-xs-12">
										<div class="ucg_title_container">
											<h5>Education</h5>
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
							<!-- /END TITLE -->
							<!-- IMAGE TEXT -->
							<div class="panel ucg_image_text">
								<div class="container">
									<div class="ucg_txt">
										<p>Medical Doctorate - University La Sapienza - Rome</p>
										<p>Radiology Specialist - University of Rome</p>
									</div>
								</div>
							</div>
							<!-- /END IMAGE TEXT -->
							<!-- SPACER -->
							<div class="ucg_spacer" data-ucg-height="5" data-ucg-height-mobile="5"></div>
							<!-- /END SPACER -->
							<!-- TITLE -->
							<div class="panel ucg_title underlined ucg_no_image">
								<div class="container">
									<div class="ucg_cols ucg_cols_text col-xs-12">
										<div class="ucg_title_container">
											<h5>Other Information</h5>
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
							<!-- /END TITLE -->
							<!-- IMAGE TEXT -->
							<div class="panel ucg_image_text">
								<div class="container">
									<div class="ucg_txt">
										<p>
											Cavaliere del Lavoro<br>
											Distinction of the Order of Merit (Hall of Fame) in Germany
										</p>
									</div>
								</div>
							</div>
							<!-- /END IMAGE TEXT -->
						</div>
						<div class="parsys_column onetwo-columns-box-c1">
							<!-- IMAGE TEXT -->
							<div class="panel ucg_image_text">
								<div class="container">
									<div class="ucg_txt">
										<h1 class="cv_name">Giuseppe Vita</h1>
										<p class="cv_occupation">Chairman</p>
										<p class="cv_sectionTitle"><b>Main roles</b></p>
										<ul class="cv_description">
											<li>
												<span class="listContent">Chairman</span>
											</li>
											<li>
												<span class="listContent">Chairman of the Permanent Strategic Committee</span>
											</li>
											<li>
												<span class="listContent">Chairman of the Corporate Governance, HR and Nomination Committee</span>
											</li>
											<li>
												<span class="listContent">Chairman of the Remuneration Committee</span>
											</li>
											<li>
												<span class="listContent">Member of the Internal Controls & Risks Committee</span>
											</li>
											<li>
												<span class="listContent">Member of the Internal Controls Sub-Committee</span>
											</li>
											<li>
												<span class="listContent">Member of the Risks Sub-Committee</span>
											</li>
										</ul>
										<div class="ucg_spacer" data-ucg-height-mobile="20" data-ucg-height="40"></div>
										<p class="cv_sectionTitle"><b>Other posts currently held</b></p>
										<ul class="cv_description">
											<li>
												<span class="listContent">Chairman of the Supervisory Board of Axel Springer SE - Germany - since 2002</span>
											</li>
											<li>
												<span class="listContent">Member of the Board of Directors of ABI - Italian Banking Association - Italy - since 2002</span>
											</li>
											<li>
												<span class="listContent">Member of the General Council of Aspen Institute Italia - since June 2012</span>
											</li>
											<li>
												<span class="listContent">Member of the Trilateral Commission - Italian Group - since August 2012</span>
											</li>
											<li>
												<span class="listContent">Member of the Board of Directors of ISPI - Istituto per gli Studi di Politica Internazionale - Italy - since October 2002</span>
											</li>
											<li>
												<span class="listContent">Member of the Executive Committee of ISPI - Istituto per gli Studi di Politica Internazionale - Italy - since October 2002</span>
											</li>
											<li>
												<span class="listContent">Honorary Chairman of Deutsche Bank SpA - since 2002</span>
											</li>
										</ul>
										<div class="ucg_spacer" data-ucg-height-mobile="20" data-ucg-height="40"></div>
										<p class="cv_sectionTitle"><b>Posts previously held</b></p>
										<ul class="cv_description historyPosition">
											<li class="line first">
												<div class="firstColumn"><span class="pastExperience_date">October 2012 - April 2014</span></div><div class="secondColumn"><span class="pastExperience">Member of the Board of Directors of Associazione Italiana per la Ricerca (Italy)</span></div>
											</li>
											<li class="line">
												<div class="firstColumn"><span class="pastExperience_date">May 2012 - May 2013</span></div><div class="secondColumn"><span class="pastExperience">Member of the Board of Directors of RCS MediaGroup Spa (Italy)</span></div>
											</li>
											<li class="line">
												<div class="firstColumn"><span class="pastExperience_date">2001 - December 2012</span></div><div class="secondColumn"><span class="pastExperience">Member of the Supervisory Committee of Medical Park AG (Germany)</span></div>
											</li>
											<li class="line">
												<div class="firstColumn"><span class="pastExperience_date">2007 - May 2012</span></div><div class="secondColumn"><span class="pastExperience">ALLIANZ SpA</span>
											</li>
											<li class="line">
												<div class="firstColumn"><span class="pastExperience_date">2011 - May 2012</span></div><div class="secondColumn"><span class="pastExperience">Chairman of ALLIANZ SpA (Italy)</span></div>
											</li>
											<li class="line">
												<div class="firstColumn"><span class="pastExperience_date">2009 - 2011</span></div><div class="secondColumn"><span class="pastExperience">Vice President of ALLIANZ SpA (Italy)</span></div>
											</li>
											<li class="line">
												<div class="firstColumn"><span class="pastExperience_date">2007 - 2009</span></div><div class="secondColumn"><span class="pastExperience">Chairman of ALLIANZ SpA (Italy)</span></div>
											</li>
											<li class="line">
												<div class="firstColumn"><span class="pastExperience_date">2001 - 2006</span></div><div class="secondColumn"><span class="pastExperience">Chairman of RAS (Italy)</span></div>
											</li>
											<li class="line">
												<div class="firstColumn"><span class="pastExperience_date">March 2012 - May 2012</span></div><div class="secondColumn"><span class="pastExperience">Member of the Board of Directors of Pirelli & C. (Italy)</span></div>
											</li>
											<li class="line">
												<div class="firstColumn"><span class="pastExperience_date">2005 - May 2012</span></div><div class="secondColumn"><span class="pastExperience">Member of the Board of Directors of Barilla (Italy)</span></div>
											</li>
											<li class="line">
												<div class="firstColumn"><span class="pastExperience_date">2003 - May 2012</span></div><div class="secondColumn"><span class="pastExperience">Member of the Board of Directors of Humanitas Istituto Clinico (Italy)</span></div>
											</li>
											<li class="line">
												<div class="firstColumn"><span class="pastExperience_date">2005 - May 2012</span></div><div class="secondColumn"><span class="pastExperience">Member of the Board of Directors of IEO - Istuto Europeo di Ocnologia (Italy)</span></div>
											</li>
											<li class="line">
												<div class="firstColumn"><span class="pastExperience_date">2007 - May 2012</span></div><div class="secondColumn"><span class="pastExperience">Member of the Board of Directors of Fondazione IEO (Italy)</span></div>
											</li>
											<li class="line">
												<div class="firstColumn"><span class="pastExperience_date">2007 - May 2012</span></div><div class="secondColumn"><span class="pastExperience">Member of the Board of Directors of Fondazione Cerba (Italy)</span></div>
											</li>
											<li class="line">
												<div class="firstColumn"><span class="pastExperience_date">2007 - May 2012</span></div><div class="secondColumn"><span class="pastExperience">Member of the Board of Directors of Fondazione Feltrinelli (Italy)</span></div>
											</li>
											<li class="line last">
												<div class="firstColumn"><span class="pastExperience_date">2007 - May 2012</span></div><div class="secondColumn"><span class="pastExperience">Member of the Board of Directors of Consiglio per le relazioni(Italy)</span></div>
											</li>
										</ul>
									</div>
								</div>
							</div>
							<!-- /END IMAGE TEXT -->
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
			
			<!-- PAGE END HERE -->
						
				<jsp:include page="includes/footer.html"></jsp:include>
			</div>
		</div>
	</div>
</div>
</body>
</html>