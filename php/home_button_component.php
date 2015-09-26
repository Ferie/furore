<!DOCTYPE html>
<html lang="it">
	<head>
		<?php require_once("../includes/meta.html"); ?>

		<title>Button Component</title>

		<?php require_once("../includes/css.html"); ?>

		<!-- SPECIFIC CSS START HERE -->

		<!--generic CSS for Parsys Column container-->
		<link type="text/css" rel="stylesheet" href="../css/ucg_parsys_column.css"/>

		<!--specific CSS for Back Button Component-->
		<link type="text/css" rel="stylesheet" href="../css/ucg_button_component.css"/>

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

						<!-- PAGE ENDS HERE -->

						<?php require_once("../includes/footer.html"); ?>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>