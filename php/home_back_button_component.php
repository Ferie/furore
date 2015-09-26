<!DOCTYPE html>
<html lang="it">
	<head>
		<?php require_once("../includes/meta.html"); ?>

		<title>Back Button Component</title>

		<?php require_once("../includes/css.html"); ?>

		<!-- SPECIFIC CSS START HERE -->

		<!--generic CSS for Parsys Column container-->
		<link type="text/css" rel="stylesheet" href="../css/ucg_parsys_column.css"/>

		<!--specific CSS for Back Button Component-->
		<link type="text/css" rel="stylesheet" href="../css/ucg_back_button_component.css"/>

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

						<!-- PAGE ENDS HERE -->

						<?php require_once("../includes/footer.html"); ?>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>