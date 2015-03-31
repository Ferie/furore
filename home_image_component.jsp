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
		<link type="text/css" rel="stylesheet" href="css/ucg_link_component.css"/>
		<!--specific CSS for Image Component-->
		<link type="text/css" rel="stylesheet" href="css/ucg_image_component.css"/>
	
	
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
				<div class="example">Image component</div>
				<div class="example">Image full page width</div>
				<div class="panel ucg_image">
					<div class="container">
						<div class="ucg_image_container">
							<img src="img/unicredit_hq.png" alt="">
						</div>
					</div>
				</div>
	
				<div class="example">Image full columns width CQ5 2 columns (1/2 - 1/2)</div>
				<div class="parsys_column two-columns-box clearfix">
					<div class="parsys_column two-columns-box-c0">
						<div class="example">Image full column width</div>
						<div class="panel ucg_image">
							<div class="container">
								<div class="ucg_image_container">
									<img src="img/careers.png" alt="">
								</div>
							</div>
						</div>
					</div>
					<div class="parsys_column two-columns-box-c1">
						<div class="example">Image full column width</div>
						<div class="panel ucg_image">
							<div class="container">
								<div class="ucg_image_container">
									<img src="img/alba_aerea.png" alt="">
								</div>
							</div>
						</div>
					</div>
				</div>
	
				<div class="example">Image full column with text on it with CQ5 3 columns (1/3 - 1/3 - 1/3)</div>
				<div class="parsys_column three-columns-box clearfix">
					<div class="parsys_column three-columns-box-c0">
						<div class="example">bottom left</div>
						<div class="panel ucg_image">
							<div class="container">
								<div class="ucg_image_container">
									<img src="img/curriculum_vitae.png" alt="">
									<div class="ucg_text_on_image_container bottom_left">
										<div class="ucg_text_on_image">
											<h4>Federico Ghizzoni</h4>
										</div>
										<div class="panel ucg_linklist">
											<div class="container">
												<ul class="ucg_link_container">
													<li class="ucg_internal_link">
														<a href="#">Complete CV</a>
													</li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="parsys_column three-columns-box-c1">
						<div class="example">bottom right</div>
						<div class="panel ucg_image">
							<div class="container">
								<div class="ucg_image_container">
									<img src="img/curriculum_vitae.png" alt="">
									<div class="ucg_text_on_image_container bottom_right">
										<div class="ucg_text_on_image">
											<h4>Federico Ghizzoni</h4>
										</div>
										<div class="panel ucg_linklist">
											<div class="container">
												<ul class="ucg_link_container">
													<li class="ucg_internal_link">
														<a href="#">Complete CV</a>
													</li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="parsys_column three-columns-box-c2">
						<div class="example">top left</div>
						<div class="panel ucg_image">
							<div class="container">
								<div class="ucg_image_container">
									<img src="img/curriculum_vitae.png" alt="">
									<div class="ucg_text_on_image_container top_left">
										<div class="ucg_text_on_image">
											<h4>Federico Ghizzoni</h4>
										</div>
										<div class="panel ucg_linklist">
											<div class="container">
												<ul class="ucg_link_container">
													<li class="ucg_internal_link">
														<a href="#">Complete CV</a>
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
				
			
			<!-- PAGE END HERE -->
						
				<jsp:include page="includes/footer.html"></jsp:include>
			</div>
		</div>
	</div>
</div>
</body>
</html>