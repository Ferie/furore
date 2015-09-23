<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="it">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Shareholder's meeting - Step 1</title>
	
	<jsp:include page="../includes/css.html"></jsp:include>
	
	<!-- SPECIFIC CSS START HERE -->	
	
		<!--generic CSS for Parsys Column container-->
		<link type="text/css" rel="stylesheet" href="../css/ucg_parsys_column.css"/>

		<!-- CHOSEN PLUGIN FOR SKINNING SELECT TAGS -->
		<link type="text/css" rel="stylesheet" href="../plugin/css/chosen.min.css"/>
		<!-- SPACER COMPONENT -->
		<link type="text/css" rel="stylesheet" href="../css/ucg_spacer.css"/>
		<!-- BREADCRUMB -->
		<link type="text/css" rel="stylesheet" href="../css/ucg_breadcrumb.css"/>
		<link type="text/css" rel="stylesheet" href="../css/ucg_breadcrumb_links.css"/>
		<link type="text/css" rel="stylesheet" href="../css/ucg_sharing.css"/>
		<!-- HORIZONTAL LINE COMPONENT -->
		<link type="text/css" rel="stylesheet" href="../css/ucg_horizontal_line_component.css"/>
		<!-- BUTTON COMPONENT -->
		<link type="text/css" rel="stylesheet" href="../css/ucg_button_component.css"/>
		<!-- TITLE COMPONENT -->
		<link type="text/css" rel="stylesheet" href="../css/ucg_title_component.css"/>
		<!-- IMAGE TEXT COMPONENT -->
		<link type="text/css" rel="stylesheet" href="../css/ucg_image_text_component.css"/>
		<!-- IMAGE LINK COMPONENT -->
		<link type="text/css" rel="stylesheet" href="../css/ucg_link_component.css"/>
		<!-- CHECKBOX E RADIO SKIN -->
		<link type="text/css" rel="stylesheet" href="../plugin/css/all.css"/>
		<!-- SPECIFIC CSS FOR CONTACT FORMS -->
		<link type="text/css" rel="stylesheet" href="../css/form.css"/>
		<link type="text/css" rel="stylesheet" href="../css/form-desktop.css"/>
		<!-- SOCIAL + SOCIAL FOOTER COMPONENT -->
		<link type="text/css" rel="stylesheet" href="../css/ucg_social.css"/>
		
		<link type="text/css" rel="stylesheet" href="../css/shareholders_meeting.css"/>

	<!-- SPECIFIC CSS END HERE -->   
       
    <link type="text/css" rel="stylesheet" href="../css/retina.css"/>
	
	<jsp:include page="../includes/js.html"></jsp:include>
    
	<!-- SPECIFIC JS START HERE -->
	
		<!-- CHOSEN PLUGIN FOR SKINNING SELECT TAGS -->
		<script type="text/javascript" src="../plugin/js/chosen.patched.jquery.js"></script>
		<script type="text/javascript" src="../plugin/js/jquery.maskedinput.min.js"></script>
		<!-- CHECKBOX E RADIO SKIN -->
		<script type="text/javascript" src="../plugin/js/icheck.min.js"></script>
		<script type="text/javascript" src="../js/form.js"></script>
		<!-- SPACER COMPONENT -->
		<script type="text/javascript" src="../js/ucg_spacer.js"></script>
		<!-- TITLE COMPONENT -->
		<script type="text/javascript" src="../js/ucg_title.js"></script>	
		
		<script type="text/javascript" src="../js/shareholders_meeting.js"></script>
	
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
			
			<!-- PAGE START HERE -->
			
				<div id="smForm" class="step2 fase1">
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
									<h1 class="singlePage">Shareholders’ meeting questions</h1>
								</div>
							</div>
							<!-- /END TITLE SEO -->
						</div>
					</div>
	
					<div class="parsys contentpagewelcome-parsys">
						<div class="section">
							<div class="ucg_spacer" data-ucg-height-mobile="10" data-ucg-height="10"></div>
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
					
					<div class="panel lightGrey smMessage">
						<div class="parsys contentpagewelcome-parsys">
							<div class="section">
								<div class="ucg_spacer" data-ucg-height-mobile="10" data-ucg-height="10"></div>
							</div>
						</div>
						<div class="parsys contentpagewelcome-parsys">
							<div class="section">	
								<div class="panel ucg_title">
									<div class="container">
										<!-- BUTTON -->
										<div class="panel ucg_button ucg_button_back">
											<div class="container">
												<button type="button" class="btn ucg_button ucg_button_arrowed ucg_button_arrow_left" title="Confirm">Back<span class="leftArrow"></span></button>
											</div>
										</div>
										<!-- /END BUTTON -->
										<h3><b>Step 2 of 2: Your questions</b></h3>
									</div>
								</div>
								<!-- /END IMAGE TEXT -->
							</div>
						</div>
						<div class="parsys contentpagewelcome-parsys">
							<div class="section">
								<div class="ucg_spacer" data-ucg-height-mobile="10" data-ucg-height="10"></div>
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
							<!-- /END HORIZONTAL LINE -->
						</div>
					</div>
					
					<div class="parsys contentpagewelcome-parsys">
						<div class="section">
							<div class="panel ucg_form">
								<div class="container">
									<form name="addQuestionForm">
									<div id="ordinary" class="ucg_topic_group">
										<div class="ucg_topic ucg_topic_1">
											<div class="ucg_topic_container">
												<span class="title"><b>1st Topic of meeting:</b></span>
												<span class="text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisis, erat venenatis tincidunt viverra, metus ipsum tincidunt ante, quis auctor nibh mi et ante Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisis, erat venenatis tincidunt viverra, metus ipsum tincidunt ante, quis auctor nibh mi et ante Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisis, erat venenatis tincidunt viverra, metus ipsum tincidunt ante, quis auctor nibh mi et ante Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisis, erat venenatis tincidunt viverra, metus ipsum tincidunt ante, quis auctor nibh mi et ante Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisis, erat venenatis tincidunt viverra, metus ipsum tincidunt ante, quis auctor nibh mi et ante Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisis, erat venenatis tincidunt viverra, metus ipsum tincidunt ante, quis auctor nibh mi et ante Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisis, erat venenatis tincidunt viverra, metus ipsum tincidunt ante, quis auctor nibh mi et ante</span> 
											</div>
											<div class="ucg_topic_questions">
												<!-- BUTTON -->
												<div class="panel ucg_button">
													<div class="container">
														<button type="button" class="btn ucg_button ucg_button_addons ucg_button_addon_right" title="Confirm">Add question about this topic<span class="plus"></span></button>
													</div>
												</div>
												<!-- /END BUTTON -->
												<div class="ucg_form" style="display: none;">
													<div class="formSectionContainer col-xs-12">												
														<div class="ucg_formField col-xs-12 col-sm-8">
															
															<textarea class="ucg_formTextarea" maxlength="1000" data-toggle="popover" data-content="This field is mandatory"></textarea>
														</div>
														<div class="ucg_formField col-xs-12 col-sm-4">
															<div class="ucg_formCounter">
																Remaining characters: <span class="remaining_characters">1000</span>
															</div>
														</div>												
													</div>
													<div class="ucg_topic_question_action">
														<a class="cancel" href="javascript:void(0);">Cancel question</a>
													</div>
												</div>
											</div>
										</div>
										<div class="ucg_topic ucg_topic_2">
											<div class="ucg_topic_container">
												<span class="title"><b>1st Topic of meeting:</b></span>
												<span class="text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisis, erat venenatis tincidunt viverra, metus ipsum tincidunt ante, quis auctor nibh mi et ante Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisis, erat venenatis tincidunt viverra, metus ipsum tincidunt ante, quis auctor nibh mi et ante Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisis, erat venenatis tincidunt viverra, metus ipsum tincidunt ante, quis auctor nibh mi et ante Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisis, erat venenatis tincidunt viverra, metus ipsum tincidunt ante, quis auctor nibh mi et ante Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisis, erat venenatis tincidunt viverra, metus ipsum tincidunt ante, quis auctor nibh mi et ante Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisis, erat venenatis tincidunt viverra, metus ipsum tincidunt ante, quis auctor nibh mi et ante Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisis, erat venenatis tincidunt viverra, metus ipsum tincidunt ante, quis auctor nibh mi et ante</span> 
											</div>
											<div class="ucg_topic_questions">
												<!-- BUTTON -->
												<div class="panel ucg_button">
													<div class="container">
														<button type="button" class="btn ucg_button ucg_button_addons ucg_button_addon_right" title="Confirm">Add question about this topic<span class="plus"></span></button>
													</div>
												</div>
												<!-- /END BUTTON -->
												<div class="ucg_form" style="display: none;">
													<div class="formSectionContainer col-xs-12">												
														<div class="ucg_formField col-xs-12 col-sm-8">
															
															<textarea class="ucg_formTextarea" maxlength="1000" data-toggle="popover" data-content="This field is mandatory"></textarea>
														</div>
														<div class="ucg_formField col-xs-12 col-sm-4">
															<div class="ucg_formCounter">
																Remaining characters: <span class="remaining_characters">1000</span>
															</div>
														</div>												
													</div>
													<div class="ucg_topic_question_action">
														<a class="cancel" href="javascript:void(0);">Cancel question</a>
													</div>
												</div>
											</div>
										</div>
										<div class="ucg_topic ucg_topic_3">
											<div class="ucg_topic_container">
												<span class="title"><b>1st Topic of meeting:</b></span>
												<span class="text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisis, erat venenatis tincidunt viverra, metus ipsum tincidunt ante, quis auctor nibh mi et ante Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisis, erat venenatis tincidunt viverra, metus ipsum tincidunt ante, quis auctor nibh mi et ante Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisis, erat venenatis tincidunt viverra, metus ipsum tincidunt ante, quis auctor nibh mi et ante Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisis, erat venenatis tincidunt viverra, metus ipsum tincidunt ante, quis auctor nibh mi et ante Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisis, erat venenatis tincidunt viverra, metus ipsum tincidunt ante, quis auctor nibh mi et ante Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisis, erat venenatis tincidunt viverra, metus ipsum tincidunt ante, quis auctor nibh mi et ante Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisis, erat venenatis tincidunt viverra, metus ipsum tincidunt ante, quis auctor nibh mi et ante</span> 
											</div>
											<div class="ucg_topic_questions">
												<!-- BUTTON -->
												<div class="panel ucg_button">
													<div class="container">
														<button type="button" class="btn ucg_button ucg_button_addons ucg_button_addon_right" title="Confirm">Add question about this topic<span class="plus"></span></button>
													</div>
												</div>
												<!-- /END BUTTON -->
												<div class="ucg_form" style="display: none;">
													<div class="formSectionContainer col-xs-12">												
														<div class="ucg_formField col-xs-12 col-sm-8">
															
															<textarea class="ucg_formTextarea" maxlength="1000" data-toggle="popover" data-content="This field is mandatory"></textarea>
														</div>
														<div class="ucg_formField col-xs-12 col-sm-4">
															<div class="ucg_formCounter">
																Remaining characters: <span class="remaining_characters">1000</span>
															</div>
														</div>												
													</div>
													<div class="ucg_topic_question_action">
														<a class="cancel" href="javascript:void(0);">Cancel question</a>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div id="extraordinary" class="ucg_topic_group">
										<div class="ucg_formTitle">
											<h3>Extraordinary part</h3>
										</div>
										<div class="ucg_topic ucg_topic_1">
											<div class="ucg_topic_container">
												<span class="title"><b>1st Topic of meeting:</b></span>
												<span class="text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisis, erat venenatis tincidunt viverra, metus ipsum tincidunt ante, quis auctor nibh mi et ante Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisis, erat venenatis tincidunt viverra, metus ipsum tincidunt ante, quis auctor nibh mi et ante Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisis, erat venenatis tincidunt viverra, metus ipsum tincidunt ante, quis auctor nibh mi et ante Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisis, erat venenatis tincidunt viverra, metus ipsum tincidunt ante, quis auctor nibh mi et ante Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisis, erat venenatis tincidunt viverra, metus ipsum tincidunt ante, quis auctor nibh mi et ante Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisis, erat venenatis tincidunt viverra, metus ipsum tincidunt ante, quis auctor nibh mi et ante Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisis, erat venenatis tincidunt viverra, metus ipsum tincidunt ante, quis auctor nibh mi et ante</span> 
											</div>
											<div class="ucg_topic_questions">
												<!-- BUTTON -->
												<div class="panel ucg_button">
													<div class="container">
														<button type="button" class="btn ucg_button ucg_button_addons ucg_button_addon_right" title="Confirm">Add question about this topic<span class="plus"></span></button>
													</div>
												</div>
												<!-- /END BUTTON -->
												<div class="ucg_form" style="display: none;">
													<div class="formSectionContainer col-xs-12">												
														<div class="ucg_formField col-xs-12 col-sm-8">
															<textarea class="ucg_formTextarea" maxlength="1000" data-toggle="popover" data-content="This field is mandatory"></textarea>
														</div>
														<div class="ucg_formField col-xs-12 col-sm-4">
															<div class="ucg_formCounter">
																Remaining characters: <span class="remaining_characters">1000</span>
															</div>
														</div>												
													</div>
													<div class="ucg_topic_question_action">
														<a class="cancel" href="javascript:void(0);">Cancel question</a>
													</div>
												</div>
											</div>
										</div>
										<div class="ucg_topic ucg_topic_2">
											<div class="ucg_topic_container">
												<span class="title"><b>1st Topic of meeting:</b></span>
												<span class="text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisis, erat venenatis tincidunt viverra, metus ipsum tincidunt ante, quis auctor nibh mi et ante Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisis, erat venenatis tincidunt viverra, metus ipsum tincidunt ante, quis auctor nibh mi et ante Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisis, erat venenatis tincidunt viverra, metus ipsum tincidunt ante, quis auctor nibh mi et ante Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisis, erat venenatis tincidunt viverra, metus ipsum tincidunt ante, quis auctor nibh mi et ante Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisis, erat venenatis tincidunt viverra, metus ipsum tincidunt ante, quis auctor nibh mi et ante Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisis, erat venenatis tincidunt viverra, metus ipsum tincidunt ante, quis auctor nibh mi et ante Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisis, erat venenatis tincidunt viverra, metus ipsum tincidunt ante, quis auctor nibh mi et ante</span> 
											</div>
											<div class="ucg_topic_questions">
												<!-- BUTTON -->
												<div class="panel ucg_button">
													<div class="container">
														<button type="button" class="btn ucg_button ucg_button_addons ucg_button_addon_right" title="Confirm">Add question about this topic<span class="plus"></span></button>
													</div>
												</div>
												<!-- /END BUTTON -->
												<div class="ucg_form" style="display: none;">
													<div class="formSectionContainer col-xs-12">												
														<div class="ucg_formField col-xs-12 col-sm-8">
															
															<textarea class="ucg_formTextarea" maxlength="1000" data-toggle="popover" data-content="This field is mandatory"></textarea>
														</div>
														<div class="ucg_formField col-xs-12 col-sm-4">
															<div class="ucg_formCounter">
																Remaining characters: <span class="remaining_characters">1000</span>
															</div>
														</div>												
													</div>
													<div class="ucg_topic_question_action">
														<a class="cancel" href="javascript:void(0);">Cancel question</a>
													</div>
												</div>
											</div>
										</div>
									</div>
									
									
									<!-- HORIZONTAL LINE -->
									<div class="ucg_horizontal_line">
										<div class="spacer1"></div>
										<div class="spacer2"></div>
									</div>
									<!-- /END HORIZONTAL LINE -->
									<div class="formSectionContainer">
										<div class="ucg_formDisclaimerTitle">
											Information according to D. Decree No. 196/2003
										</div>
										<div class="ucg_formDisclaimerContainer">
											<div class="ucg_formDisclaimer">
												<p>UniCredit S.p.A., as Data Controller of personal data processing, hereby informs you that your personal data, that you have filled in the registration form within the section "Governance" of UniCredit website "www.unicreditgroup.eu", will be processed by manual, IT and telematic means, for the only purposes to answer your questions about the matters of the items on the agenda, before or, at the latest, during the shareholders meeting.Your personal data are required in order to allow the Data Controller to verify your legitimization to act</p>
												<p>UniCredit S.p.A., as Data Controller of personal data processing, hereby informs you that your personal data, that you have filled in the registration form within the section "Governance" of UniCredit website "www.unicreditgroup.eu", will be processed by manual, IT and telematic means, for the only purposes to answer your questions about the matters of the items on the agenda, before or, at the latest, during the shareholders meeting.Your personal data are required in order to allow the Data Controller to verify your legitimization to act</p>
											</div>
										</div>
										<div class="ucg_formDisclaimerAgreement clearfix">
											<div class="ucg_formDisclaimerAgreementIntro left">
												I do agree to use my personal data:
											</div>
											<div class="ucg_radio left">
												<label class="ucg_radio_button">
													<input type="radio" class="iradio_ubis required" name="privacyAgreement" value="yes" data-toggle="popover" data-content="This field is mandatory" />
													<span class="labelText">Yes</span>
												</label>
												<label class="ucg_radio_button">
													<input type="radio" class="iradio_ubis required" name="privacyAgreement" value="no" />
													<span class="labelText">No</span>
												</label>
											</div>
										</div>
									</div>
									<!-- HORIZONTAL LINE -->
									<div class="ucg_horizontal_line">
										<div class="spacer1"></div>
										<div class="spacer2"></div>
									</div>
									<!-- /END HORIZONTAL LINE -->
									<div class="formSectionContainerCaptcha col-xs-12 clearfix">
										<div class="ucg_formCaptcha col-xs-8 col-sm-4">
											<img alt="" src="../img/captcha.png">
										</div>
										<div class="ucg_formCaptcha col-xs-12 col-sm-8">
											<div class="ucg_formCaptchaNoPadding col-xs-12">
												Please enter the charachters from the picture*
											</div>
											<div class="ucg_formCaptchaNoPadding col-xs-8 col-sm-6">
												<input type="text" class="ucg_formInput required" name="country" maxlength="100" data-toggle="popover" data-content="This field is mandatory">
											</div>
										</div>
										<!-- LINK -->
										<div class="panel ucg_linklist">
											<div class="container">
												<ul class="ucg_link_container">
													<li class="ucg_captcha_link">
														<a href="javascript:void(0);">New picture</a>
													</li>
												</ul>
											</div>
										</div>
										<!-- /END LINK -->
									</div>
									<!-- HORIZONTAL LINE -->
									<div class="ucg_horizontal_line">
										<div class="spacer1"></div>
										<div class="spacer2"></div>
									</div>
									<!-- /END HORIZONTAL LINE -->
									
									
									
									<!-- BUTTON -->
									<div class="panel ucg_button">
										<div class="container">
											<button type="button" class="btn ucg_button ucg_button_arrowed ucg_button_arrow_left left" title="Confirm">Back<span class="leftArrow"></span></button>
											<button type="submit" class="btn ucg_button_confirm right" title="submit">Submit</button>
										</div>
									</div>
									<!-- /END BUTTON -->
									</form>
								</div>
							</div>
						</div>
					</div>
					
	
					<div class="panel grey">
						<div class="parsys contentpagewelcome-parsys">
							<div class="section">
								<div class="ucg_spacer" data-ucg-height-mobile="20" data-ucg-height="40"></div>
							</div>
						</div>
	
						<div class="parsys contentpagewelcome-parsys">
							<div class="parbase section textimage">
								<!-- TITLE -->
								<div class="panel ucg_title ucg_no_image">
									<div class="container">
										<div class="ucg_cols ucg_cols_text col-xs-12">
											<div class="ucg_title_container">
												<h2>From our official profiles</h2>
											</div>
											<div class="ucg_subtitle_container">
												<h4></h4>
											</div>
										</div>
										<div class="ucg_cols ucg_cols_image col-xs-12">
											<div class="ucg_title_image_container">
											</div>
										</div>
									</div>
								</div>
								<!-- /END TITLE -->
							</div>
						</div>
	
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
											<img alt="" src="../img/social-facebook-c3.jpg">
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
												<!--<img title="Go to video" alt="Go to video" src="../img/static/videoplayer_play.png">-->
											</a>
											<img alt="" src="../img/social-youtube-c3.jpg">
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
				</div>	
			
			<!-- PAGE END HERE -->
						
				<jsp:include page="../includes/footer.html"></jsp:include>
			</div>
		</div>
	</div>
</div>
</body>
</html>