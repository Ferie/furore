<!DOCTYPE html>
<html lang="it">
	<head>
		<?php require_once("../includes/meta.html"); ?>

		<title>Intraday Component</title>

		<?php require_once("../includes/css.html"); ?>

		<!-- SPECIFIC CSS START HERE -->

		<!--generic CSS for Parsys Column container -->
		<link type="text/css" rel="stylesheet" href="../css/ucg_parsys_column.css"/>

		<!--imported CSS for Links Interday-->
		<link type="text/css" rel="stylesheet" href="../css/ucg_intraday_component.css"/>
		
		<!--specific CSS for Image Component-->
		<link type="text/css" rel="stylesheet" href="../css/ucg_image_component.css"/>

		<!--imported CSS for Links Component-->
		<link type="text/css" rel="stylesheet" href="../css/ucg_link_component.css"/>

		<!-- SPECIFIC CSS END HERE -->

		<link type="text/css" rel="stylesheet" href="../css/retina.css"/>

		<?php require_once("../includes/js.html"); ?>

		<!-- SPECIFIC JS START HERE -->

		<!--specific JS for Interday Component-->
		<script type="text/javascript" src="../js/ucg_intraday.js"></script>

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

						<div class="example">Intraday Component</div>
						<div class="example">CQ5 2 columns (2/3 - 1/3)</div>
						<div class="parsys_column twoone-columns-box clearfix">
							<div class="parsys_column twoone-columns-box-c0">
								<div class="panel ucg_image ucg_intraday">
									<div class="container">
										<div class="ucg_img hidden-xs">
											<img src="../img/ucg_intraday_graph.png" alt="">
										</div>
									</div>
								</div>
							</div>
							<div class="parsys_column twoone-columns-box-c1">
								<div class="panel ucg_intraday with-image">
									<div class="container">
										<div class="ucg_intraday_title">
											<span>UNICREDIT SHARE - INTRADAY</span>
										</div>
										<div class="ucg_intraday_text">
											<div class="title">Last price</div>
											<span class="value">6,16</span>
											<span class="currency">&euro;</span>
											<span class="trend up">+ 0,24</span>
											<div class="clear"></div>
										</div>
										<div class="ucg_intraday_date">
											<span class="day">06</span>
											<span class="month">October</span>
											<span class="year">2014</span>
											<div class="right">
												<span class="hours">12</span>
												<span class="minutes">20</span>
											</div>
											<div class="clear"></div>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="example">Intraday Component - No Title</div>
						<div class="example">CQ5 2 columns (2/3 - 1/3)</div>
						<div class="parsys_column twoone-columns-box clearfix">
							<div class="parsys_column twoone-columns-box-c0">
								<div class="panel ucg_image ucg_intraday">
									<div class="container">
										<div class="ucg_img hidden-xs">
											<img src="../img/ucg_intraday_graph.png" alt="">
										</div>
									</div>
								</div>
							</div>
							<div class="parsys_column twoone-columns-box-c1">
								<div class="panel ucg_intraday with-image">
									<div class="container">
										<div class="ucg_intraday_text">
											<div class="title">Last price</div>
											<span class="value">6,16</span>
											<span class="currency">&euro;</span>
											<span class="trend up">+ 0,24</span>
											<div class="clear"></div>
										</div>
										<div class="ucg_intraday_date">
											<span class="day">06</span>
											<span class="month">October</span>
											<span class="year">2014</span>
											<div class="right">
												<span class="hours">12</span>
												<span class="minutes">20</span>
											</div>
											<div class="clear"></div>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="example">CQ5 2 columns without image (1/3 - 2/3)</div>
						<div class="parsys_column onetwo-columns-box clearfix">
							<div class="parsys_column onetwo-columns-box-c0">
								<div class="panel ucg_intraday without-image">
									<div class="container">
										<div class="ucg_intraday_title">
											<span>UNICREDIT SHARE - INTRADAY</span>
										</div>
										<div class="ucg_intraday_text">
											<div class="title">Last price</div>
											<span class="value">6,16</span>
											<span class="currency">&euro;</span>
											<span class="trend up">+ 0,24</span>
											<div class="clear"></div>
										</div>
										<div class="ucg_intraday_date">
											<span class="day">06</span>
											<span class="month">October</span>
											<span class="year">2014</span>
											<div class="right">
												<span class="hours">12</span>
												<span class="minutes">20</span>
											</div>
											<div class="clear"></div>
										</div>
									</div>
								</div>
							</div>
							<div class="parsys_column onetwo-columns-box-c1">
								<div class="panel ucg_intraday without-image">
									<div class="container">
										<div class="ucg_intraday_title">
											<span>UNICREDIT SHARE - INTRADAY</span>
										</div>
										<div class="ucg_intraday_text">
											<div class="title">Last price</div>
											<span class="value">6,16</span>
											<span class="currency">&euro;</span>
											<span class="trend up">+ 0,24</span>
											<div class="clear"></div>
										</div>
										<div class="ucg_intraday_date">
											<span class="day">06</span>
											<span class="month">October</span>
											<span class="year">2014</span>
											<div class="right">
												<span class="hours">12</span>
												<span class="minutes">20</span>
											</div>
											<div class="clear"></div>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="example">CQ5 Full page width</div>
						<div class="parsys_column two-columns-box clearfix">
							<div class="parsys_column two-columns-box-c0">
								<div class="panel ucg_intraday without-image">
									<div class="container">
										<div class="ucg_intraday_title">
											<span>UNICREDIT SHARE - INTRADAY</span>
										</div>
										<div class="ucg_intraday_text">
											<div class="title">Last price</div>
											<span class="value">6,16</span>
											<span class="currency">&euro;</span>
											<span class="trend up">+ 0,24</span>
											<div class="clear"></div>
										</div>
									</div>
								</div>
							</div>
							<div class="parsys_column two-columns-box-c1">
								<div class="panel ucg_intraday without-image only-date">
									<div class="container">
										<div class="ucg_intraday_title">
											<span>UNICREDIT SHARE - INTRADAY</span>
										</div>
										<div class="ucg_intraday_date">
											<span class="day">06</span>
											<span class="month">October</span>
											<span class="year">2014</span>
											<div class="right">
												<span class="hours">12</span>
												<span class="minutes">20</span>
											</div>
											<div class="clear"></div>
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