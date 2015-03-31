<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="it">
<head>
	<meta charset="utf-8"> 
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Iframe Container Component</title>
	
	<jsp:include page="includes/css.html"></jsp:include>
	
	<!-- SPECIFIC CSS START HERE -->
	
		<!--generic CSS for Parsys Column container -->
		<link type="text/css" rel="stylesheet" href="css/ucg_parsys_column.css"/>
	
	
	<!-- SPECIFIC CSS END HERE -->    
       
    <link type="text/css" rel="stylesheet" href="css/retina.css"/>
	
	<jsp:include page="includes/js.html"></jsp:include>
    
	<!-- SPECIFIC JS START HERE -->
		
		<!--specific JS for Iframe Component-->
		<script type="text/javascript" src="js/ucg_iframe.js"></script>
	
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
				<div class="example">Iframe Component full width</div>
				<div class="parsys contentpagewelcome-parsys">
					<div class="section">
						<!-- IFRAME -->
						<div class="panel ucg_iframe">
							<div class="container">
								<div class="ucg_iframe_container"  data-ucg-width="100%" data-ucg-height="320" data-src="https://www.unicreditgroup.eu">
								</div>						
							</div>
						</div>
						<!-- IFRAME -->
					</div>
				</div>
				
				<div class="example">Iframe with CQ5 2 columns (2/3 - 1/3)</div>
				<div class="parsys_column twoone-columns-box clearfix">
					<div class="parsys_column twoone-columns-box-c0">
						<!-- IFRAME -->
						<div class="panel ucg_iframe">
							<div class="container">
								<div class="ucg_iframe_container"  data-ucg-width="480" data-ucg-height="320" data-src="https://www.unicreditgroup.eu">
								</div>					
							</div>
						</div>
						<!-- IFRAME -->
					</div>
					<div class="parsys_column twoone-columns-box-c1">
						<!-- IFRAME -->
						<div class="panel ucg_iframe">
							<div class="container">
								<div class="ucg_iframe_container"  data-ucg-width="320" data-ucg-height="480" data-src="https://www.unicreditgroup.eu">
								</div>				
							</div>
						</div>
						<!-- IFRAME -->
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