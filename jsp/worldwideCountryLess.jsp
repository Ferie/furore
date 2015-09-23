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
	
	<jsp:include page="../includes/css.html"></jsp:include>
	
	<!-- SPECIFIC CSS START HERE -->
	
		<link rel="stylesheet" href="../plugin/css/chosen.min.css">
		<link rel="stylesheet" href="../css/worldwide.css">
		<link rel="stylesheet" href="../css/worldwide-desktop.css">
		<link rel="stylesheet" href="../css/ucg_title_component.css">
		<link rel="stylesheet" href="../css/ucg_tab_component.css">
		<!-- BREADCRUMB -->
		<link type="text/css" rel="stylesheet" href="../css/ucg_breadcrumb.css"/>
		<link type="text/css" rel="stylesheet" href="../css/ucg_breadcrumb_links.css"/>
		<link type="text/css" rel="stylesheet" href="../css/ucg_sharing.css"/>
	
	<!-- SPECIFIC CSS END HERE -->   
       
    <link type="text/css" rel="stylesheet" href="../css/retina.css"/>
	
	<jsp:include page="../includes/js.html"></jsp:include>
    
	<!-- SPECIFIC JS START HERE -->
		
		<script src="../plugin/js/chosen.patched.jquery.js"></script>
		<script src="../js/worldwide.js"></script>
		<script src="../js/ucg_tab_component.js"></script>
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
	
				<div id="worldwide" class="countryLessInfo">
					<div class="panel" id="countryTitle">
						<div class="container">
							<h1>UniCredit Group in Libya</h1>
						</div>
					</div>
	
					<div class="panel countryLessInfoOff" id="intro">
	
					</div>
	
					<div class="ucg_tab countryLessInfoOff">
						
		
						
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
									<img src="../img/static/logo.png">
								</div>
								<div class="bankName">Bank Libya</div>
								<div class="moreInfo">
									<a href="worldwideCompanyInfo.html">More info <span class="arrowRight"></span></a>
								</div>
								
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