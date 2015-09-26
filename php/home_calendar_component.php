<!DOCTYPE html>
<html lang="it">
	<head>
		<?php require_once("../includes/meta.html"); ?>

		<title>Calendar Component</title>

		<?php require_once("../includes/css.html"); ?>

		<!-- SPECIFIC CSS START HERE -->

		<!--generic CSS for Parsys Column container-->
		<link type="text/css" rel="stylesheet" href="../css/ucg_parsys_column.css"/>

		<!--imported CSS component-->
		<link type="text/css" rel="stylesheet" href="../plugin/css/idangerous.swiper.css"/>
		<link type="text/css" rel="stylesheet" href="../plugin/css/all.css"/>
		<link type="text/css" rel="stylesheet" href="../css/form.css"/>
		<link type="text/css" rel="stylesheet" href="../css/form-desktop.css"/>
		<link type="text/css" rel="stylesheet" href="../css/ucg_title_component.css"/>
		<link type="text/css" rel="stylesheet" href="../css/ucg_text_component.css"/>
		<link type="text/css" rel="stylesheet" href="../css/ucg_link_component.css"/>
		<link type="text/css" rel="stylesheet" href="../css/ucg_spacer.css"/>

		<!--specific CSS for Calendar Tools Component-->
		<link type="text/css" rel="stylesheet" href="../css/ucg_calendar_tools_component.css"/>

		<!-- SPECIFIC CSS END HERE -->

		<link type="text/css" rel="stylesheet" href="../css/retina.css"/>

		<?php require_once("../includes/js.html"); ?>

		<!-- SPECIFIC JS START HERE -->

		<script type="text/javascript" src="../plugin/js/idangerous.swiper.js"></script>
		<script type="text/javascript" src="../plugin/js/icheck.min.js"></script>
		<script type="text/javascript" src="../plugin/js/doT.min.js"></script>

		<!-- SPACER -->
		<script type="text/javascript" src="../js/ucg_spacer.js"></script>	
		<!--specific JS for Calendar Component-->
		<script type="text/javascript" src="../js/ucg_calendar_tools.js"></script>
		<script type="text/javascript" src="../js/form.js"></script>

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

						<div class="panel grey">
							<div class="parsys contentpagewelcome-parsys">
								<div class="section">
									<!-- EVENT -->
									<div class="panel ucg_calendar_tool">
										<div class="parsys_column two-columns-box clearfix">
											<div class="parsys_column two-columns-box-c0">
												<div class="panel ucg_title">
													<div class="container">
														<div class="ucg_title_text_container">
															<div class="ucg_title_container">
																<h2>Calendar</h2>
															</div>
															<div class="ucg_subtitle">
																<h4></h4>
															</div>
														</div>
														<div class="ucg_title_image_container"></div>
													</div>
												</div>
											</div>
											<div class="parsys_column two-columns-box-c1">
												<div class="panel ucg_calendar_tool_controller">
													<div class="container">
														<div class="ucg_radio checked col-xs-6">
															<input class="iradio_ubis" checked type="radio" name="switchcalendar" value="event" data-swiper="Events001"/>
															<label for="switchcalendar">All Events</label>
														</div>
														<div class="ucg_radio col-xs-6">
															<input class="iradio_ubis" type="radio" name="switchcalendar" value="financial" data-swiper="Events001"/>
															<label for="switchcalendar">Financial Events</label>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="parsys_column three-columns-box clearfix swiper-container" data-type="event" data-name="Events001" data-category="">
											<div class="swiper-wrapper">
											</div>
										</div>
										<div class="ucg_calendar_tool_addon-container panel">
											<div class="container">
												<div class="ucg_calendar_tool_arrows panel hidden-xs">
													<div>
														<a class="prev" href="javascript:void(0);" data-target="Events001"></a>
														<a class="next" href="javascript:void(0);" data-target="Events001"></a>
													</div>
												</div>
												<div class="panel ucg_linklist">
													<ul class="ucg_link_container">
														<li class="ucg_internal_link">
															<a href="javascript:void(0);">Financial highlights</a>
														</li>
													</ul>
												</div>
											</div>
										</div>
									</div>
									<!-- EVENT -->
								</div>
							</div>
						</div>
							<div class="parsys contentpagewelcome-parsys">
								<div class="section">
									<!-- EVENT -->
									<div class="panel ucg_calendar_tool">
										<div class="panel ucg_title">
											<div class="container">
												<div class="ucg_title_text_container">
													<div class="ucg_title_container">
														<h2>Events</h2>
													</div>
													<div class="ucg_subtitle">
														<h4></h4>
													</div>
												</div>
												<div class="ucg_title_image_container"></div>
											</div>
										</div>
										<div class="parsys_column three-columns-box clearfix swiper-container" data-type="event" data-name="Event002" data-category="">
											<div class="swiper-wrapper">
											</div>
										</div>
										<div class="ucg_calendar_tool_addon-container panel">
											<div class="container">
												<div class="ucg_calendar_tool_arrows panel hidden-xs">
													<div>
														<a class="prev" href="javascript:void(0);" data-target="Event002"></a>
														<a class="next" href="javascript:void(0);" data-target="Event002"></a>
													</div>
												</div>
												<div class="panel ucg_linklist">
													<ul class="ucg_link_container">
														<li class="ucg_internal_link">
															<a href="javascript:void(0);">Financial highlights</a>
														</li>
													</ul>
												</div>
											</div>
										</div>
									</div>
									<!-- EVENT -->
								</div>
							</div>
							<div class="parsys contentpagewelcome-parsys">
								<div class="section">
									<!-- EVENT -->
									<div class="panel grey">
										<div class="ucg_calendar_tool">
											<div class="parsys contentpagewelcome-parsys">
												<div class="section">
													<div class="ucg_spacer" data-ucg-height-mobile="10" data-ucg-height="20"></div>
												</div>
											</div>
											<div class="panel ucg_title">
												<div class="container">
													<div class="ucg_title_text_container">
														<div class="ucg_title_container">
															<h2>Financial</h2>
														</div>
														<div class="ucg_subtitle">
															<h4></h4>
														</div>
													</div>
													<div class="ucg_title_image_container"></div>
												</div>
											</div>
											<div class="parsys_column three-columns-box clearfix swiper-container" data-type="financial" data-name="Financial001" data-category="">
												<div class="swiper-wrapper">
												</div>
											</div>
											<div class="ucg_calendar_tool_addon-container panel">
												<div class="container">
													<div class="ucg_calendar_tool_arrows panel hidden-xs">
														<div>
															<a class="prev" href="javascript:void(0);" data-target="Financial001"></a>
															<a class="next" href="javascript:void(0);" data-target="Financial001"></a>
														</div>
													</div>
													<div class="panel ucg_linklist">
														<ul class="ucg_link_container">
															<li class="ucg_internal_link">
																<a href="javascript:void(0);">Financial highlights</a>
															</li>
														</ul>
													</div>
												</div>
											</div>
										</div>
										<!-- EVENT -->
										<div class="parsys contentpagewelcome-parsys">
											<div class="section">
												<div class="ucg_spacer" data-ucg-height-mobile="10" data-ucg-height="20"></div>
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