<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="it">
<head>
	<meta charset="utf-8"> 
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Video-Text Component</title>
	
	<jsp:include page="includes/css.html"></jsp:include>
	
	<!-- SPECIFIC CSS START HERE -->
	
		<!--generic CSS for Parsys Column container -->
		<link type="text/css" rel="stylesheet" href="css/ucg_parsys_column.css"/>

		<!--specific CSS for Video-Text Component-->
		<link type="text/css" rel="stylesheet" href="css/videoplayer.css"/>
		<link type="text/css" rel="stylesheet" href="css/ucg_video_text_component.css"/>

		<!--imported CSS component-->
		<link type="text/css" rel="stylesheet" href="css/ucg_title_component.css"/>
		<link type="text/css" rel="stylesheet" href="css/ucg_text_component.css"/>
		<link type="text/css" rel="stylesheet" href="css/ucg_link_component.css"/>
	
	<!-- SPECIFIC CSS END HERE -->    
       
    <link type="text/css" rel="stylesheet" href="css/retina.css"/>
	
	<jsp:include page="includes/js.html"></jsp:include>
    
	<!-- SPECIFIC JS START HERE -->
		
		<!--specific JS for Video-Text Component-->
		<script type="text/javascript" src="js/videoplayer.js"></script>
	
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
				<!-- Modal -->
				<div class="ucg_videoplayer_container">
					<div class="ucg_videoplayer modal fade" tabindex="-1" role="dialog" aria-labelledby="ucg_videoplayer" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
								</div>
								<div class="modal-body">
									<iframe width="480" height="320" src="" frameborder="0" allowfullscreen></iframe>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- End Modal -->
	
				<div class="example">Video-Text component</div>
				<div class="example">CQ5 2 columns (1/2 - 1/2)<br>Take care about the date behaviour</div>
				<div class="parsys_column two-columns-box clearfix">
					<div class="parsys_column two-columns-box-c0">
						<div class="panel ucg_video_text">
							<div class="container">
								<div class="ucg_video">
									<a class="ucg_videoplayer_starter" href="javascript:void(0);" data-video="https://www.youtube.com/embed/j_kOGqFslos?autoplay=1"></a>
									<img class="placeholder" src="img/professional_1.png" alt="Professional Career" title="Professional Career">
								</div>
								<div class="ucg_date"><b>15 November</b> 2015</div>
								<div class="ucg_txt">
									<h3>INTERVIEW</h3>
									<p>Roberto, IT Managing Director Italy</p>
								</div>
							</div>
						</div>
					</div>
					<div class="parsys_column two-columns-box-c1">
						<div class="panel ucg_video_text">
							<div class="container">
								<div class="ucg_video">
									<a class="ucg_videoplayer_starter" href="javascript:void(0);" data-video="https://www.youtube.com/embed/j_kOGqFslos?autoplay=1"></a>
									<img class="placeholder" src="img/student_1.png" alt="Student Career" title="Student Career">
								</div>
								<div class="ucg_txt">
									<h3>INTERVIEW</h3>
									<p>Sara, Retail Banking Managing Director Austria</p>
								</div>
							</div>
						</div>
					</div>
				</div>
	
				<div class="example">Video component with support of Title component, Text component and Link component<br>in CQ5 3 columns (1/3 - 1/3 - 1/3)</div>
				<div class="panel ucg_title">
					<div class="container">
						<div class="ucg_title_text_container">
							<div class="ucg_title_container">
								<h2>Students and graduates</h2>
							</div>
							<div class="ucg_subtitle"><h4></h4></div>
						</div>
						<div class="ucg_title_image_container"></div>
					</div>
				</div>
				<div class="parsys_column three-columns-box clearfix">
					<div class="parsys_column three-columns-box-c0">
						<div class="panel ucg_text">
							<div class="container">
								<div class="ucg_text_container">
									<p>Value and contribution of young talents are essential. UniCredit values power of collaboration and gives opportunity do grow and develop from the earliest stage of your career.</p>
								</div>
								<div class="panel ucg_linklist">
									<div class="container">
										<div class="ucg_link_container">
											<div class="ucg_link">
												<a href="javascript:void(0);">Students programs</a>
											</div>
											<div class="ucg_link">
												<a href="javascript:void(0);">Graduates programs</a>
											</div>
											<div class="ucg_link">
												<a href="javascript:void(0);">Cooperations and partnerships</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="parsys_column three-columns-box-c1">
						<div class="panel ucg_video_text">
							<div class="container">
								<div class="ucg_video">
									<a class="ucg_videoplayer_starter" href="javascript:void(0);" data-video="https://www.youtube.com/embed/j_kOGqFslos?autoplay=1"></a>
									<img class="placeholder" src="img/student_1.png" alt="Student Career" title="Student Career">
								</div>
								<div class="ucg_txt">
									<h3>INTERVIEW</h3>
									<p>Katerine, Commodity Research International Graduate Program</p>
								</div>
							</div>
						</div>
					</div>
					<div class="parsys_column three-columns-box-c2">
						<div class="panel ucg_video_text">
							<div class="container">
								<div class="ucg_video">
									<a class="ucg_videoplayer_starter" href="javascript:void(0);" data-video="https://www.youtube.com/embed/j_kOGqFslos?autoplay=1"></a>
									<img class="placeholder" src="img/student_2.png" alt="Student Career" title="Student Career">
								</div>
								<div class="ucg_date"><b>15 November</b> 2015</div>
								<div class="ucg_txt">
									<h3>INTERVIEW</h3>
									<p>Monia, Risk Analyst “Play the game” Internship program</p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="panel ucg_linklist">
					<div class="container">
						<div class="ucg_link_container">
							<div class="ucg_internal_link">
								<a href="javascript:void(0);">Apply now</a>
							</div>
						</div>
					</div>
				</div>
	
				<div class="example">CQ5 2 columns (1/3 - 2/3)</div>
				<div class="parsys_column onetwo-columns-box clearfix">
					<div class="parsys_column onetwo-columns-box-c0">
						<div class="panel ucg_video_text">
							<div class="container">
								<div class="ucg_video">
									<a class="ucg_videoplayer_starter" href="javascript:void(0);" data-video="https://www.youtube.com/embed/j_kOGqFslos?autoplay=1"></a>
									<img class="placeholder" src="img/professional_2.png" alt="Professional Career" title="Professional Career">
								</div>
								<div class="ucg_date"></div>
								<div class="ucg_txt">
									<h3>INTERVIEW</h3>
									<p>Sara, Retail Banking Managing Director Austria</p>
								</div>
							</div>
						</div>
					</div>
					<div class="parsys_column onetwo-columns-box-c1">
						<div class="panel ucg_video_text">
							<div class="container">
								<div class="ucg_video">
									<a class="ucg_videoplayer_starter" href="javascript:void(0);" data-video="https://www.youtube.com/embed/j_kOGqFslos?autoplay=1"></a>
									<img class="placeholder" src="img/press_and_news.png" alt="Press and news" title="Press and news">
								</div>
								<div class="ucg_date"><b>15 November</b> 2015</div>
								<div class="ucg_txt">
									<h3>Celebrating Christmas with UniCredit's Light-Covered Art in Milan</h3>
									<p>UniCredit will help celebrate Christmas at Milan's Gae Aulenti Square from December 6 to January 6 by erecting a Christmas tree sculpture that spells "Best Wishes" in all of our Group's languages and by lighting the spire of UniCredit Tower ...</p>
									<div class="panel ucg_linklist">
										<div class="container">
											<ul class="ucg_link_container">
												<li class="ucg_link">
													<a href="javascript:void(0);">Read more</a>
												</li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
	
				<div class="example">CQ5 2 columns (2/3 - 1/3)</div>
				<div class="parsys_column twoone-columns-box clearfix">
					<div class="parsys_column twoone-columns-box-c0">
						<div class="panel ucg_video_text">
							<div class="container">
								<div class="ucg_video">
									<a class="ucg_videoplayer_starter" href="javascript:void(0);" data-video="https://www.youtube.com/embed/j_kOGqFslos?autoplay=1"></a>
									<img class="placeholder" src="img/press_and_news.png" alt="Press and news" title="Press and news">
								</div>
								<div class="ucg_txt">
									<h3>Celebrating Christmas with UniCredit's Light-Covered Art in Milan</h3>
									<p>UniCredit will help celebrate Christmas at Milan's Gae Aulenti Square from December 6 to January 6 by erecting a Christmas tree sculpture that spells "Best Wishes" in all of our Group's languages and by lighting the spire of UniCredit Tower ...</p>
									<div class="panel ucg_linklist">
										<div class="container">
											<ul class="ucg_link_container">
												<li class="ucg_link">
													<a href="javascript:void(0);">Read more</a>
												</li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="parsys_column twoone-columns-box-c1">
						<div class="panel ucg_video_text">
							<div class="container">
								<div class="ucg_video">
									<a class="ucg_videoplayer_starter" href="javascript:void(0);" data-video="https://www.youtube.com/embed/j_kOGqFslos?autoplay=1"></a>
									<img class="placeholder" src="img/professional_1.png" alt="Professional Career" title="Professional Career">
								</div>
								<div class="ucg_date"></div>
								<div class="ucg_txt">
									<h3>INTERVIEW</h3>
									<p>Roberto, IT Managing Director Italy</p>
								</div>
							</div>
						</div>
					</div>
				</div>
	
				<div class="example">CQ5 Full page width</div>
				<div class="panel ucg_video_text">
					<div class="container">
						<div class="ucg_video">
							<a class="ucg_videoplayer_starter" href="javascript:void(0);" data-video="https://www.youtube.com/embed/j_kOGqFslos?autoplay=1"></a>
							<img class="placeholder" src="img/press_and_news.png" alt="Press and news" title="Press and news">
						</div>
						<div class="ucg_date"><b>15 November</b> 2015</div>
						<div class="ucg_txt">
							<h3>Celebrating Christmas with UniCredit's Light-Covered Art in Milan</h3>
							<p>UniCredit will help celebrate Christmas at Milan's Gae Aulenti Square from December 6 to January 6 by erecting a Christmas tree sculpture that spells "Best Wishes" in all of our Group's languages and by lighting the spire of UniCredit Tower ...</p>
							<div class="panel ucg_linklist">
								<div class="container">
									<ul class="ucg_link_container">
										<li class="ucg_link">
											<a href="javascript:void(0);">Read more</a>
										</li>
									</ul>
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