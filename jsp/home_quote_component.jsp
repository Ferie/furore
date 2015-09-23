<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="it">
	<head>
		<jsp:include page="../includes/meta.html"></jsp:include>

		<title>Quote Component</title>

		<jsp:include page="../includes/css.html"></jsp:include>

		<!-- SPECIFIC CSS START HERE -->

		<!--generic CSS for Parsys Column container -->
		<link type="text/css" rel="stylesheet" href="../css/ucg_parsys_column.css"/>

		<!--specific CSS for Quote Component-->
		<link type="text/css" rel="stylesheet" href="../css/ucg_quote_component.css"/>

		<!-- SPECIFIC CSS END HERE -->

		<link type="text/css" rel="stylesheet" href="../css/retina.css"/>

		<jsp:include page="../includes/js.html"></jsp:include>

		<!-- SPECIFIC JS START HERE -->

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

						<!-- PAGE STARTS HERE -->

						<div class="example">Quote component</div>
						<div class="example">CQ5 2 columns (1/2 - 1/2)</div>
						<div class="parsys_column two-columns-box clearfix">
							<div class="parsys_column two-columns-box-c0">
								<div class="panel ucg_quote">
									<div class="container">
										<div class="ucg_img_quote col-xs-4">
											<img src="../img/quote_1.png" alt="">
										</div>
										<div class="ucg_txt_quote col-xs-8">
											<p>"I suggest all job applicants to maintain an optimistic attitutde and mindset during the interview"</p>
											<p>-</p>
											<p class="ucg_reference"><b>Valentina, HR Managing Director</b></p>
											<p class="ucg_ref_nation">Italy</p>
										</div>
									</div>
								</div>
							</div>
							<div class="parsys_column two-columns-box-c1">
								<div class="panel ucg_quote">
									<div class="container">
										<div class="ucg_img_quote col-xs-4">
											<img src="../img/quote_2.png" alt="">
										</div>
										<div class="ucg_txt_quote col-xs-8">
											<p>"A good applicant should always ask questions to understand in advance his expectations and key responsabilities"</p>
											<p>-</p>
											<p class="ucg_reference"><b>Valerio, Banking Managing Director</b></p>
											<p class="ucg_ref_nation">Italy</p>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="example">CQ5 3 columns (1/3 - 1/3 - 1/3)</div>
						<div class="parsys_column three-columns-box clearfix">
							<div class="parsys_column three-columns-box-c0">
								<div class="panel ucg_quote">
									<div class="container">
										<div class="ucg_img_quote col-xs-4 col-sm-6">
											<img src="../img/quote_1.png" alt="">
										</div>
										<div class="ucg_txt_quote col-xs-8 col-sm-6">
											<p>"I suggest all job applicants to maintain an optimistic attitutde and mindset during the interview"</p>
											<p>-</p>
											<p class="ucg_reference"><b>Valentina, HR Managing Director</b></p>
											<p class="ucg_ref_nation">Italy</p>
										</div>
									</div>
								</div>
							</div>
							<div class="parsys_column three-columns-box-c1">
								<div class="panel ucg_quote">
									<div class="container">
										<div class="ucg_img_quote col-xs-4 col-sm-6">
											<img src="../img/quote_2.png" alt="">
										</div>
										<div class="ucg_txt_quote col-xs-8 col-sm-6">
											<p>"A good applicant should always ask questions to understand in advance his expectations and key responsabilities"</p>
											<p>-</p>
											<p class="ucg_reference"><b>Valerio, Banking Managing Director</b></p>
											<p class="ucg_ref_nation">Italy</p>
										</div>
									</div>
								</div>
							</div>
							<div class="parsys_column three-columns-box-c2">
								<div class="panel ucg_quote">
									<div class="container">
										<div class="ucg_img_quote col-xs-4 col-sm-6">
											<img src="../img/quote_3.png" alt="">
										</div>
										<div class="ucg_txt_quote col-xs-8 col-sm-6">
											<p>"I suggest all job applicants to maintain an optimistic attitutde and mindset during the interview"</p>
											<p>-</p>
											<p class="ucg_reference"><b>Valentina, HR Managing Director</b></p>
											<p class="ucg_ref_nation">Italy</p>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="example">CQ5 Full page width</div>
						<div class="panel ucg_quote">
							<div class="container">
								<div class="ucg_img_quote col-xs-4 col-sm-2">
									<img src="../img/quote_3.png" alt="">
								</div>
								<div class="ucg_txt_quote col-xs-8 col-sm-10">
									<p>"I suggest all job applicants to maintain an optimistic attitutde and mindset during the interview"</p>
									<p>-</p>
									<p class="ucg_reference"><b>Valentina, HR Managing Director</b></p>
									<p class="ucg_ref_nation">Italy</p>
								</div>
							</div>
						</div>

						<!-- PAGE ENDS HERE -->

						<jsp:include page="../includes/footer.html"></jsp:include>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>