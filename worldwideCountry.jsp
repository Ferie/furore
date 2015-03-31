<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="it">
<head>
	<meta charset="utf-8"> 
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title></title>
	
	<jsp:include page="includes/css.html"></jsp:include>
	
	<!-- SPECIFIC CSS START HERE -->
	
		<link rel="stylesheet" href="plugin/css/chosen.min.css">
		<link rel="stylesheet" href="css/worldwide.css">
		<link rel="stylesheet" href="css/worldwide-desktop.css">
		<link rel="stylesheet" href="css/ucg_title_component.css">
		<link rel="stylesheet" href="css/ucg_tab_component.css">
		<!-- BREADCRUMB -->
		<link type="text/css" rel="stylesheet" href="css/ucg_breadcrumb.css"/>
		<link type="text/css" rel="stylesheet" href="css/ucg_breadcrumb_links.css"/>
		<link type="text/css" rel="stylesheet" href="css/ucg_sharing.css"/>
	
	<!-- SPECIFIC CSS END HERE -->    
       
    <link type="text/css" rel="stylesheet" href="css/retina.css"/>
	
	<jsp:include page="includes/js.html"></jsp:include>
    
	<!-- SPECIFIC JS START HERE -->
		
		<script src="plugin/js/chosen.patched.jquery.js"></script>
		<script src="js/worldwide.js"></script>
		<script src="js/ucg_tab_component.js"></script>
		<!-- BREADCRUMB -->
		<script type="text/javascript" src="js/ucg_sharing.js"></script>
		
	
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
				<div class="parsys contentpagewelcome-parsys">
					<div class="section">
						<!-- BREADCRUMB -->
						<div class="panel ucg_breadcrumb">
							<div class="container">
								<div class="panel ucg_breadcrumb_crumbs col-xs-12">
									<div class="container">
										<ul>
											<li><a href="javascript:void(0);">Info</a></li>
											<li><a href="worldwide.html">Our worldwide presence</a></li>
											<li>Austria</li>
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
								<!-- SHARING COLLAPSABLE-->
						</div>
						<!-- BREADCRUMB -->
					</div>
				</div>
	
				<div id="worldwide">
					<div class="panel" id="countryTitle">
						<div class="container">
							<h1>UniCredit Group in Austria</h1>
						</div>
					</div>
	
					<div class="panel countryLessInfoOff" id="intro">
						<div class="container">
							<div class="col-xs-12 col-sm-7 right">
								<div class="subtitle">
									Our Presence
								</div>
							</div>
							<div class="col-xs-12 col-sm-5 left">
								<div class="row">
									<div class="imageEmployers"></div>
									<div class="number">7,700</div>
									<div class="text-uppercase">Employees</div>
								</div>
								<div class="row">
									<div class="imageBranches"></div>
									<div class="number">300</div>
									<div class="text-uppercase">Branches</div>
								</div>
							</div>
							<div class="col-xs-12 col-sm-7 right">
								<div class="text-left">
									The group maintains an extensive network in Austria, with about <b>7.700 employees</b> serving customers in some <b>300 branches</b>.
									<div class="ourPresenceHiddenOnMobile">
										Bank Austria serves as UniCredit’s hub for the banking network in Central and Eastern Europe, a region where the Group is 
										the clear market leader with about 3,900 branches in 19 countries.
									</div>
									<div class="readMore">
										<a href="javascript:void(0);">+ read more</a>
									</div>
									<div class="readLess">
										<a href="javascript:void(0);">- hide</a>
									</div>
								</div>
							</div>
						</div>
					</div>
	
					<div class="ucg_tab countryLessInfoOff">
						<div class="panel hidden-xs tabs">
							<div class="container">
								<div class="tab active" data-tabpanel="tabPanelOne">
									<div class="tabHeader">
										<a href="javascript:void(0);">Consumer and SME Banking</a>
									</div>
								</div>
								<div class="tab" data-tabpanel="tabPanelTwo">
									<div class="tabHeader">
										<a href="javascript:void(0);">Corporate & Investment Banking</a>
									</div>
								</div>
								<div class="tab" data-tabpanel="tabPanelThree">
									<div class="tabHeader">
										<a href="javascript:void(0);">Private Banking</a>
									</div>
								</div>
								<div class="tab" data-tabpanel="tabPanelFour">
									<div class="tabHeader">
										<a href="javascript:void(0);">Leasing</a>
									</div>
								</div>
								<div class="tab" data-tabpanel="tabPanelFive">
									<div class="tabHeader">
										<a href="javascript:void(0);">Special Company</a>
									</div>
								</div>
							</div>
						</div>
		
						<div class="panel visible-xs dropdown">
							<div class="container">
								<div class="col-xs-12">
									<select name="companyCategory" class="chosen-select" data-placeholder="Select business type">
										<option value="tabPanelOne" data-value="tabPanelOne">Consumer and SME Banking</option>
										<option value="tabPanelTwo" data-value="tabPanelTwo">Corporate & Investment Banking</option>
										<option value="tabPanelThree" data-value="tabPanelThree">Private Banking</option>
										<option value="tabPanelFour" data-value="tabPanelFour">Leasing</option>
										<option value="tabPanelFive" data-value="tabPanelFive">Special Company</option>
									</select>
								</div>
							</div>
						</div>
		
						<div class="panel tabsBody">
							<div class="container">
								<div class="tabPanel tabPanelOne selected">
									<div class="tabSection bottomBorder clearfix">
										<div class="logo">
											<img src="img/static/Bank_Austria_logo.png">
										</div>
										<div class="bankName">Bank Austria</div>
										<div class="externalLink">
											<a href="http://www.bankaustria.at" target="_blank">bankaustria.at</a>
										</div>
										<div class="moreInfo">
											<a href="worldwideCompanyInfo.html">More info <span class="arrowRight"></span></a>
										</div>
										<div class="icons">
											<div class="homeBankingLogin icon">
												<a href="javascript:void(0);">Home banking login</a>
											</div>
											<div class="seeJobPositions icon">
												<a href="javascript:void(0);">See job positions</a>
											</div>
											<div class="findBranch icon">
												<a href="javascript:void(0);">Find a branch</a>
											</div>
											<div class="linkedin icon">
												<a href="https://www.linkedin.com/company/unicredit-bank-austria-ag" target="_blank">Linkedin</a>
											</div>
										</div>
									</div>
									<div class="tabSection bottomBorder clearfix">
										<div class="logo">
											<img src="img/static/UniCredit_Family_Financing_logo.png">
										</div>
										<div class="bankName">UniCredit Family Financing Bank, Niederlassung der UniCredit S.p.A.</div>
										<div class="externalLink">
											<a href="http://www.ucfin.de" target="_blank">ucfin.de</a>
										</div>
										<div class="moreInfo">
											<a href="worldwideCompanyInfo.html">More info <span class="arrowRight"></span></a>
										</div>
										<div class="icons"></div>
									</div>
									<div class="tabSection bottomBorder clearfix">
										<div class="logo">
											<img src="img/static/DAB_bank_logo.png">
										</div>
										<div class="bankName">DAB Bank AG</div>
										<div class="externalLink">
											<a href="http://www.dab-bank.de" target="_blank">dab-bank.de</a>
										</div>
										<div class="moreInfo">
											<a href="worldwideCompanyInfo.html">More info <span class="arrowRight"></span></a>
										</div>
										<div class="icons">
											<div class="homeBankingLogin icon">
												<a href="javascript:void(0);">Home banking login</a>
											</div>
										</div>
									</div>
								</div>
		
								<div class="tabPanel tabPanelTwo">
									<div class="tabSection bottomBorder clearfix">
										<div class="bankName">Corporate & Investment Banking</div>
									</div>
								</div>
		
								<div class="tabPanel tabPanelThree">
									<div class="tabSection bottomBorder clearfix">
										<div class="bankName">Private Banking</div>
									</div>
								</div>
		
								<div class="tabPanel tabPanelFour" id="leasing">
									<div class="tabSection bottomBorder clearfix">
										<div class="bankName">Leasing</div>
									</div>
								</div>
		
								<div class="tabPanel tabPanelFive">
									<div class="tabSection bottomBorder clearfix">
										<div class="bankName">Special Company</div>
									</div>
								</div>
							</div>
						</div>
					</div>
	
					<div class="panel countryLessInfoOn ucg_title underlined ucg_no_image">
						<div class="container">
							<div class="ucg_cols ucg_cols_text col-xs-12">
								<div class="ucg_title_container">
									<h5>Representative office</h5>
								</div>
								<div class="ucg_subtitle_container"></div>
							</div>
							<div class="ucg_cols ucg_cols_image col-xs-12">
								<div class="ucg_title_image_container"></div>
							</div>
						</div>
					</div>
					<div class="panel countryLessInfoOn" id="tabsBody">
						<div class="container">
							<div class="countryLessInfoPanel">
								<div class="logo">
									<img src="img/static/logo.png">
								</div>
								<div class="bankName">Bank Libya</div>
								<div class="externalLink">
									<a href="http://www.banklibya.at" target="_blank">banklibya.at</a>
								</div>
								<div class="moreInfo">
									<a href="worldwideCompanyInfo.html">More info <span class="arrowRight"></span></a>
								</div>
								<div class="icons">
									<div class="homeBankingLogin icon">
										<a href="javascript:void(0);">Home banking login</a>
									</div>
									<div class="seeJobPositions icon">
										<a href="javascript:void(0);">See job positions</a>
									</div>
									<div class="findBranch icon">
										<a href="javascript:void(0);">Find a branch</a>
									</div>
									<div class="linkedin icon">
										<a href="https://www.linkedin.com/company/unicredit-bank-austria-ag" target="_blank">Linkedin</a>
									</div>
								</div>
							</div>
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