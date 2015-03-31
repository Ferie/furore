<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="it">
<head>
	<meta charset="utf-8"> 
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Spinner Component</title>
	
	<jsp:include page="includes/css.html"></jsp:include>
	
	<!-- SPECIFIC CSS START HERE -->
	
		<!--generic CSS for Parsys Column container -->
		<link type="text/css" rel="stylesheet" href="css/ucg_parsys_column.css"/>

		<!--imported CSS for Links Interday-->
		<link type="text/css" rel="stylesheet" href="css/ucg_intraday_component.css"/>
		
		<!--specific CSS for Image Component-->
		<link type="text/css" rel="stylesheet" href="css/ucg_image_component.css"/>

		<!--imported CSS for Links Component-->
		<link type="text/css" rel="stylesheet" href="css/ucg_link_component.css"/>
		
		<!--specific CSS for Back Button Component-->
		<link type="text/css" rel="stylesheet" href="css/ucg_button_component.css"/>
		
		<!--specific CSS for Spinner Component-->
    	<link type="text/css" rel="stylesheet" href="css/spinner.css"/>
	
	<!-- SPECIFIC CSS END HERE -->    
       
    <link type="text/css" rel="stylesheet" href="css/retina.css"/>
	
	<jsp:include page="includes/js.html"></jsp:include>
    
	<!-- SPECIFIC JS START HERE -->
		
		<!--specific JS for Spinner Component-->
		<script type="text/javascript" src="plugin/js/heartcode-canvasloader.js"></script>
		<script type="text/javascript" src="js/jquery.spinnerUBIS.js"></script>
		<!--specific JS for Interday Component-->
		<script type="text/javascript" src="js/ucg_intraday.js"></script>

		<!--specific JS for Spinner DEMO-->
		<script type="text/javascript" src="js/ucg_spinner_demo.js"></script>
		
	
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
				<div class="example">Spinner Component</div>
				<div class="example">Enable and Disable Spinner</div>
				<div class="parsys_column twoone-columns-box clearfix">
					<div class="parsys_column twoone-columns-box-c0">
						<div id="loading-div" style="width: 100%; height: 300px; background-color: #999;">
						</div>
					</div>
					<div class="parsys_column twoone-columns-box-c1">
						<div class="panel ucg_button">
							<div class="container">
								<button class="btn ucg_button start_spinner" title="Start">Start</button>
								<button class="btn ucg_button stop_spinner disabled" title="Stop">Stop</button>
							</div>
						</div>
						<script type="text/javascript">
						$(document).ready(function() {
							spinnerUBISManager1 = $("#mainContainer").spinnerUBISManager({
								topElementSelector: '#loading-div',
								setElementsSelector: '#loading-div',
								idSpinner: 'spinner-loader1',
								htmlMessage: '',
								textMessage: 'Loading Div',
								autohide: false,
								modeInline: false,
								millisecondsTimer: 3000,
								color: "#00afd0",
								shape: 'UBIS',
								diameter: 40,
								density: 71,
								range: 2,
								fps: 25
								});
							$('.ucg_button .start_spinner').click(function(){
								spinnerUBISManager1.utils._startSpinner(spinnerUBISManager1.st);
								$('.ucg_button').removeClass("disabled");
								$(this).addClass("disabled");							
							});
							$('.ucg_button .stop_spinner').click(function(){
								spinnerUBISManager1.utils._stopSpinner(spinnerUBISManager1.st);
								$('.ucg_button').removeClass("disabled");
								$(this).addClass("disabled");							
							});
						});
						
						</script>
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