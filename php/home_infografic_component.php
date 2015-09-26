<!DOCTYPE html>
<html lang="it">
	<head>
		<?php require_once("../includes/meta.html"); ?>

		<title>Infografic Component</title>

		<?php require_once("../includes/css.html"); ?>

		<!-- SPECIFIC CSS START HERE -->

		<!--generic CSS for Parsys Column container-->
		<link type="text/css" rel="stylesheet" href="../css/ucg_parsys_column.css"/>

		<!--specific CSS for InfograficComponent-->
		<link type="text/css" rel="stylesheet" href="../css/ucg_infografic_component.css"/>

		<!--imported CSS component-->
		<!--specific CSS for Title Component-->
		<link type="text/css" rel="stylesheet" href="../css/ucg_title_component.css"/>
		<!--specific CSS for Image Component-->
		<link type="text/css" rel="stylesheet" href="../css/ucg_image_component.css"/>
		<!--specific CSS for Links Component-->
		<link type="text/css" rel="stylesheet" href="../css/ucg_link_component.css"/>
		<link type="text/css" rel="stylesheet" href="../css/ucg_spacer.css"/>

		<!-- SPECIFIC CSS END HERE -->

		<link type="text/css" rel="stylesheet" href="../css/retina.css"/>

		<?php require_once("../includes/js.html"); ?>

		<!-- SPECIFIC JS START HERE -->

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

						<div class="example">Infografic Component</div>
						<div class="example">CQ5 Full page width adaptive with some image allowed</div>
						<div class="panel grey">
							<div class="ucg_spacer" data-ucg-height="40" data-ucg-height-mobile="20"></div>
							<div class="panel ucg_infografic separator">
								<div class="panel ucg_title">
									<div class="container">
										<div class="ucg_title_text_container">
											<div class="ucg_title_container">
												<h2>Financial Highlights 3Q14</h2>
											</div>
											<div class="ucg_subtitle"></div>
										</div>
										<div class="ucg_title_image_container"></div>
									</div>
								</div>

								<div class="parsys contentpagewelcome-parsys">
									<div class="section">
										<!-- INFOGRAFIC COMPONENT -->
										<div class="panel ucg_infografic_container">
											<div class="container">
												<div class="ucg_infografic_text">
													<div class="title">Operating profit (loss)</div>
													<div class="value">2,145</div>
													<div class="title">Net profit (loss)<a class="apix">3</a></div>
													<div class="value">722</div>
													<div class="title">Shareholders' equity</div>
													<div class="value">51,357</div>
													<div class="panel ucg_linklist">
														<div class="container">
															<ul class="ucg_link_container">
																<li class="ucg_internal_link">
																	<a href="javascript:void(0);">Full financial highlights</a>
																</li>
															</ul>
														</div>
													</div>
												</div>
												<div class="panel ucg_image">
													<div class="ucg_image_container">
														<img src="../img/ucg_infografic_type.png" alt="">
													</div>
													<div class="panel ucg_linklist">
														<div class="container">
															<ul class="ucg_link_container">
																<li class="ucg_internal_link">
																	<a href="javascript:void(0);">See Group Balance</a>
																</li>
															</ul>
														</div>
													</div>
												</div>
												<div class="panel ucg_image">
													<div class="ucg_image_container">
														<img src="../img/ucg_infografic_geopgraphicl.png" alt="">
													</div>
												</div>
												<div class="panel ucg_image">
													<div class="ucg_image_container">
														<img src="../img/ucg_infografic_type_1.png" alt="">
													</div>
												</div>
												<div class="panel ucg_image">
													<div class="ucg_image_container">
														<img src="../img/ucg_infografic_geopgraphicl_1.png" alt="">
													</div>
												</div>
												<div class="panel ucg_image">
													<div class="ucg_image_container">
														<img src="../img/ucg_infografic_type_2.png" alt="">
													</div>
												</div>
												<div class="panel ucg_image">
													<div class="ucg_image_container">
														<img src="../img/ucg_infografic_geopgraphicl_2.png" alt="">
													</div>
												</div>
											</div>
										</div>
										<!-- INFOGRAFIC COMPONENT -->
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