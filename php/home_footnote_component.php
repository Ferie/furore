<!DOCTYPE html>
<html lang="it">
	<head>
		<?php require_once("../includes/meta.html"); ?>

		<title>Footnote Component</title>

		<?php require_once("../includes/css.html"); ?>

		<!-- SPECIFIC CSS START HERE -->

		<!--generic CSS for Parsys Column container-->
		<link type="text/css" rel="stylesheet" href="../css/ucg_parsys_column.css"/>

		<!--specific CSS for Footnote Component-->
		<link type="text/css" rel="stylesheet" href="../css/ucg_footnote_component.css"/>

		<!-- SPECIFIC CSS END HERE -->

		<link type="text/css" rel="stylesheet" href="../css/retina.css"/>

		<?php require_once("../includes/js.html"); ?>

		<!-- SPECIFIC JS START HERE -->

		<script type="text/javascript" src="../js/ucg_footnote.js"></script>

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

						<div class="example">Footnote component</div>
						<div class="example">Footnote full page width</div>
						<div class="panel ucg_footnote">
							<div class="container">
								<div class="ucg_footnote_title">Data as at September 30, 2014.</div>
								<ol>
									<li>Figures include branches of Koç Financial Group calculated at 100%</li>
									<li>FTE "Full Time Equivalent"= number of employees counted for the rate of presence. Figures include employees of Koç Financial Services Group calculated at 100%.</li>
								</ol>
								<a class="ucg_to_top" href="javascript:void(0);" data-target="#mainContainer">Back to top</a>
							</div>
						</div>

						<div class="example">Footnote full columns width CQ5 2 columns (1/2 - 1/2)</div>
						<div class="parsys_column two-columns-box clearfix">
							<div class="parsys_column two-columns-box-c0">
								<div class="panel ucg_footnote">
									<div class="container">
								<div class="ucg_footnote_title">Data as at September 30, 2014.</div>
								<ol>
									<li>Figures include branches of Koç Financial Group calculated at 100%</li>
									<li>FTE "Full Time Equivalent"= number of employees counted for the rate of presence. Figures include employees of Koç Financial Services Group calculated at 100%.</li>
								</ol>
								<a class="ucg_to_top" href="javascript:void(0);" data-target="#mainContainer">Back to top</a>
									</div>
								</div>

							</div>
							<div class="parsys_column two-columns-box-c1">
								<div class="panel ucg_footnote">
									<div class="container">
								<div class="ucg_footnote_title">Data as at September 30, 2014.</div>
								<ol>
									<li>Figures include branches of Koç Financial Group calculated at 100%</li>
									<li>FTE "Full Time Equivalent"= number of employees counted for the rate of presence. Figures include employees of Koç Financial Services Group calculated at 100%.</li>
								</ol>
								<a class="ucg_to_top" href="javascript:void(0);" data-target="#mainContainer">Back to top</a>
									</div>
								</div>
							</div>
						</div>

						<div class="example">Footnote CQ5 2 columns (2/3 - 1/3)</div>
						<div class="parsys_column twoone-columns-box clearfix">
							<div class="parsys_column twoone-columns-box-c0">
								<div class="panel ucg_footnote">
									<div class="container">
								<div class="ucg_footnote_title">Data as at September 30, 2014.</div>
								<ol>
									<li>Figures include branches of Koç Financial Group calculated at 100%</li>
									<li>FTE "Full Time Equivalent"= number of employees counted for the rate of presence. Figures include employees of Koç Financial Services Group calculated at 100%.</li>
								</ol>
								<a class="ucg_to_top" href="javascript:void(0);" data-target="#mainContainer">Back to top</a>
									</div>
								</div>
							</div>
							<div class="parsys_column twoone-columns-box-c1">
								<div class="panel ucg_footnote">
									<div class="container">
								<div class="ucg_footnote_title">Data as at September 30, 2014.</div>
								<ol>
									<li>Figures include branches of Koç Financial Group calculated at 100%</li>
									<li>FTE "Full Time Equivalent"= number of employees counted for the rate of presence. Figures include employees of Koç Financial Services Group calculated at 100%.</li>
								</ol>
								<a class="ucg_to_top" href="javascript:void(0);" data-target="#mainContainer">Back to top</a>
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