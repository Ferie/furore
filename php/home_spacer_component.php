<!DOCTYPE html>
<html lang="it">
	<head>
		<?php require_once("../includes/meta.html"); ?>

		<title>Spacer Component</title>

		<?php require_once("../includes/css.html"); ?>

		<!-- SPECIFIC CSS START HERE -->

		<!--generic CSS for Parsys Column container -->
		<link type="text/css" rel="stylesheet" href="../css/ucg_parsys_column.css"/>

		<!--specific CSS for Horizontal line Component-->
		<link type="text/css" rel="stylesheet" href="../css/ucg_spacer.css"/>
		
		<!--specific CSS for Horizontal line Component-->
		<link type="text/css" rel="stylesheet" href="../css/ucg_horizontal_line_component.css"/>

		<!-- SPECIFIC CSS END HERE -->

		<link type="text/css" rel="stylesheet" href="../css/retina.css"/>

		<?php require_once("../includes/js.html"); ?>

		<!-- SPECIFIC JS START HERE -->

		<!--specific JS for Spacer Component-->
		<script type="text/javascript" src="../js/ucg_spacer.js"></script>

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

						<div class="example">Spacer Component</div>
						<div class="ucg_horizontal_line">
							<div class="spacer1"></div>
							<div class="spacer2"></div>
						</div>
						<div class="ucg_spacer" data-ucg-height="20" data-ucg-height-mobile="10"></div>
						<div class="ucg_horizontal_line">
							<div class="spacer1"></div>
							<div class="spacer2"></div>
						</div>
						<div class="ucg_spacer" data-ucg-height="120" data-ucg-height-mobile="30"></div>
						<div class="ucg_horizontal_line">
							<div class="spacer1"></div>
							<div class="spacer2"></div>
						</div>
						<div class="ucg_spacer" data-ucg-height="220" data-ucg-height-mobile="60"></div>
						<div class="ucg_horizontal_line">
							<div class="spacer1"></div>
							<div class="spacer2"></div>
						</div>
						<div class="ucg_spacer" data-ucg-height="320" data-ucg-height-mobile="100"></div>
						<div class="ucg_horizontal_line">
							<div class="spacer1"></div>
							<div class="spacer2"></div>
						</div>

						<!-- PAGE ENDS HERE -->

						<?php require_once("../includes/footer.html"); ?>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>