<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="it">
<head>
	<meta charset="utf-8"> 
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Image Gallery Component</title>
	
	<jsp:include page="includes/css.html"></jsp:include>
	
	<!-- SPECIFIC CSS START HERE -->
    <link type="text/css" rel="stylesheet" href="plugin/css/idangerous.swiper.css"/>
	<!--generic CSS for Parsys Column container -->
	<link type="text/css" rel="stylesheet" href="css/ucg_parsys_column.css"/>
	<!--specific CSS for Image Gallery Component-->
	<link type="text/css" rel="stylesheet" href="css/ucg_gallery_component.css"/>
	
    <link type="text/css" rel="stylesheet" href="css/spinner.css"/>
	
	
	<!-- SPECIFIC CSS END HERE -->    
       
    <link type="text/css" rel="stylesheet" href="css/retina.css"/>
	
	<jsp:include page="includes/js.html"></jsp:include>
    
	<!-- SPECIFIC JS START HERE -->
    <script type="text/javascript" src="plugin/js/idangerous.swiper.js"></script>
	<script type="text/javascript" src="plugin/js/heartcode-canvasloader.js"></script>
	<script type="text/javascript" src="plugin/js/doT.min.js"></script>
	<script type="text/javascript" src="js/jquery.spinnerUBIS.js"></script>
	<script type="text/javascript" src="js/jquery.mediaGalleryUBIS.js"></script>
		
	
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
				<!-- Modal -->
				<div class="ucg_gallery_modal_container">
					<div class="ucg_gallery modal fade" tabindex="-1" role="dialog" aria-labelledby="ucg_gallery_modal" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
						        	<div class="ucg_gallery_title">
						        		<h2>Gallery title</h2>
						        		<a href="javascript:void(0);" class="close-modal-gallery"></a>
						        	</div>
									
								</div>
								<div class="modal-body">
							        <div class="galleryWrapper">
							        	<div class="galleryContainer full">
							        	</div>
						        	</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- End Modal -->
				<!-- IMAGE GALLERY SCRIPTS -->
				 <script type="text/javascript">
			        	//var players = Array()
		        		function onYouTubeIframeAPIReady() {
			        		$('.ucg_gallery[data-galleryname="gallery"] .galleryContainer:not(.full)').mediaGalleryManager({
			    				galleryContainer: '.ucg_gallery[data-galleryname="gallery"]',
			    				name: "gallery",
			    				source: "data/gallery.json",
			        			fullWindow:false
			        			});
		
			        		$('.ucg_gallery[data-galleryname="gallery2"] .galleryContainer:not(.full)').mediaGalleryManager({
			    				galleryContainer: '.ucg_gallery[data-galleryname="gallery2"]',
			    				name: "gallery2",
			    				source: "data/gallery2.json",
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
						<!-- IMAGE GALLERY -->		
						<div class="panel ucg_gallery" data-galleryname="gallery2">
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
				
			
			<!-- PAGE END HERE -->
						
				<jsp:include page="includes/footer.html"></jsp:include>
			</div>
		</div>
	</div>
</div>
</body>
</html>