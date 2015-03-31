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
		<link type="text/css" rel="stylesheet" href="css/ucg_button_component.css"/>
	
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
			
				<div class="example">Button component</div>
				<div class="example">Single button example TEST</div>
				<div class="panel ucg_button">
					<div class="container">
						<button class="btn ucg_button" title="Normal">Normal</button>
					</div>
				</div>
	
				<div class="example">Multiple buttons example</div>
				<div class="panel ucg_button">
					<div class="container">
						<button class="btn ucg_button_large" title="Large">Option number one Large Button</button>
						<button class="btn ucg_button_confirm" title="Confirm">Confirm</button>
						<button class="btn ucg_button disabled" title="Disabled">Disabled</button>
						<button class="btn ucg_button_confirm ucg_button_arrowed ucg_button_arrow_right" title="Confirm">STEP 2: QUESTIONS<span class="rightArrow"></span></button>
						<button class="btn ucg_button ucg_button_arrowed ucg_button_arrow_left" title="Confirm">Back<span class="leftArrow"></span></button>
						<button class="btn ucg_button ucg_button_addons ucg_button_addon_left" title="Confirm">Add question about this topic<span class="plus"></span></button>
						<button class="btn ucg_button ucg_button_addons ucg_button_addon_right" title="Confirm">Remove question about this topic<span class="minus"></span></button>
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