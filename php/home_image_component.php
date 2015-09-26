<!DOCTYPE html>
<html lang="it">
	<head>
		<?php require_once("../includes/meta.html"); ?>

		<title>Image Component</title>

		<?php require_once("../includes/css.html"); ?>

		<!-- SPECIFIC CSS START HERE -->

		<!--generic CSS for Parsys Column container-->
		<link type="text/css" rel="stylesheet" href="../css/ucg_parsys_column.css"/>
		<link type="text/css" rel="stylesheet" href="../css/ucg_link_component.css"/>

		<!--specific CSS for Image Component-->
		<link type="text/css" rel="stylesheet" href="../css/ucg_image_component.css"/>

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

						<div class="example">Image component</div>
						<div class="example">Image full page width</div>
						<div class="panel ucg_image">
							<div class="container">
								<div class="ucg_image_container">
									<img src="../img/unicredit_hq.png" alt="">
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
											<img src="../img/careers.png" alt="">
										</div>
									</div>
								</div>
							</div>
							<div class="parsys_column two-columns-box-c1">
								<div class="example">Image full column width</div>
								<div class="panel ucg_image">
									<div class="container">
										<div class="ucg_image_container">
											<img src="../img/alba_aerea.png" alt="">
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
											<img src="../img/curriculum_vitae.png" alt="">
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
											<img src="../img/curriculum_vitae.png" alt="">
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
											<img src="../img/curriculum_vitae.png" alt="">
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

						<!-- PAGE ENDS HERE -->

						<?php require_once("../includes/footer.html"); ?>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>