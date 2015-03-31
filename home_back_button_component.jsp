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
	
		<!--generic CSS for Parsys Column container -->
		<link type="text/css" rel="stylesheet" href="css/ucg_parsys_column.css"/>

		<!--specific CSS for Back Button Component-->
		<link type="text/css" rel="stylesheet" href="css/ucg_back_button_component.css"/>
	
	<!-- SPECIFIC CSS END HERE -->    
       
    <link type="text/css" rel="stylesheet" href="css/retina.css"/>
	
	<jsp:include page="includes/js.html"></jsp:include>
    
	<!-- SPECIFIC JS START HERE -->
		
	
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
			
				<div class="example">Back button component</div>
				<div class="example">Back button full page width</div>
				<div class="panel ucg_back_button">
					<div class="container">
						<a class="ucg_back_button_link">Back to About Us</a>
					</div>
				</div>
	
				<div class="example">Back button full columns width CQ5 2 columns (1/2 - 1/2)</div>
				<div class="parsys_column two-columns-box clearfix">
					<div class="parsys_column two-columns-box-c0">
						<div class="panel ucg_back_button">
							<div class="container">
								<a class="ucg_back_button_link">Back to About Us</a>
							</div>
						</div>
					</div>
					<div class="parsys_column two-columns-box-c1">
						<div class="panel ucg_back_button">
							<div class="container">
								<a class="ucg_back_button_link">Back to About Us</a>
							</div>
						</div>
					</div>
				</div>
	
				<div class="example">Back button CQ5 2 columns (2/3 - 1/3)</div>
				<div class="parsys_column twoone-columns-box clearfix">
					<div class="parsys_column twoone-columns-box-c0">
						<div class="panel ucg_back_button">
							<div class="container">
								<a class="ucg_back_button_link">Back to About Us</a>
							</div>
						</div>
					</div>
					<div class="parsys_column twoone-columns-box-c1">
						<div class="panel ucg_back_button">
							<div class="container">
								<a class="ucg_back_button_link">Back to About Us</a>
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