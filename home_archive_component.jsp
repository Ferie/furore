<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="it">
<head>
	<meta charset="utf-8"> 
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Template About Us</title>
	
	<jsp:include page="includes/css.html"></jsp:include>
	
	<!-- SPECIFIC CSS START HERE -->
	
	
		<!--generic CSS for Parsys Column container -->
		<link type="text/css" rel="stylesheet" href="css/ucg_parsys_column.css"/>
		
		<!--specific CSS for Horizontal line Component-->
		<link type="text/css" rel="stylesheet" href="css/ucg_horizontal_line_component.css"/>
		<!--specific CSS for Link Component-->
		<link type="text/css" rel="stylesheet" href="css/ucg_link_component.css"/>

		<!--specific CSS for Archive Component-->
    	<link type="text/css" rel="stylesheet" href="plugin/css/chosen.min.css"/>
	    <link type="text/css" rel="stylesheet" href="css/form.css"/>
	    <link type="text/css" rel="stylesheet" href="css/form-desktop.css"/>
		<link type="text/css" rel="stylesheet" href="css/ucg_archive.css"/>
		
	
	<!-- SPECIFIC CSS END HERE -->    
       
    <link type="text/css" rel="stylesheet" href="css/retina.css"/>
	
	<jsp:include page="includes/js.html"></jsp:include>
    
	<!-- SPECIFIC JS START HERE -->
		
	<!--specific JS for Archive Component-->
	<script type="text/javascript" src="plugin/js/heartcode-canvasloader.js"></script>
	<script type="text/javascript" src="js/jquery.spinnerUBIS.js"></script>
    <script type="text/javascript" src="plugin/js/chosen.patched.jquery.js"></script>
	<script type="text/javascript" src="plugin/js/doT.min.js"></script>
	<script type="text/javascript" src="js/ucg_archive.js"></script>
	
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
			
				<div class="example">In-page archive widget Component</div>
					<div class="ucg_archive panel">
						<div class="container">
							<div class="ucg_archive_header">
								<div class="col-xs-12 col-sm-5 col-md-4 ucg_archive_title">
									<h3>Sustainability Archive</h3>
								</div>
								<div class="ucg_chosen_radio col-xs-12 col-sm-5 col-md-3 ucg_archive_filter">
									<select name="sustainability" class="chosen-select little-arrow" data-placeholder="Select year" data-url="data/archive-widget1.json">
										<option value=""></option>
									</select>
								</div>
								<div class="col-sm-2 col-md-5 ucg_archive_hrline hidden-xs">
									<div class="ucg_horizontal_line">
										<div class="spacer1"></div>
										<div class="spacer2"></div>
									</div>						
								</div>
							</div>
							<div class="ucg_archive_results col-xs-12">
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