<!DOCTYPE html>
<html lang="it">
	<head>
		<?php require_once("../includes/meta.html"); ?>

		<title>Disclaimer Component</title>

		<?php require_once("../includes/css.html"); ?>

		<!-- SPECIFIC CSS START HERE -->

		<!--generic CSS for Parsys Column container-->
		<link type="text/css" rel="stylesheet" href="../css/ucg_parsys_column.css"/>

		<!--specific CSS for Disclaimer Component-->
		<link type="text/css" rel="stylesheet" href="../css/ucg_disclaimer_component.css"/>

		<!--imported CSS component-->
		<link type="text/css" rel="stylesheet" href="../css/form.css"/>
		<link type="text/css" rel="stylesheet" href="../css/form-desktop.css"/>
		<link type="text/css" rel="stylesheet" href="../css/ucg_button_component.css"/>

		<!-- SPECIFIC CSS END HERE -->

		<link type="text/css" rel="stylesheet" href="../css/retina.css"/>

		<?php require_once("../includes/js.html"); ?>

		<!-- SPECIFIC JS START HERE -->

		<!--specific JS for Disclaimer Component-->
		<script type="text/javascript" src="../js/ucg_disclaimer_component.js"></script>

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

						<!-- Disclaimer -->
						<div class="ucg_disclaimer">
							<div class="ucg_inner_disclaimer modal animated bounceIn" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-body">
											<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
											<div class="ucg_disclaimer_logo"><img src="../img/static/logo.png" alt="Unicredit Logo"></div>
											<div class="ucg_disclaimer_title"><b>Disclaimer</b></div>
											<div class="ucg_disclaimer_text">
												<p>In order to access to the information and documentation published on this web page and on the following sections of the web site it is necessary to read and accept the information below, releasing the statement to this effect requested at the foot of this page. The above mentioned information and documentation should not be considered as a recommendan to subcribe for or  purchase any securities and may not be copied, amended or forwarded.</p>
												<p>The above mentioned information and documentation do not constitute or form part of an offer or solicitation of an offer in the United States, Canada, Australia or Japan and in any other Country in which the dissemination of such information and the offer of such instruments are not authorized without the specific approval of th local authorities or are in violation of governing statues or laws (the”Other Countries”). The financial corresponding regulations on force in the Other Countries.</p>
												<p>The access to the information, the offer prospectus and the other documents published on the present web page and on the following sections of the web site may be restricted by laws and regulations relating to financial instruments applicable in certains jurisdictions. Therefore this acces is allowed only to persons who: (a) are cated in Italy (b) are not residents, domicilied, and are note currently locared in the United States of America, Canada, Australia, Japan and in the Other Countries, and are note, and do not act on behalf of or for the benefit of, Unired States in persons according to the definition contained in Regulation S of the United States Securities Act of 1933, as subsequently amended (1). Only those persons falling under the category described above are eligible for access to the information and documentation published on this web procedures that its corporate bodies refer to to direct the principles of their behaviour page and on the following sections of the web site. The grant of access and download of the above mentioned information is precluded to subjects and fulfil their various responsibilities towards its stakeholders - has been built up in other than those indicated above.</p>
												<p>UniCredit S.p.A. is not liable for the decisions made independently and the actions taken by the user on the basis of the information and the Corporate Governance Code for listed companies. documentation published on this web page and on the following sections of the web site.</p>
											</div>
											<div class="ucg_disclaimer_radio_container">
												<label class="ucg_disclaimer_radio">
													<input class="iradio_ubis" type="radio" name="locatedInItaly" value="located" />
													I hereby declare, under my responsibility, to be currently located in Italy and not to be currently resident, domiciled in the United States of America, Australia, Japan, Canada and in the Other Countries, and not to be and act on behalf of or for the benefit of a United States Persons according to the definition contained in Regulation S of the United States Securities Act of 1933, as subsequently amended. I hereby declare that I have fully read and understood the above mentioned restrictions, agree to abide by the same and pledge to not transmit any information and documentation published on this web page and the sections of the web site that follow to the United States of America, Canada, Australia, Japan and the Other Countries.
												</label>
												<label class="ucg_disclaimer_radio">
													<input class="iradio_ubis" type="radio" name="locatedInItaly" value="notLocated" />
													I hereby declare, under my responsibility, that I am not located in Italy, or that I am a person resident, or domiciled or currently located in the United States of America or in Canada or in Australia or in Japan or in the Other Countries.
												</label>
											</div>
											<div class="ucg_disclaimer_button">
												<a class="btn ucg_button_confirm">
													Continue to the requested content
												</a>
											</div>
											<div class="ucg_disclaimer_footnote">
												(1) As defined in the Securities Act of 1993, as amended, the term "U.S Person" means: (1) any natural person resident in the United States; (2) any partnership or corporation organized or incorporated under the laws of the United States; (3) any estate of which any executor or administrator is a U.S. person; (4) any trust of which any trustee is a U.S. person; (5) any agency or branch of a foreign entity located in the United States; (6) any non-discretionary account or similar account (other than an estate or trust) held by a dealer or other fiduciary for the benefit or account of a U.S. person; (7) any discretionary account or similar account (other than an estate or trust) held by a dealer or other fiduciary organized, incorporated, or (if an individual) resident in the United States; and (8) any partnership or corporation if: (A) organized or incorporated under the laws of any foreign jurisdiction; and (B) formed by a U.S. person principally for the purpose of investing in securities not registered under the Securities Act, unless it is organized or incorporated, and owned, by accredited investors (as defined in Rule 501(a)) who are not natural persons, estates or trusts.
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- End Disclaimer -->

						<div class="example">Disclaimer component</div>
						<div class="panel ucg_button">
							<div class="container">
								<button class="btn ucg_button_confirm" title="show disclaimer" data-toggle="modal" data-target=".ucg_inner_disclaimer">Show Disclaimer</button>
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