<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="it">
	<head>
		<jsp:include page="../includes/meta.html"></jsp:include>

		<title>Text Component</title>

		<jsp:include page="../includes/css.html"></jsp:include>

		<!-- SPECIFIC CSS START HERE -->

		<!--generic CSS for Parsys Column container -->
		<link type="text/css" rel="stylesheet" href="../css/ucg_parsys_column.css"/>

		<!--specific CSS for Text Component-->
		<link type="text/css" rel="stylesheet" href="../css/ucg_text_component.css"/>

		<!--imported CSS component-->
		<link type="text/css" rel="stylesheet" href="../css/ucg_title_component.css"/>
		<link type="text/css" rel="stylesheet" href="../css/ucg_link_component.css"/>

		<!-- SPECIFIC CSS END HERE -->

		<link type="text/css" rel="stylesheet" href="../css/retina.css"/>

		<jsp:include page="../includes/js.html"></jsp:include>

		<!-- SPECIFIC JS START HERE -->

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

						<div class="example">Text component</div>
						<div class="example">Text component full page width</div>
						<div class="panel ucg_text">
							<div class="container">
								<div class="ucg_text_container">
									<p class="ucg_news">
										<span class="ucg_date"><b>15 November</b> 2014 - 11:00</span>
										<span class="ucg_introTitle"><a href="javascript:void(0);" class="ucg_titleLink">"L'Arena di Verona incontra Berlino" un evento musicale di successo.</a></span>
										<span class="ucg_intro">UniCredit, HypoVereinsbank<a class="apix">1</a> e l'Ambasciata d'Italia a Berlino sono orgogliose di aver ospitato ieri sera per il sesto anno consecutivo il concerto "L'Arena di Verona incontra Berlino" ...</span>
									</p>
									<p class="ucg_news">
										<span class="ucg_date"><b>14 November</b> 2014 - 10:00</span>
										<span class="ucg_introTitle"><a href="javascript:void(0);" class="ucg_titleLink">Resoconto intermedio di gestione al 30 settembre 2014</a></span>
										<span class="ucg_intro">Si rende noto che il Resoconto intermedio di gestione al 30 settembre 2014 è disponibile al pubblico presso la Sede Legale e la Direzione Generale della Società, e pubblicato<a class="apix">2</a> ...</span>
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
													<a href="#">See all press releases</a>
												</li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="example">Text component full columns width CQ5 2 columns (1/2 - 1/2)</div>
						<div class="parsys_column two-columns-box clearfix">
							<div class="parsys_column two-columns-box-c0">
								<div class="example">Text component full column width</div>
								<div class="panel ucg_text">
									<div class="container">
										<div class="ucg_text_container">
											<p>Our system of corporate governance guifes everything we do in a spirit of clarity and transparenct. UniCredit's overall Corporate Governance framework - i.e. the system of rules and procedures that its corporate bodies refer to to direct the principles of their behaviour and fulfil their various responsibilities towards its stakeholders</p>
											<div class="panel ucg_linklist">
												<div class="container">
													<ul class="ucg_link_container">
														<li class="ucg_internal_link">
															<a href="#">Learn more about our Governance system & policies</a>
														</li>
													</ul>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="parsys_column two-columns-box-c1">
								<div class="example">Text component full column width</div>
								<div class="panel ucg_text">
									<div class="container">
										<div class="ucg_text_container">
											<p>- has been built up in compliance with all applicable laws and in light of the recommendations set forth in the Corporate Governance Code for listed companies. UniCredit, as issuer of shares listed on the Milan, Frankfurt and Warsaw regulated markets, fulfils the legal and regulatory obligations related to listings on said markets.</p>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="example">Text component with support of Title component and Link component<br>CQ5 2 columns (2/3 - 1/3)</div>
						<div class="parsys_column twoone-columns-box clearfix">
							<div class="parsys_column twoone-columns-box-c0">
								<div class="panel ucg_title">
									<div class="container">
										<div class="ucg_title_text_container">
											<div class="ucg_title_container">
												<h2>UniNews</h2>
											</div>
											<div class="ucg_subtitle"><h4></h4></div>
										</div>
										<div class="ucg_title_image_container"></div>
									</div>
								</div>
								<div class="panel ucg_text">
									<div class="container">
										<div class="ucg_text_container">
											<p>UniNews is the UniCredit Group's online news service, providing selected news items (info, news, in-depth articles, opinions, and new developments regarding the UniCredit universe).</p>
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

						<div class="example">ul tag and ol tag behavior for Text component<br>CQ5 2 columns (1/3 - 2/3)</div>
						<div class="parsys_column onetwo-columns-box clearfix">
							<div class="parsys_column onetwo-columns-box-c0">
								<div class="panel ucg_title">
									<div class="container">
										<div class="ucg_title_image_container"></div>
										<div class="ucg_title_container">
											<h2>Bank Austria</h2>
										</div>
										<div class="ucg_subtitle_container"><h4></h4></div>
									</div>
								</div>
								<div class="panel ucg_image">
									<div class="container">
										<div class="ucg_image_container">
											<img src="../img/static/Bank_Austria_logo.png" alt="">
										</div>
										<div class="ucg_text_on_image_container top_left">
											<div class="ucg_text_on_image"></div>
											<a href="#" class="ucg_link_on_image"></a>
										</div>
									</div>
								</div>
								<div class="panel ucg_text">
									<div class="container">
										<div class="ucg_text_container">
											<p>Schottengasse 6-8</p>
											<p>1010 - Vienna</p>
											<p>Austria</p>
											<div class="panel ucg_linklist">
												<div class="container">
													<ul class="ucg_link_container">
														<li class="ucg_external_link">
															<a href="http://www.bankaustria.at">bankaustria.at</a>
														</li>
													</ul>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="parsys_column onetwo-columns-box-c1">
								<div class="panel ucg_title">
									<div class="container">
										<div class="ucg_title_image_container"></div>
										<div class="ucg_title_container">
											<h2>Company info</h2>
										</div>
										<div class="ucg_subtitle_container"><h4></h4></div>
									</div>
								</div>
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

						<!-- PAGE ENDS HERE -->

						<jsp:include page="../includes/footer.html"></jsp:include>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>