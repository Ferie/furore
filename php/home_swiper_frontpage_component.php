<!DOCTYPE html>
<html lang="it">
	<head>
		<?php require_once("../includes/meta.html"); ?>

		<title>Swiper Frontpage Template</title>

		<?php require_once("../includes/css.html"); ?>

		<!-- SPECIFIC CSS START HERE -->

		<link type="text/css" rel="stylesheet" href="../plugin/css/idangerous.swiper.css"/>

		<!--generic CSS for Parsys Column container -->
		<link type="text/css" rel="stylesheet" href="../css/ucg_parsys_column.css"/>

		<!--specific CSS for Swiper Component-->
		<link type="text/css" rel="stylesheet" href="../css/videoplayer.css"/>
		<link type="text/css" rel="stylesheet" href="../css/ucg_swiper_frontpage.css"/>

		<!-- SPECIFIC CSS END HERE -->

		<link type="text/css" rel="stylesheet" href="../css/retina.css"/>

		<?php require_once("../includes/js.html"); ?>

		<!-- SPECIFIC JS START HERE -->

		<script type="text/javascript" src="../plugin/js/idangerous.swiper.js"></script>
		<!--specific JS for Swiper Component-->
		<script type="text/javascript" src="../js/videoplayer.js"></script>
		<script type="text/javascript" src="../js/ucg_swiper_frontpage.js"></script>

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

						<!-- SWIPER -->
						<div class="parsys contentpagewelcome-parsys">
							<div class="section">
								<div class="panel ucg_swiper">
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
									<!-- Modal -->
									<div class="swiper-container">
										<div class="swiper-wrapper">
											<!--First Slide-->
											<div class="swiper-slide">
												<img alt="Swipe 1" src="../img/swiper-aboutus.jpg">
												<div class="ucg_swiper_content">
													<div class="container">
														<div class="ucg_swiper_text">
															<h1>About Us</h1>
															<h3>Federico Ghizzoni, Ceo</h3>
															<h4>CEO Federico Ghizzoni Presents the UniCredit Strategic Approach and its Future Perspectives</h4>
															<a class="video" href="javascript:void(0);" data-video="https://www.youtube.com/embed/j_kOGqFslos?autoplay=1" target="_self">Play video</a>
														</div>
													</div>
												</div>
											</div>

											<!--Second Slide-->
											<div class="swiper-slide">
											  <img alt="Swipe 2" src="../img/swiper-governance.jpg">
												<div class="ucg_swiper_content">
													<div class="container">
														<div class="ucg_swiper_text">
															<h1>Governance</h1>
															<h3>Shareholders Meeting</h3>
															<h4>An UniCredit Shareholders' Meeting was held in Rome in both its Ordinary and Extraordinary session on May 13, 2014. Visit of our partner and discover our corporate solutions.</h4>
															<a class="internal" href="javascript:void(0);" data-video="https://www.youtube.com/embed/j_kOGqFslos?autoplay=1" target="_self">Visit section</a>
														</div>
													</div>
												</div>
											</div>

											<!--Third Slide-->
											<div class="swiper-slide">
											  <img alt="Swipe 3" src="../img/swiper-investors.jpg">
												<div class="ucg_swiper_content">
													<div class="container">
														<div class="ucg_swiper_text">
															<h1>Investors</h1>
															<h3>3Q14 Group Results Presentations</h3>
															<h4>An UniCredit Shareholders' Meeting was held in Rome in both its Ordinary and Extraordinary session on May 13, 2014</h4>
															<a class="external" href="javascript:void(0);" data-video="https://www.youtube.com/embed/j_kOGqFslos?autoplay=1" target="_blank">Visit partners</a>
														</div>
													</div>
												</div>
											</div>
											<!--Etc..-->
										</div>
									</div>
									<div class="ucg_swiper_arrows">
										<div class="container">
											<div class="ucg_swiper_arrow ucg_swiper_arrow_left"><a href="javascript: void(0);"></a></div>
											<div class="ucg_swiper_arrow ucg_swiper_arrow_right"><a href="javascript: void(0);"></a></div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- SWIPER -->

						<!-- PAGE ENDS HERE -->

						<?php require_once("../includes/footer.html"); ?>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>