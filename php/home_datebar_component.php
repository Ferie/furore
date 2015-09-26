<!DOCTYPE html>
<html lang="it">
	<head>
		<?php require_once("../includes/meta.html"); ?>

		<title>Datebar Component</title>

		<?php require_once("../includes/css.html"); ?>

		<!-- SPECIFIC CSS START HERE -->

		<!--generic CSS for Parsys Column container-->
		<link type="text/css" rel="stylesheet" href="../css/ucg_parsys_column.css"/>

		<!--specific CSS for Date Bar Component-->
		<link type="text/css" rel="stylesheet" href="../css/ucg_datebar.css"/>

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

						<div class="example">Date Bar Component some example</div>
						<div class="parsys contentpagewelcome-parsys">
							<div class="section">
								<!-- DATE BAR -->
								<div class="panel ucg_datebar">
									<div class="container">
										<div class="header">
											<div class="date col-xs-12 clearfix">
												<ul class="days col-xs-7">
													<li>
														<h1>15</h1>
														<div class="labels">
															<span class="month">September</span>
															<span class="year">2014</span>
														</div>
													</li>
												</ul>
												<div class="labels col-xs-3">
													<div class="bar-cell">
														<span class="city">Milan</span>
														<span class="country">Italy</span>
													</div>
												</div>
												<div class="buttons col-xs-2">
													<div class="bar-cell">
														<button class="add"></button>
														<span>Save</span>
													</div>
												</div>
											</div>
											<div class="categories right col-xs-12">
												<label class="highlighted">Highlighted</label>
												<label class="investors">Investors</label>
											</div>
											<div class="clear"></div>
										</div>
									</div>
								</div>
								<!-- DATE BAR -->
								<div class="clear"></div>
							</div>
						</div>

						<div class="parsys contentpagewelcome-parsys">
							<div class="section">
								<!-- DATE BAR -->
								<div class="panel ucg_datebar">
									<div class="container">
										<div class="header">
											<div class="date col-xs-12 clearfix">
												<ul class="days col-xs-7">
													<li>
														<h1>28</h1>
													</li>
													<li>
														<h1>29</h1>
														<div class="labels">
															<span class="month">November</span>
															<span class="year">2014</span>
														</div>
													</li>
												</ul>
												<div class="labels col-xs-3">
													<div class="bar-cell">
														<span class="city">Milan</span>
														<span class="country">Italy</span>
													</div>
												</div>
												<div class="buttons col-xs-2">
													<div class="bar-cell">
														<button class="add"></button>
														<span>Save</span>
													</div>
												</div>
											</div>
											<div class="categories right col-xs-12">
												<label class="financial">Financial</label>
												<label class="careers">Careers</label>
												<label class="business">Business</label>
											</div>
											<div class="clear"></div>
										</div>
									</div>
								</div>
								<!-- DATE BAR -->
							</div>
						</div>

						<div class="parsys contentpagewelcome-parsys">
							<div class="section">
								<!-- DATE BAR -->
								<div class="panel ucg_datebar">
									<div class="container">
										<div class="header">
											<div class="date col-xs-12 clearfix">
												<ul class="days col-xs-7">
													<li>
														<h1>28</h1>
														<div class="labels">
															<span class="month">Nov<span class="hidden-xs">ember</span></span>
															<span class="year">2014</span>
														</div>
													</li>
													<li>
														<h1>2</h1>
														<div class="labels">
															<span class="month">Dec<span class="hidden-xs">ember</span></span>
															<span class="year">2014</span>
														</div>
													</li>
												</ul>
												<div class="labels col-xs-3">
													<div class="bar-cell">
														<span class="city">Milan</span>
														<span class="country">Italy</span>
													</div>
												</div>
												<div class="buttons col-xs-2">
													<div class="bar-cell">
														<button class="add"></button>
														<span>Save</span>
													</div>
												</div>
											</div>
											<div class="categories right col-xs-12">
												<label class="culturesociety">Culture & Society</label>
												<label class="sustainability">Sustainability</label>
											</div>
											<div class="clear"></div>
										</div>
									</div>
								</div>
								<!-- DATE BAR -->
							</div>
						</div>

						<div class="parsys contentpagewelcome-parsys">
							<div class="section">
								<!-- DATE BAR -->
								<div class="panel ucg_datebar">
									<div class="container">
										<div class="simpleHeader">
											<div class="ucg_date col-xs-5 clearfix"><b>29 October</b> 2014 - h 11:00</div>
											<div class="categories right col-xs-7">
												<label class="investors">Investors</label>
											</div>
											<div class="clear"></div>
										</div>
									</div>
								</div>
								<!-- DATE BAR -->
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