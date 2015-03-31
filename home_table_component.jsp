<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="it">
<head>
	<meta charset="utf-8"> 
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title></title>
	
	<jsp:include page="includes/css.html"></jsp:include>
	
	<!-- SPECIFIC CSS START HERE -->
	
		<!--generic CSS for Parsys Column container -->
		<link type="text/css" rel="stylesheet" href="css/ucg_parsys_column.css"/>

		<!--specific CSS for Table Component-->
		<link type="text/css" rel="stylesheet" href="css/ucg_table_component.css"/>

		<!--imported CSS component-->
		<link type="text/css" rel="stylesheet" href="css/ucg_title_component.css"/>
		<link type="text/css" rel="stylesheet" href="css/ucg_text_component.css"/>
		<link type="text/css" rel="stylesheet" href="css/ucg_link_component.css"/>
	
	<!-- SPECIFIC CSS END HERE -->    
       
    <link type="text/css" rel="stylesheet" href="css/retina.css"/>
	
	<jsp:include page="includes/js.html"></jsp:include>
    
	<!-- SPECIFIC JS START HERE -->
		
		<!--specific CSS for Table Component-->
		<script type="text/javascript" src="plugin/js/doT.min.js"></script>
		<script type="text/javascript" src="js/ucg_table.js"></script>
		
	
	<!-- SPECIFIC JS END HERE -->
	
  
</head>
<body>
<jsp:include page="includes/message.html"></jsp:include>
<jsp:include page="includes/header.html"></jsp:include>
<jsp:include page="includes/search.html"></jsp:include>
<div class="body-container-table">
	<div class="body-container-cell">
	<jsp:include page="includes/sidebar.html"></jsp:include>
	    
	</div>
	<div class="body-container-cell">
		<div id="mainContainer">
			<div class="mainContainer-wrapper">
			
			<!-- PAGE START HERE -->
				<div class="example">Table Component</div>
				<div class="example">Multiple columns full page width - Highlated column example</div>
				<div class="panel ucg_table" data-tabletype="1">
					<div class="container">
						<p><b>Consolidated Balance Sheet</b> (€ milion)</p>
						<table>
							<tbody>
								<tr class="tableHead">
									<th><b>ASSETS</b></th>
									<th><b>Sep 13</b></th>
									<th><b>Jun 14</b></th>
									<th class="highlighted"><b>Sep 14</b></th>
									<th><b>Y/Y %</b></th>
									<th><b>Q/Q %</b></th>
								</tr>
								<tr class="odd">
									<td>Cash and cash balances</td>
									<td>73,630</td>
									<td>72,308</td>
									<td class="highlighted">83,284</td>
									<td>13.1%</td>
									<td>15.2%</td>
								</tr>
								<tr class="even">
									<td>Financial assets held for trading</td>
									<td>73,630</td>
									<td>72,308</td>
									<td class="highlighted">83,284</td>
									<td>13.1%</td>
									<td>15.2%</td>
								</tr>
								<tr class="odd">
									<td>Loans and receivables with banks</td>
									<td>73,630</td>
									<td>72,308</td>
									<td class="highlighted">83,284</td>
									<td>13.1%</td>
									<td>15.2%</td>
								</tr>
								<tr class="even">
									<td>Loans and receivables with customers</td>
									<td>73,630</td>
									<td>72,308</td>
									<td class="highlighted">83,284</td>
									<td>13.1%</td>
									<td>15.2%</td>
								</tr>
								<tr class="odd">
									<td>Finanncial investments</td>
									<td>73,630</td>
									<td>72,308</td>
									<td class="highlighted">83,284</td>
									<td>13.1%</td>
									<td>15.2%</td>
								</tr>
								<tr class="even">
									<td>Hedging instruments</td>
									<td>73,630</td>
									<td>72,308</td>
									<td class="highlighted">83,284</td>
									<td>13.1%</td>
									<td>15.2%</td>
								</tr>
								<tr class="tableTotal">
									<td><b>Total</b></td>
									<td><b>73,630</b></td>
									<td><b>72,308</b></td>
									<td class="highlighted"><b>83,284</b></td>
									<td><b>13.1%</b></td>
									<td><b>15.2%</b></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<div class="example">Multiple columns full page width - Footnote table example</div>
				<div class="panel ucg_table" data-tabletype="2">
					<div class="container">
						<p><b>Consolidated Balance Sheet</b> (€ milion)</p>
						<table>
							<tbody>
								<tr class="tableHead">
									<th><b>MAJOR SHAREHOLDERS</b></th>
									<th><b>Ordinary shares</b></th>
									<th><b>% Owned <span class="apex">(1)</span></b></th>
								</tr>
								<tr class="odd">
									<td>1. Aabar Luxembourg S.A.R.L.</td>
									<td>294,600,000</td>
									<td>5.024%</td>
								</tr>
								<tr class="even">
									<td>2. BlackRock Inc.</td>
									<td>294,600,000</td>
									<td>5.024%</td>
								</tr>
								<tr class="odd">
									<td>3. Fondazione Cassa di Risparmio Verona,</td>
									<td>294,600,000</td>
									<td>5.024%</td>
								</tr>
								<tr class="even">
									<td>4. Delfin S.A.R.L.</td>
									<td>294,600,000</td>
									<td>5.024%</td>
								</tr>
								<tr class="odd">
									<td>5. Central Bank of Libya</td>
									<td>294,600,000</td>
									<td>5.024%</td>
								</tr>
							</tbody>
						</table>
						<p class="note" data-mobile-expand="20">1) Comparative figures as at December 31, 2013 have been restated following the introduction of IFRS 10 and IFRS 11. For further de- tails see the "Further information" section of this Consolidated Interim Report. Due to a change in sector of a counterparty, and in order to enable a uniform comparison between periods, the items loans and receivables with/deposits from banks, and loans and receivables with/deposits from customers have been restated.</p>
					</div>
				</div>
				<div class="example">Multiple columns full page width - Multiple rows inside a single cell example</div>
				<div class="panel ucg_table" data-tabletype="3">
					<div class="container">
						<p><b>Staff and Branches</b></p>
						<table>
							<tbody>
								<tr class="tableHead">
									<th><b>ASSETS</b></th>
									<th><b>Sep 13</b></th>
									<th><b>Jun 14</b></th>
									<th><b>Sep 14</b></th>
									<th><b>Y/Y %</b></th>
									<th><b>Q/Q %</b></th>
								</tr>
								<tr class="odd">
									<td>Employees</td>
									<td>73,630</td>
									<td>72,308</td>
									<td>83,284</td>
									<td>13.1%</td>
									<td>15.2%</td>
								</tr>
								<tr class="even">
									<td><span class="moreRows">Branches</span><span class="moreRows">- o/w, Italy</span><span class="moreRows">- o/w, other countries</span></td>
									<td><span class="moreRows">73,630</span><span class="moreRows">73,630</span><span class="moreRows">73,630</span></td>
									<td><span class="moreRows">72,308</span><span class="moreRows">72,308</span><span class="moreRows">72,308</span></td>
									<td><span class="moreRows">83,284</span><span class="moreRows">83,284</span><span class="moreRows">83,284</span></td>
									<td><span class="moreRows">13.1%</span><span class="moreRows">13.1%</span><span class="moreRows">13.1%</span></td>
									<td><span class="moreRows">15.2%</span><span class="moreRows">15.2%</span><span class="moreRows">15.2%</span></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<div class="example">Narrowed - Single head column but 2 columns inside</div>
				<div class="panel ucg_table">
					<div class="container">
						<p><b>Consolidated Balance Sheet</b> (€ milion)</p>
						<table class="monocolumn">
							<tbody>
								<tr class="tableHead">
									<th colspan="2"><b>SUMMARY TABLE SITUATIONS</b></th>
								</tr>
								<tr class="odd">
									<td>Presence of labour contracts in the company</td>
									<td><b>NO</b></td>
								</tr>
								<tr class="even">
									<td>Presence of controlling shareholders in the company</td>
									<td><b>NO</b></td>
								</tr>
								<tr class="odd">
									<td>Exercise of an activity of management and coordination by the company</td>
									<td><b>YES</b></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				
				<div class="example">Multiple columns full page width - Text inside cell example</div>
				<div class="panel ucg_table" data-tabletype="4">
					<div class="container">
						<p><b>Earnings and dividend per share</b></p>
						<table>
							<tbody>
								<tr class="tableHead">
									<th><b></b></th>
									<th><b>N° of shares eligible for dividend payment</b></th>
									<th><b>Gross Dividend per ordinary share</b></th>
									<th><b>Gross Dividend per savings share</b></th>
									<th><b>EPS <span class="apex">(1)</span></b></th>
								</tr>
								<tr class="odd">
									<td class="text">
										<b>2013</b><br>
										The Shareholders' Meeting approved the distribution to shareholders of
										Euro 0.10 gross dividend per share (savings and ordinary). The payment
										of the dividend has been imple- mented in the form of a scrip dividend,
										which allows the payment of the dividend either with shares or with cash
										at the choice of the share- holders. The ex-dividend date was May 19,
										2014 while the payment date - both via shares or via cash - was
										June 6, 2014.
									</td>
									<td>5,703,327,951<span class="apex">(3)</span></td>
									<td>0,10€</td>
									<td>0,13€</td>
									<td>0,11€</td>
								</tr>
								<tr class="even">
									<td class="text">
										<b>2012</b><br>
										The Shareholders' Meeting resolved to distrib- ute to shareholders Euro
										0.09 gross dividend per ordinary share and per savings share, which will
										be paid out on May 23, 2013, the ex-dividend date being on May 20, 2013
										(detachment coupon n° 2), through the Inter- mediaries being part of part
										of the Monte Titoli centralized management system
									</td>
									<td>5,703,327,951<span class="apex">(3)</span></td>
									<td>0,10€</td>
									<td>0,13€</td>
									<td>0,11€</td>
								</tr>
								<tr class="odd">
									<td class="text">
										<b>2012</b><br>
										The Annual General Meeting, held on May 11th 2012, approved the
										Board of Directors' proposal - concerning the adopted measures on capital
										position strengthening previously disclosed to the market - not to
										distribute in 2012 any dividend on 2011 Results neither for ordinary nor
										for savings shares
									</td>
									<td>n.d.</td>
									<td>n.d.</td>
									<td>n.d.</td>
									<td>n.d.</td>
								</tr>
							</tbody>
						</table>
						<p class="note" data-mobile-expand="20">1) Comparative figures as at December 31, 2013 have been restated following the introduction of IFRS 10 and IFRS 11. For further de- tails see the "Further information" section of this Consolidated Interim Report. Due to a change in sector of a counterparty, and in order to enable a uniform comparison between periods, the items loans and receivables with/deposits from banks, and loans and receivables with/deposits from customers have been restated.</p>
					</div>
				</div>
				
			
			<!-- PAGE END HERE -->
						
				<jsp:include page="includes/footer.html"></jsp:include>
			</div>
		</div>
	</div>
</div>
</body>
</html>