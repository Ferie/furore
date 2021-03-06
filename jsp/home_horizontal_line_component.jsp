<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="it">
	<head>
		<jsp:include page="../includes/meta.html"></jsp:include>

		<title>Horizontal Line Component</title>

		<jsp:include page="../includes/css.html"></jsp:include>

		<!-- SPECIFIC CSS START HERE -->

		<!--generic CSS for Parsys Column container-->
		<link type="text/css" rel="stylesheet" href="../css/ucg_parsys_column.css"/>

		<!--specific CSS for Horizontal line Component-->
		<link type="text/css" rel="stylesheet" href="../css/ucg_horizontal_line_component.css"/>
		<!--specific CSS for Horizontal line Component-->
		<link type="text/css" rel="stylesheet" href="../css/ucg_spacer.css"/>

		<!-- SPECIFIC CSS END HERE -->

		<link type="text/css" rel="stylesheet" href="../css/retina.css"/>

		<jsp:include page="../includes/js.html"></jsp:include>

		<!-- SPECIFIC JS START HERE -->

		<!--specific JS for Spacer Component-->
		<script type="text/javascript" src="../js/ucg_spacer.js"></script>

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

						<div class="example">Horizontal line Component</div>
						<div class="ucg_spacer" data-ucg-height="120" data-ucg-height-mobile="30"></div>

						<div class="ucg_horizontal_line">
							<div class="spacer1"></div>
							<div class="spacer2"></div>
						</div>

						<div class="ucg_spacer" data-ucg-height="120" data-ucg-height-mobile="30"></div>

						<!-- PAGE ENDS HERE -->

						<jsp:include page="../includes/footer.html"></jsp:include>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>