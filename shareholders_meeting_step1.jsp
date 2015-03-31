<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="it">
<head>
	<meta charset="utf-8"> 
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Shareholder's meeting - Step 1</title>
	
	<jsp:include page="includes/css.html"></jsp:include>
	
	<!-- SPECIFIC CSS START HERE -->	
	
		<!--generic CSS for Parsys Column container -->
		<link type="text/css" rel="stylesheet" href="css/ucg_parsys_column.css"/>

		<!-- CHOSEN PLUGIN FOR SKINNING SELECT TAGS -->
		<link type="text/css" rel="stylesheet" href="plugin/css/chosen.min.css"/>
		<!-- SPACER COMPONENT -->
		<link type="text/css" rel="stylesheet" href="css/ucg_spacer.css"/>
		<!-- BREADCRUMB -->
		<link type="text/css" rel="stylesheet" href="css/ucg_breadcrumb.css"/>
		<link type="text/css" rel="stylesheet" href="css/ucg_breadcrumb_links.css"/>
		<link type="text/css" rel="stylesheet" href="css/ucg_sharing.css"/>
		<!-- HORIZONTAL LINE COMPONENT -->
		<link type="text/css" rel="stylesheet" href="css/ucg_horizontal_line_component.css"/>
		<!-- BUTTON COMPONENT -->
		<link type="text/css" rel="stylesheet" href="css/ucg_button_component.css"/>
		<!-- TITLE COMPONENT -->
		<link type="text/css" rel="stylesheet" href="css/ucg_title_component.css"/>
		<!-- IMAGE TEXT COMPONENT -->
		<link type="text/css" rel="stylesheet" href="css/ucg_image_text_component.css"/>
		<!-- IMAGE LINK COMPONENT -->
		<link type="text/css" rel="stylesheet" href="css/ucg_link_component.css"/>
		<!-- CHECKBOX E RADIO SKIN -->
		<link type="text/css" rel="stylesheet" href="plugin/css/all.css"/>
		<!-- SPECIFIC CSS FOR CONTACT FORMS -->
		<link type="text/css" rel="stylesheet" href="css/form.css"/>
		<link type="text/css" rel="stylesheet" href="css/form-desktop.css"/>
		<!-- SOCIAL + SOCIAL FOOTER COMPONENT -->
		<link type="text/css" rel="stylesheet" href="css/ucg_social.css"/>
		
		<link type="text/css" rel="stylesheet" href="css/shareholders_meeting.css"/>

	<!-- SPECIFIC CSS END HERE -->    
       
    <link type="text/css" rel="stylesheet" href="css/retina.css"/>
	
	<jsp:include page="includes/js.html"></jsp:include>
    
	<!-- SPECIFIC JS START HERE -->
	
		<!-- CHOSEN PLUGIN FOR SKINNING SELECT TAGS -->
		<script type="text/javascript" src="plugin/js/chosen.patched.jquery.js"></script>
		<script type="text/javascript" src="plugin/js/jquery.maskedinput.min.js"></script>
		<!-- CHECKBOX E RADIO SKIN -->
		<script type="text/javascript" src="plugin/js/icheck.min.js"></script>
		<script type="text/javascript" src="js/form.js"></script>
		<!-- SPACER COMPONENT -->
		<script type="text/javascript" src="js/ucg_spacer.js"></script>
		<!-- TITLE COMPONENT -->
		<script type="text/javascript" src="js/ucg_title.js"></script>	
		
		<script type="text/javascript" src="js/shareholders_meeting.js"></script>
	
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
			
				<div id="smForm" class="step1 fase1">
					<div class="parsys contentpagewelcome-parsys">
						<div class="section">
							<!-- BREADCRUMB -->
							<div class="panel ucg_breadcrumb">
								<div class="container">
									<div class="panel ucg_breadcrumb_crumbs col-xs-12">
										<div class="container">
											<ul>
												<li><a href="javascript:void(0);">Breadcrum first level</a></li>
												<li><a href="javascript:void(0);">Second level</a></li>
												<li><a href="javascript:void(0);">Third level</a></li>
												<li>Fourth level</li>
											</ul>
										</div>
									</div>
									<div class="panel ucg_breadcrumb_addon">
										<div class="container">
											<!-- BUTTONS -->
											<div class="ucg_breadcrumb_links col-xs-12">
												<a class="second-crosslink" href="javascript:void(0);">Second crosslink</a>
												<a class="first-crosslink" href="javascript:void(0);">First crosslink</a>
											</div>
											<!-- /END BUTTONS -->
											<!-- SHARING -->
											<div class="ucg_breadcrumb_sharing col-xs-12">
												<div class="icon collapsed">
													<a href="javascript:void(0);" data-target=".ucg_breadcrumb_sharing_panel.collapse" data-toggle="collapse">Share</a>
												</div>
											</div>
											<!-- /END SHARING -->
										</div>
									</div>
									<div class="clear"></div>
								</div>
								<!-- SHARING COLLAPSABLE-->
								<div class="panel panel-collapse ucg_breadcrumb_sharing_panel collapse">
									<div class="container">
										<div class="arrows">
											<img class="arrow-down" alt="Arrow Down" src="img/static/breadcrumb-share-down-arrow.png">
										</div>
										<div class="col-xs-12 col-sm-4 col-md-3 left">
											<h2>Share this event on:</h2>
										</div>
										<div class="col-xs-12 col-sm-7 col-md-8">
											<ul>
												<li class="col-xs-6"><a href="javascript:void(0);" class="facebook">Facebook</a></li>
												<li class="col-xs-6"><a href="javascript:void(0);" class="twitter">Twitter</a></li>
												<li class="col-xs-6"><a href="javascript:void(0);" class="linkedin">LinkedIn</a></li>
												<li class="col-xs-6"><a href="javascript:void(0);" class="googleplus">Google +</a></li>
											</ul>
										</div>
										<div class="closer hidden-xs">
											<a href="javascript:void(0);" data-target=".ucg_breadcrumb_sharing_panel.collapse" data-toggle="collapse">
												<img alt="Cross" src="img/static/breadcrumb-share-cross.png">
											</a>
										</div>
									</div>
								</div>
								<!-- /END SHARING COLLAPSABLE-->
							</div>
							<!-- /END BREADCRUMB -->
						</div>
					</div>
	
					<div class="parsys contentpagewelcome-parsys">
						<div class="section">
							<!-- HORIZONTAL LINE -->
							<div class="ucg_horizontal_line">
								<div class="spacer1"></div>
								<div class="spacer2"></div>
							</div>
							<!-- /END HORIZONTAL LINE -->
						</div>
					</div>
	
					<div class="parsys contentpagewelcome-parsys">
						<div class="section">
							<div class="ucg_spacer" data-ucg-height-mobile="20" data-ucg-height="20"></div>
						</div>
					</div>
	
					<div class="parsys contentpagewelcome-parsys">
						<div class="section">
							<!-- TITLE SEO -->
							<div class="panel ucg_seo_title">
								<div class="container">
									<h1 class="singlePage">Shareholders’ meeting questions</h1>
								</div>
							</div>
							<!-- /END TITLE SEO -->
						</div>
					</div>
	
					<div class="parsys contentpagewelcome-parsys">
						<div class="section">
							<div class="ucg_spacer" data-ucg-height-mobile="20" data-ucg-height="20"></div>
						</div>
					</div>
	
					<div class="parsys contentpagewelcome-parsys">
						<div class="section">
							<!-- HORIZONTAL LINE -->
							<div class="ucg_horizontal_line">
								<div class="spacer1"></div>
								<div class="spacer2"></div>
							</div>
							<!-- /END HORIZONTAL LINE -->
						</div>
					</div>
					
					<div class="panel lightGrey smMessage">
						<div class="parsys contentpagewelcome-parsys">
							<div class="section">
								<div class="ucg_spacer" data-ucg-height-mobile="20" data-ucg-height="20"></div>
							</div>
						</div>
						<div class="parsys contentpagewelcome-parsys">
							<div class="section">
								<div class="panel ucg_title">
									<div class="container">
										<h4>Please fill in the form to ask questions related to the 22 May 2014 Shareholders meeting <br class="visible-xs">(mandatory items are marked with *)</h4>
										<h3><b>Step 1 of 2: Shareholder data</b></h3>
									</div>
								</div>
								<!-- /END IMAGE TEXT -->
							</div>
						</div>
						<div class="parsys contentpagewelcome-parsys">
							<div class="section">
								<div class="ucg_spacer" data-ucg-height-mobile="5" data-ucg-height="5"></div>
							</div>
						</div>	
					</div>
					
					<div class="parsys contentpagewelcome-parsys">
						<div class="section">
							<!-- HORIZONTAL LINE -->
							<div class="ucg_horizontal_line">
								<div class="spacer1"></div>
								<div class="spacer2"></div>
							</div>
							<!-- /END HORIZONTAL LINE -->
						</div>
					</div>
					
					<div class="parsys contentpagewelcome-parsys">
						<div class="section">
							<div class="panel ucg_form">
								<div class="container">
									<form name="careersForm">
										<div class="formSectionContainer clearfix">
											<div class="ucg_formField shareholder_type_field col-xs-12">
												Shareholder type*
												<div class="ucg_radio shareholder_type">
													<label class="ucg_radio_button">
														<input type="radio" class="iradio_ubis required" name="shareholder_type" value="natural_person" data-toggle="popover" data-content="This field is mandatory" />
														<span class="labelText">Natural person</span>
													</label>
													<label class="ucg_radio_button">
														<input type="radio" class="iradio_ubis required" name="shareholder_type" value="company" />
														<span class="labelText">Company organization</span>
													</label>
												</div>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
					
					
					
					
					
					<div id="natural_person" class="parsys contentpagewelcome-parsys shareholder_type_form" style="display: none;">
						<div class="section">
							<div class="panel ucg_form">
								<div class="container">
									<form name="smFormNaturalPerson">
										<div class="alert alert-danger alert-dismissible fade in">
											You made <span class="ucg_error_num">3</span> errors filling the form, please check
											<button type="button" class="close" data-dismiss="alert">
												&times;
											</button>
										</div>										
										<div class="ucg_formTitle">
											<h2>Your personal data</h2>
										</div>
										<div class="formSectionContainer clearfix">
											<div class="ucg_formRow col-xs-12 col-sm-8 clearfix">
												<div class="ucg_formField col-xs-12 col-sm-6">
													First Name*
													<input class="ucg_formInput required" name="firstName" maxlength="100" placeholder="Name" data-toggle="popover" data-content="This field is mandatory">
												</div>
												<div class="ucg_formField col-xs-12 col-sm-6">
													Surname*
													<input class="ucg_formInput required" name="surname" maxlength="100" placeholder="Surame" data-toggle="popover" data-content="This field is mandatory">
												</div>
											</div>
											<div class="ucg_formRow col-xs-12 col-sm-8 clearfix">
												<div class="ucg_formField col-xs-12 col-sm-6">
													Date of birth*
													<input class="ucg_formInput ucg_datemask required" name="dateOfBirth" maxlength="100" placeholder="gg/mm/aaaa" data-toggle="popover" data-content="This field is mandatory">
												</div>
												<div class="ucg_formField col-xs-12 col-sm-6">
													Place of birth*
													<input class="ucg_formInput required" name="placeOfBirth" maxlength="100" placeholder="City" data-toggle="popover" data-content="This field is mandatory">
												</div>
											</div>
											<div class="ucg_formRow col-xs-12 col-sm-8 clearfix">
												<div class="ucg_formField countries col-xs-12">
													Country of residence*
													<select name="country" class="chosen-select required little-arrow chosen-select-ubis-search" data-placeholder="Select country..." data-toggle="popover" data-content="This field is mandatory">
														<option value=""></option>
														<option value="AF">Afghanistan</option>
														<option value="AX">Åland Islands</option>
														<option value="AL">Albania</option>
														<option value="DZ">Algeria</option>
														<option value="AS">American Samoa</option>
														<option value="AD">Andorra</option>
														<option value="AO">Angola</option>
														<option value="AI">Anguilla</option>
														<option value="AQ">Antarctica</option>
														<option value="AG">Antigua and Barbuda</option>
														<option value="AR">Argentina</option>
														<option value="AM">Armenia</option>
														<option value="AW">Aruba</option>
														<option value="AU">Australia</option>
														<option value="AT">Austria</option>
														<option value="AZ">Azerbaijan</option>
														<option value="BS">Bahamas</option>
														<option value="BH">Bahrain</option>
														<option value="BD">Bangladesh</option>
														<option value="BB">Barbados</option>
														<option value="BY">Belarus</option>
														<option value="BE">Belgium</option>
														<option value="BZ">Belize</option>
														<option value="BJ">Benin</option>
														<option value="BM">Bermuda</option>
														<option value="BT">Bhutan</option>
														<option value="BO">Bolivia, Plurinational State of</option>
														<option value="BQ">Bonaire, Sint Eustatius and Saba</option>
														<option value="BA">Bosnia and Herzegovina</option>
														<option value="BW">Botswana</option>
														<option value="BV">Bouvet Island</option>
														<option value="BR">Brazil</option>
														<option value="IO">British Indian Ocean Territory</option>
														<option value="BN">Brunei Darussalam</option>
														<option value="BG">Bulgaria</option>
														<option value="BF">Burkina Faso</option>
														<option value="BI">Burundi</option>
														<option value="KH">Cambodia</option>
														<option value="CM">Cameroon</option>
														<option value="CA">Canada</option>
														<option value="CV">Cape Verde</option>
														<option value="KY">Cayman Islands</option>
														<option value="CF">Central African Republic</option>
														<option value="TD">Chad</option>
														<option value="CL">Chile</option>
														<option value="CN">China</option>
														<option value="CX">Christmas Island</option>
														<option value="CC">Cocos (Keeling) Islands</option>
														<option value="CO">Colombia</option>
														<option value="KM">Comoros</option>
														<option value="CG">Congo</option>
														<option value="CD">Congo, the Democratic Republic of the</option>
														<option value="CK">Cook Islands</option>
														<option value="CR">Costa Rica</option>
														<option value="CI">Côte d'Ivoire</option>
														<option value="HR">Croatia</option>
														<option value="CU">Cuba</option>
														<option value="CW">Curaçao</option>
														<option value="CY">Cyprus</option>
														<option value="CZ">Czech Republic</option>
														<option value="DK">Denmark</option>
														<option value="DJ">Djibouti</option>
														<option value="DM">Dominica</option>
														<option value="DO">Dominican Republic</option>
														<option value="EC">Ecuador</option>
														<option value="EG">Egypt</option>
														<option value="SV">El Salvador</option>
														<option value="GQ">Equatorial Guinea</option>
														<option value="ER">Eritrea</option>
														<option value="EE">Estonia</option>
														<option value="ET">Ethiopia</option>
														<option value="FK">Falkland Islands (Malvinas)</option>
														<option value="FO">Faroe Islands</option>
														<option value="FJ">Fiji</option>
														<option value="FI">Finland</option>
														<option value="FR">France</option>
														<option value="GF">French Guiana</option>
														<option value="PF">French Polynesia</option>
														<option value="TF">French Southern Territories</option>
														<option value="GA">Gabon</option>
														<option value="GM">Gambia</option>
														<option value="GE">Georgia</option>
														<option value="DE">Germany</option>
														<option value="GH">Ghana</option>
														<option value="GI">Gibraltar</option>
														<option value="GR">Greece</option>
														<option value="GL">Greenland</option>
														<option value="GD">Grenada</option>
														<option value="GP">Guadeloupe</option>
														<option value="GU">Guam</option>
														<option value="GT">Guatemala</option>
														<option value="GG">Guernsey</option>
														<option value="GN">Guinea</option>
														<option value="GW">Guinea-Bissau</option>
														<option value="GY">Guyana</option>
														<option value="HT">Haiti</option>
														<option value="HM">Heard Island and McDonald Islands</option>
														<option value="VA">Holy See (Vatican City State)</option>
														<option value="HN">Honduras</option>
														<option value="HK">Hong Kong</option>
														<option value="HU">Hungary</option>
														<option value="IS">Iceland</option>
														<option value="IN">India</option>
														<option value="ID">Indonesia</option>
														<option value="IR">Iran, Islamic Republic of</option>
														<option value="IQ">Iraq</option>
														<option value="IE">Ireland</option>
														<option value="IM">Isle of Man</option>
														<option value="IL">Israel</option>
														<option value="IT">Italy</option>
														<option value="JM">Jamaica</option>
														<option value="JP">Japan</option>
														<option value="JE">Jersey</option>
														<option value="JO">Jordan</option>
														<option value="KZ">Kazakhstan</option>
														<option value="KE">Kenya</option>
														<option value="KI">Kiribati</option>
														<option value="KP">Korea, Democratic People's Republic of</option>
														<option value="KR">Korea, Republic of</option>
														<option value="KW">Kuwait</option>
														<option value="KG">Kyrgyzstan</option>
														<option value="LA">Lao People's Democratic Republic</option>
														<option value="LV">Latvia</option>
														<option value="LB">Lebanon</option>
														<option value="LS">Lesotho</option>
														<option value="LR">Liberia</option>
														<option value="LY">Libya</option>
														<option value="LI">Liechtenstein</option>
														<option value="LT">Lithuania</option>
														<option value="LU">Luxembourg</option>
														<option value="MO">Macao</option>
														<option value="MK">Macedonia, the former Yugoslav Republic of</option>
														<option value="MG">Madagascar</option>
														<option value="MW">Malawi</option>
														<option value="MY">Malaysia</option>
														<option value="MV">Maldives</option>
														<option value="ML">Mali</option>
														<option value="MT">Malta</option>
														<option value="MH">Marshall Islands</option>
														<option value="MQ">Martinique</option>
														<option value="MR">Mauritania</option>
														<option value="MU">Mauritius</option>
														<option value="YT">Mayotte</option>
														<option value="MX">Mexico</option>
														<option value="FM">Micronesia, Federated States of</option>
														<option value="MD">Moldova, Republic of</option>
														<option value="MC">Monaco</option>
														<option value="MN">Mongolia</option>
														<option value="ME">Montenegro</option>
														<option value="MS">Montserrat</option>
														<option value="MA">Morocco</option>
														<option value="MZ">Mozambique</option>
														<option value="MM">Myanmar</option>
														<option value="NA">Namibia</option>
														<option value="NR">Nauru</option>
														<option value="NP">Nepal</option>
														<option value="NL">Netherlands</option>
														<option value="NC">New Caledonia</option>
														<option value="NZ">New Zealand</option>
														<option value="NI">Nicaragua</option>
														<option value="NE">Niger</option>
														<option value="NG">Nigeria</option>
														<option value="NU">Niue</option>
														<option value="NF">Norfolk Island</option>
														<option value="MP">Northern Mariana Islands</option>
														<option value="NO">Norway</option>
														<option value="OM">Oman</option>
														<option value="PK">Pakistan</option>
														<option value="PW">Palau</option>
														<option value="PS">Palestinian Territory, Occupied</option>
														<option value="PA">Panama</option>
														<option value="PG">Papua New Guinea</option>
														<option value="PY">Paraguay</option>
														<option value="PE">Peru</option>
														<option value="PH">Philippines</option>
														<option value="PN">Pitcairn</option>
														<option value="PL">Poland</option>
														<option value="PT">Portugal</option>
														<option value="PR">Puerto Rico</option>
														<option value="QA">Qatar</option>
														<option value="RE">Réunion</option>
														<option value="RO">Romania</option>
														<option value="RU">Russian Federation</option>
														<option value="RW">Rwanda</option>
														<option value="BL">Saint Barthélemy</option>
														<option value="SH">Saint Helena, Ascension and Tristan da Cunha</option>
														<option value="KN">Saint Kitts and Nevis</option>
														<option value="LC">Saint Lucia</option>
														<option value="MF">Saint Martin (French part)</option>
														<option value="PM">Saint Pierre and Miquelon</option>
														<option value="VC">Saint Vincent and the Grenadines</option>
														<option value="WS">Samoa</option>
														<option value="SM">San Marino</option>
														<option value="ST">Sao Tome and Principe</option>
														<option value="SA">Saudi Arabia</option>
														<option value="SN">Senegal</option>
														<option value="RS">Serbia</option>
														<option value="SC">Seychelles</option>
														<option value="SL">Sierra Leone</option>
														<option value="SG">Singapore</option>
														<option value="SX">Sint Maarten (Dutch part)</option>
														<option value="SK">Slovakia</option>
														<option value="SI">Slovenia</option>
														<option value="SB">Solomon Islands</option>
														<option value="SO">Somalia</option>
														<option value="ZA">South Africa</option>
														<option value="GS">South Georgia and the South Sandwich Islands</option>
														<option value="SS">South Sudan</option>
														<option value="ES">Spain</option>
														<option value="LK">Sri Lanka</option>
														<option value="SD">Sudan</option>
														<option value="SR">Suriname</option>
														<option value="SJ">Svalbard and Jan Mayen</option>
														<option value="SZ">Swaziland</option>
														<option value="SE">Sweden</option>
														<option value="CH">Switzerland</option>
														<option value="SY">Syrian Arab Republic</option>
														<option value="TW">Taiwan, Province of China</option>
														<option value="TJ">Tajikistan</option>
														<option value="TZ">Tanzania, United Republic of</option>
														<option value="TH">Thailand</option>
														<option value="TL">Timor-Leste</option>
														<option value="TG">Togo</option>
														<option value="TK">Tokelau</option>
														<option value="TO">Tonga</option>
														<option value="TT">Trinidad and Tobago</option>
														<option value="TN">Tunisia</option>
														<option value="TR">Turkey</option>
														<option value="TM">Turkmenistan</option>
														<option value="TC">Turks and Caicos Islands</option>
														<option value="TV">Tuvalu</option>
														<option value="UG">Uganda</option>
														<option value="UA">Ukraine</option>
														<option value="AE">United Arab Emirates</option>
														<option value="GB">United Kingdom</option>
														<option value="US">United States</option>
														<option value="UM">United States Minor Outlying Islands</option>
														<option value="UY">Uruguay</option>
														<option value="UZ">Uzbekistan</option>
														<option value="VU">Vanuatu</option>
														<option value="VE">Venezuela, Bolivarian Republic of</option>
														<option value="VN">Viet Nam</option>
														<option value="VG">Virgin Islands, British</option>
														<option value="VI">Virgin Islands, U.S.</option>
														<option value="WF">Wallis and Futuna</option>
														<option value="EH">Western Sahara</option>
														<option value="YE">Yemen</option>
														<option value="ZM">Zambia</option>
														<option value="ZW">Zimbabwe</option>
													</select>
												</div>
											</div>
											<div class="ucg_formRow col-xs-12 col-sm-8 clearfix">
												<div class="ucg_formField col-xs-12 col-sm-6">
													Town
													<input class="ucg_formInput" name="town" maxlength="100" placeholder="Town">
												</div>
												<div class="ucg_formField col-xs-12 col-sm-6">
													Province/district
													<input class="ucg_formInput" name="province" maxlength="100" placeholder="Province">
												</div>											
											</div>
											<div class="ucg_formRow col-xs-12 col-sm-8 clearfix">
												<div class="ucg_formField col-xs-12 col-sm-10">
													Street address
													<input class="ucg_formInput" name="streetAddress" maxlength="100" placeholder="Street Address">
												</div>
												<div class="ucg_formField col-xs-12 col-sm-2">
													Number
													<input class="ucg_formInput" name="addressNumber" maxlength="100" placeholder="Number">
												</div>
											</div>
											<div class="ucg_formRow col-xs-12 col-sm-8 clearfix">
												<div class="ucg_formField col-xs-12 col-sm-6">
													Postal Code
													<input class="ucg_formInput" name="postcode" maxlength="100" placeholder="Postal code">
												</div>
												<div class="ucg_formField col-xs-12 col-sm-6">
													Tax code
													<input class="ucg_formInput" name="taxCode" maxlength="100" placeholder="Code">
												</div>
											</div>											
										</div>										
										<div class="ucg_formTitle">
											<h2>Your personal data</h2>
										</div>
										<div class="formSectionContainer clearfix">
											<div class="ucg_formRow col-xs-12 col-sm-8 clearfix">
												<div class="ucg_formField col-xs-12">
													Email address*
													<input class="ucg_formInput required" name="emailAddress" maxlength="100" placeholder="Your email address" data-toggle="popover" data-content="This field is mandatory">
												</div>
											</div>
											<div class="ucg_formRow col-xs-12 col-sm-8 clearfix">
												<div class="ucg_formField col-xs-6">
													Telephone number*
													<input class="ucg_formInput required" name="telephoneNumber" maxlength="100" placeholder="Number" data-toggle="popover" data-content="This field is mandatory">
												</div>
											</div>
										</div>
										<!-- HORIZONTAL LINE -->
										<div class="ucg_horizontal_line">
											<div class="spacer1"></div>
											<div class="spacer2"></div>
										</div>
										<!-- /END HORIZONTAL LINE -->
										<!-- BUTTON -->
										<div class="panel ucg_button">
											<div class="container">
												<button class="btn ucg_button_confirm ucg_button_arrowed ucg_button_arrow_right" title="Confirm">STEP 2: QUESTIONS<span class="rightArrow"></span></button>
											</div>
										</div>
										<!-- /END BUTTON -->
									</form>
								</div>
							</div>
						</div>
					</div>
	
					<div id="company" class="parsys contentpagewelcome-parsys shareholder_type_form" style="display: none;">
						<div class="section">
							<div class="panel ucg_form">
								<div class="container">
									<form name="smFormCompany">
										<div class="alert alert-danger alert-dismissible fade in">
											You made <span class="ucg_error_num">3</span> errors filling the form, please check
											<button type="button" class="close" data-dismiss="alert">
												&times;
											</button>
										</div>										
										<div class="ucg_formTitle">
											<h2>Company/organization data</h2>
										</div>
										<div class="formSectionContainer clearfix">
											<div class="ucg_formRow col-xs-12 col-sm-8 clearfix">
												<div class="ucg_formField col-xs-12">
													Denomination/company name*
													<input class="ucg_formInput required" name="companyName" maxlength="100" placeholder="Name" data-toggle="popover" data-content="This field is mandatory">
												</div>
											</div>
											<div class="ucg_formRow col-xs-12 col-sm-8 clearfix">
												<div class="ucg_formField countries col-xs-12 col-sm-6">
													Registered office Country*
													<select name="country" class="chosen-select required little-arrow chosen-select-ubis-search" data-placeholder="Select country..."  data-toggle="popover" data-content="This field is mandatory">
														<option value=""></option>
														<option value="AF">Afghanistan</option>
														<option value="AX">Åland Islands</option>
														<option value="AL">Albania</option>
														<option value="DZ">Algeria</option>
														<option value="AS">American Samoa</option>
														<option value="AD">Andorra</option>
														<option value="AO">Angola</option>
														<option value="AI">Anguilla</option>
														<option value="AQ">Antarctica</option>
														<option value="AG">Antigua and Barbuda</option>
														<option value="AR">Argentina</option>
														<option value="AM">Armenia</option>
														<option value="AW">Aruba</option>
														<option value="AU">Australia</option>
														<option value="AT">Austria</option>
														<option value="AZ">Azerbaijan</option>
														<option value="BS">Bahamas</option>
														<option value="BH">Bahrain</option>
														<option value="BD">Bangladesh</option>
														<option value="BB">Barbados</option>
														<option value="BY">Belarus</option>
														<option value="BE">Belgium</option>
														<option value="BZ">Belize</option>
														<option value="BJ">Benin</option>
														<option value="BM">Bermuda</option>
														<option value="BT">Bhutan</option>
														<option value="BO">Bolivia, Plurinational State of</option>
														<option value="BQ">Bonaire, Sint Eustatius and Saba</option>
														<option value="BA">Bosnia and Herzegovina</option>
														<option value="BW">Botswana</option>
														<option value="BV">Bouvet Island</option>
														<option value="BR">Brazil</option>
														<option value="IO">British Indian Ocean Territory</option>
														<option value="BN">Brunei Darussalam</option>
														<option value="BG">Bulgaria</option>
														<option value="BF">Burkina Faso</option>
														<option value="BI">Burundi</option>
														<option value="KH">Cambodia</option>
														<option value="CM">Cameroon</option>
														<option value="CA">Canada</option>
														<option value="CV">Cape Verde</option>
														<option value="KY">Cayman Islands</option>
														<option value="CF">Central African Republic</option>
														<option value="TD">Chad</option>
														<option value="CL">Chile</option>
														<option value="CN">China</option>
														<option value="CX">Christmas Island</option>
														<option value="CC">Cocos (Keeling) Islands</option>
														<option value="CO">Colombia</option>
														<option value="KM">Comoros</option>
														<option value="CG">Congo</option>
														<option value="CD">Congo, the Democratic Republic of the</option>
														<option value="CK">Cook Islands</option>
														<option value="CR">Costa Rica</option>
														<option value="CI">Côte d'Ivoire</option>
														<option value="HR">Croatia</option>
														<option value="CU">Cuba</option>
														<option value="CW">Curaçao</option>
														<option value="CY">Cyprus</option>
														<option value="CZ">Czech Republic</option>
														<option value="DK">Denmark</option>
														<option value="DJ">Djibouti</option>
														<option value="DM">Dominica</option>
														<option value="DO">Dominican Republic</option>
														<option value="EC">Ecuador</option>
														<option value="EG">Egypt</option>
														<option value="SV">El Salvador</option>
														<option value="GQ">Equatorial Guinea</option>
														<option value="ER">Eritrea</option>
														<option value="EE">Estonia</option>
														<option value="ET">Ethiopia</option>
														<option value="FK">Falkland Islands (Malvinas)</option>
														<option value="FO">Faroe Islands</option>
														<option value="FJ">Fiji</option>
														<option value="FI">Finland</option>
														<option value="FR">France</option>
														<option value="GF">French Guiana</option>
														<option value="PF">French Polynesia</option>
														<option value="TF">French Southern Territories</option>
														<option value="GA">Gabon</option>
														<option value="GM">Gambia</option>
														<option value="GE">Georgia</option>
														<option value="DE">Germany</option>
														<option value="GH">Ghana</option>
														<option value="GI">Gibraltar</option>
														<option value="GR">Greece</option>
														<option value="GL">Greenland</option>
														<option value="GD">Grenada</option>
														<option value="GP">Guadeloupe</option>
														<option value="GU">Guam</option>
														<option value="GT">Guatemala</option>
														<option value="GG">Guernsey</option>
														<option value="GN">Guinea</option>
														<option value="GW">Guinea-Bissau</option>
														<option value="GY">Guyana</option>
														<option value="HT">Haiti</option>
														<option value="HM">Heard Island and McDonald Islands</option>
														<option value="VA">Holy See (Vatican City State)</option>
														<option value="HN">Honduras</option>
														<option value="HK">Hong Kong</option>
														<option value="HU">Hungary</option>
														<option value="IS">Iceland</option>
														<option value="IN">India</option>
														<option value="ID">Indonesia</option>
														<option value="IR">Iran, Islamic Republic of</option>
														<option value="IQ">Iraq</option>
														<option value="IE">Ireland</option>
														<option value="IM">Isle of Man</option>
														<option value="IL">Israel</option>
														<option value="IT">Italy</option>
														<option value="JM">Jamaica</option>
														<option value="JP">Japan</option>
														<option value="JE">Jersey</option>
														<option value="JO">Jordan</option>
														<option value="KZ">Kazakhstan</option>
														<option value="KE">Kenya</option>
														<option value="KI">Kiribati</option>
														<option value="KP">Korea, Democratic People's Republic of</option>
														<option value="KR">Korea, Republic of</option>
														<option value="KW">Kuwait</option>
														<option value="KG">Kyrgyzstan</option>
														<option value="LA">Lao People's Democratic Republic</option>
														<option value="LV">Latvia</option>
														<option value="LB">Lebanon</option>
														<option value="LS">Lesotho</option>
														<option value="LR">Liberia</option>
														<option value="LY">Libya</option>
														<option value="LI">Liechtenstein</option>
														<option value="LT">Lithuania</option>
														<option value="LU">Luxembourg</option>
														<option value="MO">Macao</option>
														<option value="MK">Macedonia, the former Yugoslav Republic of</option>
														<option value="MG">Madagascar</option>
														<option value="MW">Malawi</option>
														<option value="MY">Malaysia</option>
														<option value="MV">Maldives</option>
														<option value="ML">Mali</option>
														<option value="MT">Malta</option>
														<option value="MH">Marshall Islands</option>
														<option value="MQ">Martinique</option>
														<option value="MR">Mauritania</option>
														<option value="MU">Mauritius</option>
														<option value="YT">Mayotte</option>
														<option value="MX">Mexico</option>
														<option value="FM">Micronesia, Federated States of</option>
														<option value="MD">Moldova, Republic of</option>
														<option value="MC">Monaco</option>
														<option value="MN">Mongolia</option>
														<option value="ME">Montenegro</option>
														<option value="MS">Montserrat</option>
														<option value="MA">Morocco</option>
														<option value="MZ">Mozambique</option>
														<option value="MM">Myanmar</option>
														<option value="NA">Namibia</option>
														<option value="NR">Nauru</option>
														<option value="NP">Nepal</option>
														<option value="NL">Netherlands</option>
														<option value="NC">New Caledonia</option>
														<option value="NZ">New Zealand</option>
														<option value="NI">Nicaragua</option>
														<option value="NE">Niger</option>
														<option value="NG">Nigeria</option>
														<option value="NU">Niue</option>
														<option value="NF">Norfolk Island</option>
														<option value="MP">Northern Mariana Islands</option>
														<option value="NO">Norway</option>
														<option value="OM">Oman</option>
														<option value="PK">Pakistan</option>
														<option value="PW">Palau</option>
														<option value="PS">Palestinian Territory, Occupied</option>
														<option value="PA">Panama</option>
														<option value="PG">Papua New Guinea</option>
														<option value="PY">Paraguay</option>
														<option value="PE">Peru</option>
														<option value="PH">Philippines</option>
														<option value="PN">Pitcairn</option>
														<option value="PL">Poland</option>
														<option value="PT">Portugal</option>
														<option value="PR">Puerto Rico</option>
														<option value="QA">Qatar</option>
														<option value="RE">Réunion</option>
														<option value="RO">Romania</option>
														<option value="RU">Russian Federation</option>
														<option value="RW">Rwanda</option>
														<option value="BL">Saint Barthélemy</option>
														<option value="SH">Saint Helena, Ascension and Tristan da Cunha</option>
														<option value="KN">Saint Kitts and Nevis</option>
														<option value="LC">Saint Lucia</option>
														<option value="MF">Saint Martin (French part)</option>
														<option value="PM">Saint Pierre and Miquelon</option>
														<option value="VC">Saint Vincent and the Grenadines</option>
														<option value="WS">Samoa</option>
														<option value="SM">San Marino</option>
														<option value="ST">Sao Tome and Principe</option>
														<option value="SA">Saudi Arabia</option>
														<option value="SN">Senegal</option>
														<option value="RS">Serbia</option>
														<option value="SC">Seychelles</option>
														<option value="SL">Sierra Leone</option>
														<option value="SG">Singapore</option>
														<option value="SX">Sint Maarten (Dutch part)</option>
														<option value="SK">Slovakia</option>
														<option value="SI">Slovenia</option>
														<option value="SB">Solomon Islands</option>
														<option value="SO">Somalia</option>
														<option value="ZA">South Africa</option>
														<option value="GS">South Georgia and the South Sandwich Islands</option>
														<option value="SS">South Sudan</option>
														<option value="ES">Spain</option>
														<option value="LK">Sri Lanka</option>
														<option value="SD">Sudan</option>
														<option value="SR">Suriname</option>
														<option value="SJ">Svalbard and Jan Mayen</option>
														<option value="SZ">Swaziland</option>
														<option value="SE">Sweden</option>
														<option value="CH">Switzerland</option>
														<option value="SY">Syrian Arab Republic</option>
														<option value="TW">Taiwan, Province of China</option>
														<option value="TJ">Tajikistan</option>
														<option value="TZ">Tanzania, United Republic of</option>
														<option value="TH">Thailand</option>
														<option value="TL">Timor-Leste</option>
														<option value="TG">Togo</option>
														<option value="TK">Tokelau</option>
														<option value="TO">Tonga</option>
														<option value="TT">Trinidad and Tobago</option>
														<option value="TN">Tunisia</option>
														<option value="TR">Turkey</option>
														<option value="TM">Turkmenistan</option>
														<option value="TC">Turks and Caicos Islands</option>
														<option value="TV">Tuvalu</option>
														<option value="UG">Uganda</option>
														<option value="UA">Ukraine</option>
														<option value="AE">United Arab Emirates</option>
														<option value="GB">United Kingdom</option>
														<option value="US">United States</option>
														<option value="UM">United States Minor Outlying Islands</option>
														<option value="UY">Uruguay</option>
														<option value="UZ">Uzbekistan</option>
														<option value="VU">Vanuatu</option>
														<option value="VE">Venezuela, Bolivarian Republic of</option>
														<option value="VN">Viet Nam</option>
														<option value="VG">Virgin Islands, British</option>
														<option value="VI">Virgin Islands, U.S.</option>
														<option value="WF">Wallis and Futuna</option>
														<option value="EH">Western Sahara</option>
														<option value="YE">Yemen</option>
														<option value="ZM">Zambia</option>
														<option value="ZW">Zimbabwe</option>
													</select>
												</div>
												<div class="ucg_formField col-xs-12 col-sm-6">
													Town (optional)
													<input class="ucg_formInput" name="townOffice" maxlength="100" placeholder="Town">
												</div>
											</div>
											<div class="ucg_formRow col-xs-12 col-sm-8 clearfix">
												<div class="ucg_formField col-xs-12">
													Province/district
													<input class="ucg_formInput" name="province" maxlength="100" placeholder="Province">
												</div>
											</div>
											<div class="ucg_formRow col-xs-12 col-sm-8 clearfix">
												<div class="ucg_formField col-xs-12 col-sm-6">
													Town
													<input class="ucg_formInput" name="town" maxlength="100" placeholder="Town">
												</div>
											</div><div class="ucg_formRow col-xs-12 col-sm-8 clearfix">
												<div class="ucg_formField col-xs-12 col-sm-10">
													Street address
													<input class="ucg_formInput" name="streetAddress" maxlength="100" placeholder="Street Address">
												</div>
												<div class="ucg_formField col-xs-12 col-sm-2">
													Number
													<input class="ucg_formInput" name="addressNumber" maxlength="100" placeholder="Number">
												</div>
											</div>
											<div class="ucg_formRow col-xs-12 col-sm-8 clearfix">
												<div class="ucg_formField col-xs-12 col-sm-6">
													Postal Code
													<input class="ucg_formInput" name="postcode" maxlength="100" placeholder="Postal code">
												</div>
												<div class="ucg_formField col-xs-12 col-sm-6">
													Tax / Vat code
													<input class="ucg_formInput" name="taxCode" maxlength="100" placeholder="Code">
												</div>
											</div>
										</div>							
										<div class="ucg_formTitle">
											<h2>Applicant Legal Representative’s data</h2>
										</div>
										<div class="formSectionContainer clearfix">
											<div class="ucg_formRow col-xs-12 col-sm-8 clearfix">
												<div class="ucg_formField col-xs-12 col-sm-6">
													First Name*
													<input class="ucg_formInput required" name="firstName" maxlength="100" placeholder="Name" data-toggle="popover" data-content="This field is mandatory">
												</div>
												<div class="ucg_formField col-xs-12 col-sm-6">
													Surname*
													<input class="ucg_formInput required" name="surname" maxlength="100" placeholder="Surame" data-toggle="popover" data-content="This field is mandatory">
												</div>
											</div>
											<div class="ucg_formRow col-xs-12 col-sm-8 clearfix">
												<div class="ucg_formField col-xs-12 col-sm-6">
													Date of birth*
													<input class="ucg_formInput ucg_datemask required" name="dateOfBirth" maxlength="100" placeholder="gg/mm/aaaa" data-toggle="popover" data-content="This field is mandatory">
												</div>
												<div class="ucg_formField col-xs-12 col-sm-6">
													Place of birth*
													<input class="ucg_formInput required" name="placeOfBirth" maxlength="100" placeholder="City" data-toggle="popover" data-content="This field is mandatory">
												</div>
											</div>
										</div>										
										<div class="ucg_formTitle">
											<h2>Reference information</h2>
										</div>
										<div class="formSectionContainer clearfix">
											<div class="ucg_formRow col-xs-12 col-sm-8 clearfix">
												<div class="ucg_formField col-xs-12">
													Email address*
													<input class="ucg_formInput required" name="emailAddress" maxlength="100" placeholder="Your email address" data-toggle="popover" data-content="This field is mandatory">
												</div>
											</div>
											<div class="ucg_formRow col-xs-12 col-sm-8 clearfix">
												<div class="ucg_formField col-xs-6">
													Telephone number*
													<input class="ucg_formInput required" name="telephoneNumber" maxlength="100" placeholder="Number" data-toggle="popover" data-content="This field is mandatory">
												</div>
											</div>
										</div>
										<!-- HORIZONTAL LINE -->
										<div class="ucg_horizontal_line">
											<div class="spacer1"></div>
											<div class="spacer2"></div>
										</div>
										<!-- /END HORIZONTAL LINE -->
										<!-- BUTTON -->
										<div class="panel ucg_button">
											<div class="container">
												<button class="btn ucg_button_confirm ucg_button_arrowed ucg_button_arrow_right" title="Confirm">STEP 2: QUESTIONS<span class="rightArrow"></span></button>
											</div>
										</div>
										<!-- /END BUTTON -->
									</form>
								</div>
							</div>
						</div>
					</div>
	
	
	
	
	
	
	
					<div class="panel grey">
						<div class="parsys contentpagewelcome-parsys">
							<div class="section">
								<div class="ucg_spacer" data-ucg-height-mobile="20" data-ucg-height="40"></div>
							</div>
						</div>
	
						<div class="parsys contentpagewelcome-parsys">
							<div class="parbase section textimage">
								<!-- TITLE -->
								<div class="panel ucg_title ucg_no_image">
									<div class="container">
										<div class="ucg_cols ucg_cols_text col-xs-12">
											<div class="ucg_title_container">
												<h2>From our official profiles</h2>
											</div>
											<div class="ucg_subtitle_container">
												<h4></h4>
											</div>
										</div>
										<div class="ucg_cols ucg_cols_image col-xs-12">
											<div class="ucg_title_image_container">
											</div>
										</div>
									</div>
								</div>
								<!-- /END TITLE -->
							</div>
						</div>
	
						<div class="parsys contentpagewelcome-parsys">
							<div class="section">
								<div class="ucg_spacer" data-ucg-height-mobile="20" data-ucg-height="40"></div>
							</div>
						</div>
	
						<!-- 3 COLUMN SOCIAL -->
						<div class="parsys_column three-columns-box clearfix">
							<div class="parsys_column three-columns-box-c0">
								<div class="panel ucg_social ucg_social_facebook">
									<div class="container">
										<div class="ucg_social_title">Unicredit champions facebook</div>
										<div class="ucg_social_image">
											<img alt="" src="img/social-facebook-c3.jpg">
										</div>
										<div class="clear visible-xs"></div>
										<div class="ucg_social_data">
											<span>21 November</span>
										</div>
										<div class="ucg_social_text">
											<p>We wish you a good weekend with this quote by Steven Gerrard... Click LIKE if you agree!</p>
										</div>
									</div>
									<div class="container">
										<div class="ucg_social_link">
											<a href="https://www.facebook.com/UniCreditChampionsIT" target="_blank">Become a fan</a>
										</div>
									</div>
								</div>
							</div>
							<div class="parsys_column three-columns-box-c1">
								<div class="panel ucg_social ucg_social_twitter no_image">
									<div class="container">
										<div class="ucg_social_title">@UniCredit_PR</div>
										<div class="ucg_social_image"></div>
										<div class="ucg_social_data">
											<span>28 November</span>
										</div>
										<div class="ucg_social_text">
											<p>
												<a class="tag" href="javascript:void(0);">#Cultura</a>: dal 28-11 c/o lo Spazio <a class="tag" href="javascript:void(0);">#Trento</a> UniCredit di Palazzo Firmian la mostra '<a class="tag" href="javascript:void(0);">#PAD</a>, PaesaggioArchitetturaDesign' <a class="shortLink" href="javascript:void(0);">http://goo.gl/NSMBDJ</a>
											</p>
										</div>
									</div>
									<div class="container">
										<div class="ucg_social_link">
											<a href="https://www.facebook.com/UniCreditChampionsIT" target="_blank">Follow us</a>
										</div>
									</div>
								</div>
							</div>
							<div class="parsys_column three-columns-box-c2">
								<div class="panel ucg_social ucg_social_youtube">
									<div class="container">
										<div class="ucg_social_title">Unicredit Channel</div>
										<div class="ucg_social_image">
											<a class="ucg_videoplayer_starter" href="javascript:void(0);">
												<!-- <img title="Go to video" alt="Go to video" src="img/static/videoplayer_play.png"> -->
											</a>
											<img alt="" src="img/social-youtube-c3.jpg">
										</div>
										<div class="clear visible-xs"></div>
										<div class="ucg_social_data">
											<span>28 November</span>
										</div>
										<div class="ucg_social_text">
											<p>UniCredit Tower.</p>
										</div>
									</div>
									<div class="container">
										<div class="ucg_social_link">
											<a href="https://www.facebook.com/UniCreditChampionsIT" target="_blank">Subscribe</a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- /END 3 COLUMN SOCIAL -->
	
						<div class="parsys contentpagewelcome-parsys">
							<div class="parbase section">
								<!-- SOCIAL FOOTER -->
								<div class="panel ucg_social_footer">
									<div class="container">
										<div class="ucg_social_title">
											<span class="col-xs-12">Follow UniCredit Group also on</span>
											<div class="ucg_social_others col-xs-12">
												<a href="javascript:void(0);" class="unicredit"></a>
												<a href="javascript:void(0);" class="twitter"></a>
												<a href="javascript:void(0);" class="linkedin"></a>
												<a href="javascript:void(0);" class="facebook"></a>
												<a href="javascript:void(0);" class="googleplus"></a>
												<a href="javascript:void(0);" class="pinterest"></a>
											</div>
										</div>
									</div>
								</div>
								<!-- SOCIAL FOOTER -->
							</div>
						</div>
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