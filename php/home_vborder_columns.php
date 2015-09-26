<!DOCTYPE html>
<html lang="it">
	<head>
		<?php require_once("../includes/meta.html"); ?>

		<title>Column with vertical border</title>

		<?php require_once("../includes/css.html"); ?>

		<!-- SPECIFIC CSS START HERE -->

		<!--generic CSS for Parsys Column container -->
		<link type="text/css" rel="stylesheet" href="../css/ucg_parsys_column.css"/>

		<!--specific CSS for Image-Text Component-->
		<link type="text/css" rel="stylesheet" href="../css/ucg_image_text_component.css"/>

		<!--imported CSS component-->
		<link type="text/css" rel="stylesheet" href="../css/ucg_link_component.css"/>

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

						<div class="example">Examples of Columns with vertical border</div>
							<div class="example">CQ5 2 columns (1/2 - 1/2)<br>Take care about the date behaviour</div>
							<div class="parsys_column two-columns-box clearfix first-separator">
								<div class="parsys_column two-columns-box-c0">
									<div class="panel ucg_image_text">
										<div class="container">
											<div class="ucg_img">
												<img src="../img/views.png" alt="">
											</div>
											<div class="ucg_date"><b>15 November</b> 2015</div>
											<div class="ucg_txt">
												<h3>Our business model</h3>
												<p>The UniCredit business model is based on global functions specialization, customers proximity, holding global coordination.</p>
												<div class="panel ucg_linklist">
													<div class="container">
														<ul class="ucg_link_container">
															<li class="ucg_internal_link">
																<a href="javascript:void(0);">Business model</a>
															</li>
														</ul>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="parsys_column two-columns-box-c1">
									<div class="panel ucg_image_text">
										<div class="container">
											<div class="ucg_img">
												<img src="../img/desktop.png" alt="">
											</div>
											<div class="ucg_txt">
												<h3>Innovation</h3>
												<p>As a leading European bank, we make it easy for our customers to seize the opportunities and meet the challenges of real life.</p>
												<div class="panel ucg_linklist">
													<div class="container">
														<ul class="ucg_link_container">
															<li class="ucg_internal_link">
																<a href="javascript:void(0);">Innovation at Unicredit</a>
															</li>
														</ul>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="example">CQ5 3 columns (1/3 - 1/3 - 1/3)</div>
							<div class="parsys_column three-columns-box clearfix first-separator second-separator">
								<div class="parsys_column three-columns-box-c0">
									<div class="panel ucg_image_text">
										<div class="container">
											<div class="ucg_img">
												<img src="../img/real_life_banking.png" alt="">
											</div>
											<div class="ucg_txt">
												<h3>Real-life banking</h3>
												<p>As a leading European bank, we make it easy for our customers to seize the opportunities and meet the challenges of real life.</p>
												<div class="panel ucg_linklist">
													<div class="container">
														<ul class="ucg_link_container">
															<li class="ucg_internal_link">
																<a href="javascript:void(0);">Learn more about our identity</a>
															</li>
														</ul>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="parsys_column three-columns-box-c1">
									<div class="panel ucg_image_text">
										<div class="container">
											<div class="ucg_img">
												<img src="../img/DISTORSIONI_MOLASCHI.png" alt="">
											</div>
											<div class="ucg_txt">
												<h3>Innovation</h3>
												<p>As a leading European bank, we make it easy for our customers to seize the opportunities and meet the challenges of real life.</p>
												<p>As a leading European bank, we make it easy for our customers to seize the opportunities and meet the challenges of real life. As a leading European bank, we make it easy for our customers to seize the opportunities and meet the challenges of real life. As a leading European bank, we make it easy for our customers to seize the opportunities and meet the challenges of real life. As a leading European bank, we make it easy for our customers to seize the opportunities and meet the challenges of real life.</p>
												<p>As a leading European bank, we make it easy for our customers to seize the opportunities and meet the challenges of real life.</p>
												<div class="panel ucg_linklist">
													<div class="container">
														<ul class="ucg_link_container">
															<li class="ucg_internal_link">
																<a href="javascript:void(0);">Innovation at Unicredit</a>
															</li>
														</ul>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="parsys_column three-columns-box-c2">
									<div class="panel ucg_image_text">
										<div class="container">
											<div class="ucg_img">
												<img src="../img/RIFLESSI_TITTI_CIMMINO.png" alt="">
											</div>
											<div class="ucg_txt">
												<h3>Our business model</h3>
												<p>The UniCredit business model is based on global functions specialization, customers proximity, holding global coordination.</p>
												<div class="panel ucg_linklist">
													<div class="container">
														<ul class="ucg_link_container">
															<li class="ucg_internal_link">
																<a href="javascript:void(0);">Business model</a>
															</li>
														</ul>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="example">CQ5 2 columns (1/3 - 2/3)</div>
							<div class="parsys_column onetwo-columns-box clearfix">
								<div class="parsys_column onetwo-columns-box-c0">
									<div class="panel ucg_image_text">
										<div class="container">
											<div class="ucg_img">
												<img src="../img/RIFLESSI_TITTI_CIMMINO.png" alt="">
											</div>
											<div class="ucg_txt">
												<h3>Our business model</h3>
												<p>The UniCredit business model is based on global functions specialization, customers proximity, holding global coordination.</p>
												<div class="panel ucg_linklist">
													<div class="container">
														<ul class="ucg_link_container">
															<li class="ucg_internal_link">
																<a href="javascript:void(0);">Business model</a>
															</li>
														</ul>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="parsys_column onetwo-columns-box-c1">
									<div class="panel ucg_image_text">
										<div class="container">
											<div class="ucg_img">
												<img src="../img/press_and_news.png" alt="">
											</div>
											<div class="ucg_txt">
												<h3>Celebrating Christmas with UniCredit's Light-Covered Art in Milan</h3>
												<p>UniCredit will help celebrate Christmas at Milan's Gae Aulenti Square from December 6 to January 6 by erecting a Christmas tree sculpture that spells "Best Wishes" in all of our Group's languages and by lighting the spire of UniCredit Tower ...</p>
												<div class="panel ucg_linklist">
													<div class="container">
														<ul class="ucg_link_container">
															<li class="ucg_link">
																<a href="javascript:void(0);">Read more</a>
															</li>
														</ul>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="example">CQ5 2 columns (2/3 - 1/3)</div>
							<div class="parsys_column twoone-columns-box clearfix">
								<div class="parsys_column twoone-columns-box-c0">
									<div class="panel ucg_image_text">
										<div class="container">
											<div class="ucg_img">
												<img src="../img/DISTORSIONI_MOLASCHI.png" alt="">
											</div>
											<div class="ucg_date"><b>15 November</b> 2015</div>
											<div class="ucg_txt">
												<h3>Innovation</h3>
												<p>As a leading European bank, we make it easy for our customers to seize the opportunities and meet the challenges of real life.</p>
												<div class="panel ucg_linklist">
													<div class="container">
														<ul class="ucg_link_container">
															<li class="ucg_internal_link">
																<a href="javascript:void(0);">Innovation at Unicredit</a>
															</li>
														</ul>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="parsys_column twoone-columns-box-c1">
									<div class="panel ucg_image_text">
										<div class="container">
											<div class="ucg_img">
												<img src="../img/RIFLESSI_TITTI_CIMMINO.png" alt="">
											</div>
											<div class="ucg_txt">
												<h3>Our business model</h3>
												<p>The UniCredit business model is based on global functions specialization, customers proximity, holding global coordination.</p>
												<div class="panel ucg_linklist">
													<div class="container">
														<ul class="ucg_link_container">
															<li class="ucg_internal_link">
																<a href="javascript:void(0);">Business model</a>
															</li>
														</ul>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="example">CQ5 Full page width</div>
							<div class="panel ucg_image_text">
								<div class="container">
									<div class="ucg_img">
										<img src="../img/Milan_HQ.png" alt="">
									</div>
									<div class="ucg_txt">
										<h3>Corporate Governance report</h3>
										<p>As a leading European bank, we make it easy for our customers to seize the opportunities and meet the challenges of real life.</p>
										<div class="panel ucg_linklist">
											<div class="container">
												<ul class="ucg_link_container">
													<li class="ucg_internal_link">
														<a href="javascript:void(0);">Organizational structure</a>
													</li>
													<li class="ucg_internal_link">
														<a href="javascript:void(0);">Management</a>
													</li>
												</ul>
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