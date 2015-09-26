<!DOCTYPE html>
<html lang="it">
	<head>
		<?php require_once("../includes/meta.html"); ?>

		<title>Modal Component</title>

		<?php require_once("../includes/css.html"); ?>

		<!-- SPECIFIC CSS START HERE -->

		<!--generic CSS for Parsys Column container -->
		<link type="text/css" rel="stylesheet" href="../css/ucg_parsys_column.css"/>

		<!--specific CSS for Modal Component-->
		<link type="text/css" rel="stylesheet" href="../css/ucg_modal_component.css"/>

		<!--imported CSS component-->
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

						<!-- Modal -->
						<div class="ucg_modal">
							<div class="ucg_inner_modal modal fade" tabindex="-1" role="dialog" aria-labelledby="ucg_modal" aria-hidden="true">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
										</div>
										<div class="modal-body">
											<div class="ucg_modal_title"><b>Modal window title</b></div>
											If your Profile has been inactive for more than 11 months, please log-in within Search job opportunities in Italy and Austria the next 4 weeks and ensure that your data are up-to-date. Otherwise we shall erase your profile, according to the Data Privacy Statement.
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- End Modal -->

						<div class="example">Modal component</div>
						<div class="panel ucg_button">
							<div class="container">
								<button class="btn ucg_button_confirm" title="show modal" data-toggle="modal" data-target=".ucg_inner_modal">Show Modal</button>
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