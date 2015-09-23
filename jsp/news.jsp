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
	
	<jsp:include page="../includes/css.html"></jsp:include>
	
	<!-- SPECIFIC CSS START HERE -->
	
		<!--generic CSS for Parsys Column container-->
		<link type="text/css" rel="stylesheet" href="../css/ucg_parsys_column.css"/>

		<!-- SPACER COMPONENT -->
		<link type="text/css" rel="stylesheet" href="../css/ucg_spacer.css"/>
		<!-- BREADCRUMB -->
		<link type="text/css" rel="stylesheet" href="../css/ucg_breadcrumb.css"/>
		<link type="text/css" rel="stylesheet" href="../css/ucg_breadcrumb_links.css"/>
		<link type="text/css" rel="stylesheet" href="../css/ucg_sharing.css"/>
		<!-- HORIZONTAL LINE -->
		<link type="text/css" rel="stylesheet" href="../css/ucg_horizontal_line_component.css"/>
		<!-- TITLE COMPONENT -->
		<link type="text/css" rel="stylesheet" href="../css/ucg_title_component.css"/>
		<!-- IMAGE COMPONENT -->
		<link type="text/css" rel="stylesheet" href="../css/ucg_image_component.css"/>
		<!-- IMAGE TEXT COMPONENT -->
		<link type="text/css" rel="stylesheet" href="../css/ucg_image_text_component.css"/>
		<!-- LINKLIST COMPONENT -->
		<link type="text/css" rel="stylesheet" href="../css/ucg_link_component.css"/>
		<!-- LOADING SPINNER COMPONENT -->
		<link type="text/css" rel="stylesheet" href="../css/spinner.css"/>
		<!-- SWIPER COMPONENT -->
		<link type="text/css" rel="stylesheet" href="../plugin/css/idangerous.swiper.css"/>
		<!-- GALLERY COMPONENT -->
		<link type="text/css" rel="stylesheet" href="../css/ucg_gallery_component.css"/>
		<!-- VIDEO TEXT COMPONENT -->
		<link type="text/css" rel="stylesheet" href="../css/videoplayer.css"/>
		<link type="text/css" rel="stylesheet" href="../css/ucg_video_text_component.css"/>
		<!-- SOCIAL + SOCIAL FOOTER COMPONENT -->
		<link type="text/css" rel="stylesheet" href="../css/ucg_social.css"/>
		<!-- DATE BAR COMPONENT -->
		<link type="text/css" rel="stylesheet" href="../css/ucg_datebar.css"/>
	
	
	<!-- SPECIFIC CSS END HERE -->   
       
    <link type="text/css" rel="stylesheet" href="../css/retina.css"/>
	
	<jsp:include page="../includes/js.html"></jsp:include>
    
	<!-- SPECIFIC JS START HERE -->
		
		<!-- SPACER COMPONENT -->
		<script type="text/javascript" src="../js/ucg_spacer.js"></script>
		<!-- TITLE COMPONENT -->
		<script type="text/javascript" src="../js/ucg_title.js"></script>
		<!-- SWIPER COMPONENT -->
		<script type="text/javascript" src="../plugin/js/idangerous.swiper.js"></script>
		<!-- LOADING SPINNER COMPONENT -->
		<script type="text/javascript" src="../js/jquery.spinnerUBIS.js"></script>
		<!-- GALLERY COMPONENT -->
		<script type="text/javascript" src="../plugin/js/doT.min.js"></script>
		<script type="text/javascript" src="../plugin/js/heartcode-canvasloader.js"></script>
		<script type="text/javascript" src="../js/jquery.mediaGalleryUBIS.js"></script>
		<!-- VIDEO TEXT COMPONENT -->
		<script type="text/javascript" src="../js/videoplayer.js"></script>
		
	
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
	
				<!-- IMAGE GALLERY SCRIPTS -->
				<script type="text/javascript">
					function onYouTubeIframeAPIReady() {
						$('.ucg_gallery[data-galleryname="gallery"] .galleryContainer:not(.full)').mediaGalleryManager({
							galleryContainer: '.ucg_gallery[data-galleryname="gallery"]',
							name: "gallery",
							source: "../data/gallery.json",
							fullWindow:false
						 });
					}
					$(document).ready(function(){
						if($('script[src="//www.youtube.com/iframe_api"]').length==0){
							var tag = document.createElement('script');
							tag.src = "//www.youtube.com/iframe_api";
							var firstScriptTag = document.getElementsByTagName('script')[0];
							firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);
						}
					});
				</script>
				<!-- IMAGE GALLERY SCRIPTS -->
	
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
										<img class="arrow-down" alt="Arrow Down" src="../img/static/breadcrumb-share-down-arrow.png">
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
											<img alt="Cross" src="../img/static/breadcrumb-share-cross.png">
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
								<h1 class="singlePage">UniCredit and BNP Paribas finalize the sale of 81.4% majority shereholding in DAB Bank AG</h1>
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
	
				<div class="parsys contentpagewelcome-parsys">
					<div class="section">
						<div class="ucg_spacer" data-ucg-height-mobile="20" data-ucg-height="20"></div>
					</div>
				</div>
	
				<div class="parsys contentpagewelcome-parsys">
					<div class="section">
						<!-- DATE BAR -->
						<div class="panel ucg_datebar">
							<div class="container">
								<div class="simpleHeader">
									<div class="ucg_date col-xs-5 clearfix"><b>29 October</b> 2014 - h 11:00</div>
									<div class="categories right col-xs-7">
										<label class="investors">Investors</label>
									</div>
									<div class="clear"></div>
								</div>
							</div>
						</div>
						<!-- DATE BAR -->
					</div>
				</div>
	
				<div class="parsys contentpagewelcome-parsys">
					<div class="section">
						<div class="ucg_spacer" data-ucg-height-mobile="20" data-ucg-height="20"></div>
					</div>
				</div>
	
				<div class="parsys contentpagewelcome-parsys">
					<div class="section">
						<!-- IMAGE -->
						<div class="panel ucg_image">
							<div class="container">
								<div class="ucg_image_container">
									<img src="../img/LOcchio_Ferreras_landscape.png" alt="">
								</div>
							</div>
						</div>
						<!-- /END IMAGE -->
					</div>
				</div>
	
				<div class="parsys contentpagewelcome-parsys">
					<div class="section">
						<div class="ucg_spacer" data-ucg-height-mobile="20" data-ucg-height="20"></div>
					</div>
				</div>
	
				<div class="parsys contentpagewelcome-parsys">
					<div class="section">
						<!-- IMAGE TEXT -->
						<div class="panel ucg_image_text">
							<div class="container">
								<div class="ucg_txt">
									<p class="paragraphTitle">UniCredit is proud to sponsor "Nove Novembre. Berlino 1989: il suono dei muri che cadono," a November 9 concert at Turin's Teatro Regio that commemorates the 25th anniversary of the fall of the Berlin Wall. brating the 25th anniversary of the fall of the Berlin Wall.</p>
									<p class="paragraph">
										This extraordinary event, which opens the "Turin Meets Berlin" project, will feature cellist and composer Giovanni Sollima performing with 100 fellow cellists.
									</p>
									<p>
										Broadcast live on channel RAI5, the event will include remarks by writer Andrea Bajani and actress Michela Cescon, and incorporate compelling historic images and video.
									</p>
									<p class="paragraph">
										UniCredit strongly believes music is a universal language that facilitates dialogue between different people and cultures. For this reason, our bank supports musical endeavors across Europe, including this important initiative celebrating the 25th anniversary of the fall of the Berlin Wall. This tremendous concert brings UniCredit closer to two of its most important territories - Italy, with Turin, and Germany, with Berlin - and unites great music with triumphant history in the name of collaboration and development.
									</p>
								</div>
							</div>
						</div>
						<!-- /END IMAGE TEXT -->
					</div>
				</div>
	
				<div class="parsys_column onetwo-columns-box clearfix">
					<div class="parsys_column onetwo-columns-box-c0">
						<!-- VIDEO TEXT -->
						<div class="panel ucg_video_text">
							<div class="container">
								<div class="ucg_video">
									<a class="ucg_videoplayer_starter" href="javascript:void(0);" data-video="https://www.youtube.com/embed/j_kOGqFslos?autoplay=1&rel=0"></a>
									<img class="placeholder" src="../img/palace.png" alt="Student Career" title="Student Career">
								</div>
								<div class="ucg_txt">
									<p class="paragraphTitle">Video title</p>
								</div>
							</div>
						</div>
						<!-- /END VIDEO TEXT -->
					</div>
					<div class="parsys_column onetwo-columns-box-c1">
						<!-- IMAGE TEXT -->
						<div class="panel ucg_image_text">
							<div class="container">
								<div class="ucg_txt">
									<p class="paragraph">
										This extraordinary event, which opens the "Turin Meets Berlin" project, will feature cellist and composer Giovanni Sollima performing with 100 fellow cellists. Broadcast live on channel RAI5, the event will include remarks by writer Andrea Bajani and actress Michela Cescon, and incorporate compelling historic images and video.
									</p>
									<p>
										UniCredit strongly believes music is a universal language that facilitates dialogue between different people and cultures. For this reason, our bank supports musical endeavors across Europe, including this important initiative celebrating the 25th anniversary of the fall of the Berlin Wall.
									</p>
									<p>
										This tremendous concert brings UniCredit closer to two of its most important territories - Italy, with Turin, and Germany, with Berlin - and unites great music with triumphant history in the name of collaboration and development.
									</p>
								</div>
							</div>
						</div>
						<!-- /END IMAGE TEXT -->
					</div>
				</div>
	
				<div class="parsys contentpagewelcome-parsys">
					<div class="section">
						<!-- IMAGE TEXT -->
						<div class="panel ucg_image_text">
							<div class="container">
								<div class="ucg_txt">
									<p class="paragraph">
										UniCredit strongly believes music is a universal language that facilitates dialogue between different people and cultures. For this reason, our bank supports musical endeavors across Europe, including this important initiative celebrating the 25th anniversary of the fall of the Berlin Wall.
									</p>
									<p class="paragraph">
										This tremendous concert brings UniCredit closer to two of its most important territories - Italy, with Turin, and Germany, with Berlin - and unites great music with triumphant history in the name of collaboration and development.
									</p>
								</div>
							</div>
						</div>
						<!-- /END IMAGE TEXT -->
					</div>
				</div>
	
				<div class="parsys contentpagewelcome-parsys">
					<div class="section">
						<!-- IMAGE GALLERY -->
						<div class="panel ucg_gallery" data-galleryname="gallery">
							<div class="container">
								<div class="ucg_gallery_title">
									<h2>Gallery title</h2>
								</div>
								<div class="galleryWrapper">
									<div class="galleryContainer">
									</div>
								</div>
							</div>
						</div>
						<!-- IMAGE GALLERY -->
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
	
				<div class="parsys contentpagewelcome-parsys">
					<div class="section">
						<div class="ucg_spacer" data-ucg-height-mobile="20" data-ucg-height="20"></div>
					</div>
				</div>
	
				<div class="parsys contentpagewelcome-parsys">
					<div class="section">
						<!-- TITLE -->
						<div class="panel ucg_title underlined">
							<div class="container">
								<div class="ucg_title_image_container"></div>
								<div class="ucg_title_container">
									<h5>Attachments</h5>
								</div>
								<div class="ucg_subtitle_container"></div>
							</div>
						</div>
						<!-- /END TITLE -->
					</div>
				</div>
	
				<div class="parsys contentpagewelcome-parsys">
					<div class="section">
						<div class="ucg_spacer" data-ucg-height-mobile="20" data-ucg-height="20"></div>
					</div>
				</div>
	
				<div class="parsys contentpagewelcome-parsys">
					<div class="section">
						<!-- LINKLIST -->
						<div class="panel ucg_linklist">
							<div class="container">
								<ul class="ucg_link_container">
									<li class="ucg_download_link">
										<a href="javascript:void(0);"><b>PDF</b>  |  UniCredit SpA 2013 Reports and Accounts</a> (96kb)
									</li>
									<li class="ucg_download_link">
										<a href="javascript:void(0);"><b>PDF</b> | 2013 Consolidated Reports and Accounts</a> (301kb)
									</li>
								</ul>
							</div>
						</div>
						<!-- /END LINKLIST -->
					</div>
				</div>
				
	
				<div class="parsys contentpagewelcome-parsys">
					<div class="section">
						<div class="ucg_spacer" data-ucg-height-mobile="20" data-ucg-height="20"></div>
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
										<img alt="" src="../img/social-facebook-c3.jpg">
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
											<!--<img title="Go to video" alt="Go to video" src="../img/static/videoplayer_play.png">-->
										</a>
										<img alt="" src="../img/social-youtube-c3.jpg">
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
			
			<!-- PAGE END HERE -->
						
				<jsp:include page="../includes/footer.html"></jsp:include>
			</div>
		</div>
	</div>
</div>
</body>
</html>