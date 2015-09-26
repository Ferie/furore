<!DOCTYPE html>
<html lang="it">
	<head>
		<?php require_once("../includes/meta.html"); ?>

		<title>Quote Component</title>

		<?php require_once("../includes/css.html"); ?>

		<!-- SPECIFIC CSS START HERE -->

		<!--generic CSS for Parsys Column container -->
		<link type="text/css" rel="stylesheet" href="../css/ucg_parsys_column.css"/>

		<!--specific CSS for Quote Component-->
		<link type="text/css" rel="stylesheet" href="../css/ucg_quote_component.css"/>

		<!-- SPECIFIC CSS END HERE -->

		<link type="text/css" rel="stylesheet" href="../css/retina.css"/>

		<?php require_once("../includes/js.html"); ?>

		<!-- SPECIFIC JS START HERE -->

		<!-- SPECIFIC JS END HERE -->
	</head>

	<body>
		<?php require_once("../includes/message.html"); ?>

		<?php require_once("../includes/header.html"); ?>

		<?php require_once("../includes/search.html"); ?>

		<div class="body-container-table">
			<div class="body-container-cell">
				<?php require_once("../includes/sidebar.html"); ?>
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

						<?php require_once("../includes/footer.html"); ?>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>