<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="it">
	<head>
		<jsp:include page="../includes/meta.html"></jsp:include>

		<title>Footnote Component</title>

		<jsp:include page="../includes/css.html"></jsp:include>

		<!-- SPECIFIC CSS START HERE -->

		<!--generic CSS for Parsys Column container-->
		<link type="text/css" rel="stylesheet" href="../css/ucg_parsys_column.css"/>

		<!--specific CSS for Footnote Component-->
		<link type="text/css" rel="stylesheet" href="../css/ucg_footnote_component.css"/>

		<!-- SPECIFIC CSS END HERE -->

		<link type="text/css" rel="stylesheet" href="../css/retina.css"/>

		<jsp:include page="../includes/js.html"></jsp:include>

		<!-- SPECIFIC JS START HERE -->

		<script type="text/javascript" src="../js/ucg_footnote.js"></script>

		<!-- SPECIFIC JS END HERE -->
	</head>

	<body>
		<jsp:include page="../includes/message.html"></jsp:include>

		<jsp:include page="../includes/header.html"></jsp:include>

		<jsp:include page="../includes/search.html"></jsp:include>

		<div class="body-container-table">
			<div class="body-container-cell">
				<jsp:include page="../includes/sidebar.html"></jsp:include>
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

						<jsp:include page="../includes/footer.html"></jsp:include>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>