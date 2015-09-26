<!DOCTYPE html>
<html lang="it">
	<head>
		<?php require_once("../includes/meta.html"); ?>

		<title>Iframe Component</title>

		<?php require_once("../includes/css.html"); ?>

		<!-- SPECIFIC CSS START HERE -->

		<!--generic CSS for Parsys Column container-->
		<link type="text/css" rel="stylesheet" href="../css/ucg_parsys_column.css"/>

		<!-- SPECIFIC CSS END HERE -->

		<link type="text/css" rel="stylesheet" href="../css/retina.css"/>

		<?php require_once("../includes/js.html"); ?>

		<!-- SPECIFIC JS START HERE -->

		<!--specific JS for Iframe Component-->
		<script type="text/javascript" src="../js/ucg_iframe.js"></script>

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

						<div class="example">Iframe Component full width</div>
						<div class="parsys contentpagewelcome-parsys">
							<div class="section">
								<!-- IFRAME -->
								<div class="panel ucg_iframe">
									<div class="container">
										<div class="ucg_iframe_container" data-ucg-width="100%" data-ucg-height="320" data-src="https://www.unicreditgroup.eu">
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
										<div class="ucg_iframe_container" data-ucg-width="480" data-ucg-height="320" data-src="https://www.unicreditgroup.eu">
										</div>
									</div>
								</div>
								<!-- IFRAME -->
							</div>
							<div class="parsys_column twoone-columns-box-c1">
								<!-- IFRAME -->
								<div class="panel ucg_iframe">
									<div class="container">
										<div class="ucg_iframe_container" data-ucg-width="320" data-ucg-height="480" data-src="https://www.unicreditgroup.eu">
										</div>
									</div>
								</div>
								<!-- IFRAME -->
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