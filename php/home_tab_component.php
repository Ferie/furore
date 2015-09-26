<!DOCTYPE html>
<html lang="it">
	<head>
		<?php require_once("../includes/meta.html"); ?>

		<title>Tab Component</title>

		<?php require_once("../includes/css.html"); ?>

		<!-- SPECIFIC CSS START HERE -->

		<link type="text/css" rel="stylesheet" href="../plugin/css/chosen.min.css">
		<!--generic CSS for Parsys Column container -->
		<link type="text/css" rel="stylesheet" href="../css/ucg_parsys_column.css"/>

		<!--specific CSS for Tab Component-->
		<link type="text/css" rel="stylesheet" href="../css/ucg_tab_component.css"/>

		<!--imported CSS component-->
		<link type="text/css" rel="stylesheet" href="../css/ucg_title_component.css"/>
		<link type="text/css" rel="stylesheet" href="../css/ucg_text_component.css"/>
		<link type="text/css" rel="stylesheet" href="../css/ucg_link_component.css"/>
		<link type="text/css" rel="stylesheet" href="../css/videoplayer.css"/>
		<link type="text/css" rel="stylesheet" href="../css/ucg_video_text_component.css"/>

		<!-- SPECIFIC CSS END HERE -->

		<link type="text/css" rel="stylesheet" href="../css/retina.css"/>

		<?php require_once("../includes/js.html"); ?>

		<!-- SPECIFIC JS START HERE -->

		<script type="text/javascript" src="../plugin/js/chosen.patched.jquery.js"></script>
		<!--specific JS for Tab Component-->
		<script type="text/javascript" src="../js/ucg_tab_component.js"></script>

		<!--imported JS for Tab Component-->
		<script type="text/javascript" src="../js/videoplayer.js"></script>

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
						<!-- End Modal -->

						<div class="example">Tab Component</div>
						<div class="example">Tab Component Full page width<br>(it becomes a dropdown menù for mobile resolutions if there are more than 2 tabs)</div>
						<div class="ucg_tab">
							<div class="panel hidden-xs tabs">
								<div class="container">
									<div class="tab active" data-tabpanel="tabPanelOne">
										<div class="tabHeader">
											<a href="javascript:void(0);">Consumer and SME Banking</a>
										</div>
									</div>
									<div class="tab" data-tabpanel="tabPanelTwo">
										<div class="tabHeader">
											<a href="javascript:void(0);">Corporate & Investment Banking</a>
										</div>
									</div>
									<div class="tab" data-tabpanel="tabPanelThree">
										<div class="tabHeader">
											<a href="javascript:void(0);">Private Banking</a>
										</div>
									</div>
									<div class="tab" data-tabpanel="tabPanelFour">
										<div class="tabHeader">
											<a href="javascript:void(0);">Leasing</a>
										</div>
									</div>
									<div class="tab" data-tabpanel="tabPanelFive">
										<div class="tabHeader">
											<a href="javascript:void(0);">Special Company</a>
										</div>
									</div>
								</div>
							</div>

							<div class="panel visible-xs dropdown">
								<div class="container">
									<div class="col-xs-12">
										<select name="companyCategory" class="chosen-select" data-placeholder="Select business type">
											<option value="tabPanelOne" data-value="tabPanelOne">Consumer and SME Banking</option>
											<option value="tabPanelTwo" data-value="tabPanelTwo">Corporate & Investment Banking</option>
											<option value="tabPanelThree" data-value="tabPanelThree">Private Banking</option>
											<option value="tabPanelFour" data-value="tabPanelFour">Leasing</option>
											<option value="tabPanelFive" data-value="tabPanelFive">Special Company</option>
										</select>
									</div>
								</div>
							</div>

							<div class="panel tabsBody">
								<div class="container">
									<div class="tabPanel tabPanelOne selected">
										<div class="tabSection bottomBorder clearfix">
											<div class="logo">
												<img src="../img/static/Bank_Austria_logo.png">
											</div>
											<div class="bankName">Bank Austria</div>
											<div class="externalLink">
												<a href="http://www.bankaustria.at" target="_blank">bankaustria.at</a>
											</div>
											<div class="moreInfo">
												<a href="worldwideCompanyInfo.html">More info <span class="arrowRight"></span></a>
											</div>
											<div class="icons">
												<div class="homeBankingLogin icon">
													<a href="javascript:void(0);">Home banking login</a>
												</div>
												<div class="seeJobPositions icon">
													<a href="javascript:void(0);">See job positions</a>
												</div>
												<div class="findBranch icon">
													<a href="javascript:void(0);">Find a branch</a>
												</div>
												<div class="linkedin icon">
													<a href="https://www.linkedin.com/company/unicredit-bank-austria-ag" target="_blank">Linkedin</a>
												</div>
											</div>
										</div>
										<div class="tabSection bottomBorder clearfix">
											<div class="logo">
												<img src="../img/static/UniCredit_Family_Financing_logo.png">
											</div>
											<div class="bankName">UniCredit Family Financing Bank, Niederlassung der UniCredit S.p.A.</div>
											<div class="externalLink">
												<a href="http://www.ucfin.de" target="_blank">ucfin.de</a>
											</div>
											<div class="moreInfo">
												<a href="worldwideCompanyInfo.html">More info <span class="arrowRight"></span></a>
											</div>
											<div class="icons"></div>
										</div>
										<div class="tabSection bottomBorder clearfix">
											<div class="logo">
												<img src="../img/static/DAB_bank_logo.png">
											</div>
											<div class="bankName">DAB Bank AG</div>
											<div class="externalLink">
												<a href="http://www.dab-bank.de" target="_blank">dab-bank.de</a>
											</div>
											<div class="moreInfo">
												<a href="worldwideCompanyInfo.html">More info <span class="arrowRight"></span></a>
											</div>
											<div class="icons">
												<div class="homeBankingLogin icon">
													<a href="javascript:void(0);">Home banking login</a>
												</div>
											</div>
										</div>
									</div>

									<div class="tabPanel tabPanelTwo">
										<div class="tabSection bottomBorder clearfix">
											<div class="bankName">Corporate & Investment Banking</div>
										</div>
									</div>

									<div class="tabPanel tabPanelThree">
										<div class="tabSection bottomBorder clearfix">
											<div class="bankName">Private Banking</div>
										</div>
									</div>

									<div class="tabPanel tabPanelFour" id="leasing">
										<div class="tabSection bottomBorder clearfix">
											<div class="bankName">Leasing</div>
										</div>
									</div>

									<div class="tabPanel tabPanelFive">
										<div class="tabSection bottomBorder clearfix">
											<div class="bankName">Special Company</div>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="example">Tab Component on CQ5 column (2/3 - 1/3)<br>(it doesn't become a dropdown menù for mobile resolutions because it has only 2 tabs)</div>
						<div class="parsys_column twoone-columns-box clearfix">
							<div class="parsys_column twoone-columns-box-c0">
								<div class="ucg_tab">
									<div class="panel hidden-xs tabs">
										<div class="container">
											<div class="tab " data-tabpanel="tabPanelOne">
												<div class="tabHeader">
													<a href="javascript:void(0);">Latest Press Release</a>
												</div>
											</div>
											<div class="tab active" data-tabpanel="tabPanelTwo">
												<div class="tabHeader">
													<a href="javascript:void(0);">Latest News</a>
												</div>
											</div>
										</div>
									</div>

									<div class="panel visible-xs dropdown">
										<div class="container">
											<div class="col-xs-12">
												<select name="pressAndNews" class="chosen-select" data-placeholder="Select category">
													<option value="tabPanelOne" data-value="tabPanelOne">Latest Press Release</option>
													<option value="tabPanelTwo" data-value="tabPanelTwo">Latest News</option>
												</select>
											</div>
										</div>
									</div>

									<div class="panel tabsBody">
										<div class="container">
											<div class="tabPanel tabPanelOne ">
												<div class="tabSection clearfix">
													<div class="panel ucg_video_text">
														<div class="container">
															<div class="ucg_video">
																<a class="ucg_videoplayer_starter" href="javascript:void(0);" data-video="https://www.youtube.com/embed/j_kOGqFslos?autoplay=1"></a>
																<img class="placeholder" src="../img/press_and_news.png" alt="Press and news" title="Press and news">
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

											<div class="tabPanel tabPanelTwo selected">
												<div class="tabSection clearfix">
													<div class="panel ucg_text">
														<div class="container">
															<div class="ucg_text_container">
																<p class="ucg_news">
																	<span class="ucg_date"><b>15 November</b> 2014 - 11:00</span>
																	<span class="ucg_introTitle"><a href="javascript:void(0);" class="ucg_titleLink">"L'Arena di Verona incontra Berlino" un evento musicale di successo.</a></span>
																	<span class="ucg_intro">UniCredit, HypoVereinsbank e l'Ambasciata d'Italia a Berlino sono orgogliose di aver ospitato ieri sera per il sesto anno consecutivo il concerto "L'Arena di Verona incontra Berlino" ...</span>
																</p>
																<p class="ucg_news">
																	<span class="ucg_date"><b>14 November</b> 2014 - 10:00</span>
																	<span class="ucg_introTitle"><a href="javascript:void(0);" class="ucg_titleLink">Resoconto intermedio di gestione al 30 settembre 2014</a></span>
																	<span class="ucg_intro">Si rende noto che il Resoconto intermedio di gestione al 30 settembre 2014 è disponibile al pubblico presso la Sede Legale e la Direzione Generale della Società, e pubblicato ...</span>
																</p>
																<p class="ucg_news">
																	<span class="ucg_date"><b>10 November</b> 2014 - 11:00</span>
																	<span class="ucg_introTitle"><a href="javascript:void(0);" class="ucg_titleLink">UniCredit: nominato il nuovo Responsabile della Divisione Central & Eastern Europe (CEE)</a></span>
																	<span class="ucg_intro">Nel corso della riunione odierna, il Consiglio di Amministrazione di UniCredit ha nominato, con decorrenza 16 febbraio 2015, il signor Carlo Vivaldi quale nuovo responsabile della ...</span>
																</p>
																<div class="panel ucg_linklist">
																	<div class="container">
																		<ul class="ucg_link_container">
																			<li class="ucg_internal_link">
																				<a href="javascript:void(0);" class="ucg_link">See all press releases</a>
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
									</div>
								</div>
							</div>
							<div class="parsys_column twoone-columns-box-c1">
								<div class="panel ucg_title">
									<div class="container">
										<div class="ucg_title_text_container">
											<div class="ucg_title_container">
												<h2>Contacts</h2>
											</div>
											<div class="ucg_subtitle"><h4></h4></div>
										</div>
										<div class="ucg_title_image_container"></div>
									</div>
								</div>
								<div class="panel ucg_text">
									<div class="container">
										<div class="ucg_text_container">
											<p>Media relations<br>
												Fax: +39 02 8862 2802<br>
												<a href="mailto:mediarelations@unicredit.eu" class="ucg_mail">mediarelations@unicredit.eu</a>
											</p>
											<div class="panel ucg_linklist">
												<div class="container">
													<ul class="ucg_link_container">
														<li class="ucg_internal_link">
															<a href="javascript:void(0);">Read the latest issue</a>
														</li>
													</ul>
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