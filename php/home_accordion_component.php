<!DOCTYPE html>
<html lang="it">
	<head>
		<?php require_once('includes/meta.html'); ?>

		<title>Alerts</title>

		<?php require_once('includes/css.html'); ?>

		<!-- SPECIFIC CSS START HERE -->

		<!--generic CSS for Parsys Column container-->
		<link type="text/css" rel="stylesheet" href="css/ucg_parsys_column.css"/>

		<!--specific CSS for Accordion Component-->
		<link type="text/css" rel="stylesheet" href="css/ucg_accordion_component.css"/>

		<!--imported CSS component-->
		<link type="text/css" rel="stylesheet" href="css/ucg_title_component.css"/>
		<link type="text/css" rel="stylesheet" href="css/ucg_text_component.css"/>
		<link type="text/css" rel="stylesheet" href="css/ucg_link_component.css"/>
		<link type="text/css" rel="stylesheet" href="css/ucg_image_text_component.css"/>
		<link type="text/css" rel="stylesheet" href="css/videoplayer.css"/>
		<link type="text/css" rel="stylesheet" href="css/ucg_video_text_component.css"/>

		<!-- SPECIFIC CSS END HERE -->

		<link type="text/css" rel="stylesheet" href="css/retina.css"/>

		<?php require_once('includes/js.html'); ?>

		<!-- SPECIFIC JS START HERE -->

		<!--specific JS for Accordion Component-->
		<script type="text/javascript" src="js/ucg_accordion_component.js"></script>

		<!--imported JS for Accordion Component-->
		<script type="text/javascript" src="js/videoplayer.js"></script>

		<!-- SPECIFIC JS END HERE -->
	</head>

	<body>
		<?php require_once('includes/message.html'); ?>
		<?php require_once('includes/header.html'); ?>
		<?php require_once('includes/search.html'); ?>

		<div class="body-container-table">
			<div class="body-container-cell">
				<?php require_once('includes/sidebar.html'); ?>
			</div>

			<div class="body-container-cell">
				<div id="mainContainer">
					<div class="mainContainer-wrapper">

						<!-- PAGE START HERE -->

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

						<div class="example">Accordion Component</div>
						<div class="example">Accordion Component Full page width</div>
						<div class="ucg_accordion panel">
							<div class="container">
								<div class="collapsed accordionPanel accordionPanelOne">
									<div class="elementTitle">
										Europe
										<span class="arrow"></span>
									</div>
									<div class="collapse clearfix">
										<div class="elementsContainer col-sm-4">
											<div class="mainElement"><a href="javascript:void(0);">Italy</a></div>
											<div class="element"><a href="javascript:void(0);">Bosnia & Herzegovina</a></div>
											<div class="element"><a href="javascript:void(0);">Czech Republic</a></div>
											<div class="element"><a href="javascript:void(0);">Greece</a></div>
											<div class="element"><a href="javascript:void(0);">Latvia</a></div>
											<div class="element"><a href="javascript:void(0);">Macedonia</a></div>
											<div class="element"><a href="javascript:void(0);">Norway</a></div>
											<div class="element"><a href="javascript:void(0);">Ukraine</a></div>
											<div class="element"><a href="javascript:void(0);">Serbia</a></div>
											<div class="element"><a href="javascript:void(0);">Spain</a></div>
										</div>
										<div class="elementsContainer col-sm-4">
											<div class="element"><a href="javascript:void(0);">Austria</a></div>
											<div class="element"><a href="javascript:void(0);">Bulgaria</a></div>
											<div class="element"><a href="javascript:void(0);">Estonia</a></div>
											<div class="element"><a href="javascript:void(0);">Hungary</a></div>
											<div class="element"><a href="javascript:void(0);">Lithuania</a></div>
											<div class="element"><a href="javascript:void(0);">Montenegro</a></div>
											<div class="element"><a href="javascript:void(0);">Poland</a></div>
											<div class="element"><a href="javascript:void(0);">United Kingdom</a></div>
											<div class="element"><a href="javascript:void(0);">Slovakia</a></div>
											<div class="element"><a href="javascript:void(0);">Switzerland</a></div>
										</div>
										<div class="elementsContainer col-sm-4">
											<div class="element"><a href="javascript:void(0);">Belgium</a></div>
											<div class="element"><a href="javascript:void(0);">Croatia</a></div>
											<div class="element"><a href="javascript:void(0);">France</a></div>
											<div class="element"><a href="javascript:void(0);">Ireland</a></div>
											<div class="element"><a href="javascript:void(0);">Luxembourg</a></div>
											<div class="element"><a href="javascript:void(0);">Netherlands</a></div>
											<div class="element"><a href="javascript:void(0);">Romania</a></div>
											<div class="element"><a href="javascript:void(0);">San Marino</a></div>
											<div class="element"><a href="javascript:void(0);">Slovenia</a></div>
										</div>
									</div>
								</div>

								<div class="collapsed accordionPanel accordionPanelTwo">
									<div class="elementTitle">
										Asia and Oceania
										<span class="arrow"></span>
									</div>
									<div class="collapse clearfix">
										<div class="elementsContainer col-sm-4">
											<div class="element"><a href="javascript:void(0);">Australia</a></div>
											<div class="element"><a href="javascript:void(0);">Hong Kong</a></div>
											<div class="element"><a href="javascript:void(0);">Japan</a></div>
											<div class="element"><a href="javascript:void(0);">South Korea</a></div>
										</div>
										<div class="elementsContainer col-sm-4">
											<div class="element"><a href="javascript:void(0);">Azerbaijan</a></div>
											<div class="element"><a href="javascript:void(0);">India</a></div>
											<div class="element"><a href="javascript:void(0);">Russia</a></div>
											<div class="element"><a href="javascript:void(0);">Turkey</a></div>
										</div>
										<div class="elementsContainer col-sm-4">
											<div class="element"><a href="javascript:void(0);">China</a></div>
											<div class="element"><a href="javascript:void(0);">Indonesia</a></div>
											<div class="element"><a href="javascript:void(0);">Singapore</a></div>
											<div class="element"><a href="javascript:void(0);">Vietnam</a></div>
										</div>
									</div>
								</div>

								<div class="collapsed accordionPanel accordionPanelThree">
									<div class="elementTitle">
										Middle-East and Africa
										<span class="arrow"></span>
									</div>
									<div class="collapse clearfix">
										<div class="elementsContainer col-sm-4">
											<div class="element"><a href="javascript:void(0);">Libya</a></div>
										</div>
										<div class="elementsContainer col-sm-4">
											<div class="element"><a href="javascript:void(0);">South Africa</a></div>
										</div>
										<div class="elementsContainer col-sm-4">
											<div class="element"><a href="javascript:void(0);">United Arab Emirates</a></div>
										</div>
									</div>
								</div>

								<div class="collapsed accordionPanel accordionPanelFour">
									<div class="elementTitle">
										Americas
										<span class="arrow"></span>
									</div>
									<div class="collapse clearfix">
										<div class="elementsContainer col-sm-4">
											<div class="element"><a href="javascript:void(0);">Argentina</a></div>
										</div>
										<div class="elementsContainer col-sm-4">
											<div class="element"><a href="javascript:void(0);">Brasil</a></div>
										</div>
										<div class="elementsContainer col-sm-4">
											<div class="element"><a href="javascript:void(0);">United States</a></div>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="example">Accordion Component on CQ5 column (2/3 - 1/3)</div>
						<div class="parsys_column twoone-columns-box clearfix">
							<div class="parsys_column twoone-columns-box-c0">
								<div class="ucg_accordion panel">
									<div class="container">
										<div class="collapsed accordionPanel accordionPanelOne">
											<div class="elementTitle">
												Company Info
												<span class="arrow"></span>
											</div>
											<div class="collapse clearfix">
												<div class="elementsContainer col-sm-12">
													<div class="panel ucg_text">
														<div class="container">
															<div class="ucg_text_container">
																<p>
																	<b>Business category:</b> Consumer and SME Banking, Corporate and Investments banking<br>
																	<b>Type:</b> Representative office
																</p>
																<p class="paragraphTitle"><b>Market leader in Austria</b></p>
																<p>
																	With total assets of EUR 220.8 billion and market shares ranging from 20 to 65 per cent, Bank Austria is by far the largest bank in Austria.<br>
																	As far as Austrian companies are concerned, Bank Austria is the main banker for:
																</p>
																<ul>
																	<li>82 per cent of large corporates;</li>
																	<li>62 per cent of medium-sized companies;</li>
																	<li>45 per cent of small businesses are customers of Bank Austria.</li>
																</ul>
																<p>
																	As a modern universal bank, it provides its customers with access to financial markets. The bank operates a network of more than 360 branch offices within Austria, with a total of 11,000 employees
																</p>
																<p class="paragraphTitle"><b>The largest network in Central and Eastern Europe</b></p>
																<p>
																	Austria is one of the core markets of UniCredit Group, together with Germany, Italy and Central and Eastern Europe.<br>
																	Within UniCredit Group, Bank Austria is responsible for all banking operations in the growth markets of Central and Eastern Europe (CEE), with the exception of Poland.<br>
																	Vienna is thus the controls centre for a network stretching from the Baltic to the Black Sea and from Hungary to the Chinese border.<br>
																	Our values Our common basic values are enshrined in the Integrity Charter. These values reflect our corporate philosophy, which determines our actions and behav- iour.
																</p>
																<p class="paragraphTitle"><b>History</b></p>
																<p>
																	Bank Austria was created by the merger of Austria's leading banks with a long- standing tradition, the "k.k. privilegirte Oesterreichische Credit-Anstalt für Handel und Gewerbe" (founded in 1855), the "k.k. privilegierte Oesterreichische Laender- bank" (founded in 1880) and the "Zentral-Sparkasse der Gemeinde Wien" (founded in 1905).<br>
																	Bank Austria has been a member of UniCredit Group since November 2005.
																</p>
																<p class="paragraphTitle"><b>Recognised excellence</b></p>
																<p>
																	In the past years, Bank Austria has received more than 250 awards from renowned international financial magazines in recognition of its achievements. Euromoney and The Banker have repeatedly named Bank Austria "Best Bank" and "Bank of the Year". Numerous awards have also been given to Bank Austria in the fields of custody, trade finance, project finance and foreign exchange, and to Bank Austria's CEE subsidiaries..
																</p>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>

										<div class="collapsed accordionPanel accordionPanelTwo">
											<div class="elementTitle">
												Press release download links
												<span class="arrow"></span>
											</div>
											<div class="collapse clearfix">
												<div class="elementsContainer col-sm-12">
													<div class="panel ucg_title underlined">
														<div class="container">
															<div class="ucg_title_image_container"></div>
															<div class="ucg_title_container">
																<h5>Download</h5>
															</div>
															<div class="ucg_subtitle_container"></div>
														</div>
													</div>
													<div class="panel ucg_linklist">
														<div class="container">
															<ul class="ucg_link_container">
																<li class="ucg_download_link">
																	<a href="javascript:void(0);"><b>PDF</b> | Press release - 2014 Comprehensive Assessment Results</a> (96kb)
																</li>
																<li class="ucg_download_link">
																	<a href="javascript:void(0);"><b>PDF</b> | 2013 Consolidated Reports and Accounts</a> (301kb)
																</li>
																<li class="ucg_download_link">
																	<a href="javascript:void(0);"><b>PDF</b> | Unicredit Spa 2013 Reports and Accounts</a> (150kb)
																</li>
																<li class="ucg_download_link">
																	<a href="javascript:void(0);"><b>DOC</b> | Press release (Italian only)</a> (106kb)
																</li>
																<li class="ucg_download_link">
																	<a href="javascript:void(0);"><b>MP3</b> | Download audio</a> (13.56Mb)
																</li>
																<li class="ucg_download_link">
																	<a href="javascript:void(0);"><b>MP4</b> | Download video</a> (193Mb)
																</li>
																<li class="ucg_download_link">
																	<a href="javascript:void(0);"><b>HTML</b> | Download file</a> (22kb)
																</li>
															</ul>
														</div>
													</div>
												</div>
											</div>
										</div>

										<div class="collapsed accordionPanel accordionPanelThree">
											<div class="elementTitle">
												Latest Press Release
												<span class="arrow"></span>
											</div>
											<div class="collapse clearfix">
												<div class="elementsContainer col-sm-12">
													<div class="panel ucg_video_text">
														<div class="container">
															<div class="ucg_video">
																<a class="ucg_videoplayer_starter" href="javascript:void(0);" data-video="https://www.youtube.com/embed/j_kOGqFslos?autoplay=1"></a>
																<img class="placeholder" src="img/press_and_news.png" alt="Press and news" title="Press and news">
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
										</div>

										<div class="collapsed accordionPanel accordionPanelFour">
											<div class="elementTitle">
												Contacts
												<span class="arrow"></span>
											</div>
											<div class="collapse clearfix">
												<div class="elementsContainer col-sm-8">
													<div class="panel ucg_image_text">
														<div class="container">
															<div class="ucg_img">
																<img src="img/DISTORSIONI_MOLASCHI.png" alt="">
															</div>
															<div class="ucg_txt">
																<h3>Innovation</h3>
																<p>As a leading European bank, we make it easy for our customers to seize the opportunities and meet the challenges of real life.</p>
															</div>
														</div>
													</div>
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
												<div class="elementsContainer col-sm-4">
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
																				<a href="#">Read the latest issue</a>
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
								<div class="panel ucg_image_text">
									<div class="container">
										<div class="ucg_img">
											<img src="img/RIFLESSI_TITTI_CIMMINO.png" alt="">
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

						<!-- PAGE END HERE -->

						<?php require_once('includes/footer.html'); ?>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>