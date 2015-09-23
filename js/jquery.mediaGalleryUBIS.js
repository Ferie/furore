/**
 * Plugin per la gestione della mediaGallery
 * 
 * Va inizializzato su uno o piu' galleryContainer
 * 
 */

(function($) {
	
	
	$.galleryPreloader = {
		spinnerManagers: Array(),
		getSpinnerBySelector: function(selector){
			var result = $.grep(this.spinnerManagers, function(element){
				return element.selector==selector;
			});
			return result.length>0 ? result[0].spinner : null;			
		},
		show:function(selector){
			this.spinnerManagers.push({selector: selector, spinner: $(selector).spinnerUBISManager({
				topElementSelector: selector,
				setElementsSelector: selector,
				idSpinner: 'spinner-loader-media-'+this.spinnerManagers.length,
				htmlMessage: '',
				textMessage: 'Loading ...',
				fontSize: '16px',
				autohide: false,
				modeInline: false,
				millisecondsTimer: 4000,
				color: "#00afd0",
				shape: 'UBIS',
				diameter: 40,
				density: 71,
				range: 2,
				fps: 25
				}) });
			var $spinner = this.getSpinnerBySelector(selector);
			if($spinner!=null) {
				$spinner.utils._startSpinner($spinner.st);				
			}
		},
		hide:function(selector){
			var $spinner = this.getSpinnerBySelector(selector);
			if($spinner!=null) {
				$spinner.utils._stopSpinner($spinner.st);
				this.spinnerManagers = this.spinnerManagers.filter(function(el){ return el.selector!=selector; });
			}
		}
	}
	/**
	 * Hack to correct the bug on the video showing inside the gallery
 	 * 
	 */
	$.safariYoutubeSliderHack = function(){
		$("body,window").height($("body,window").height()-1);
		$("body,window").height($("body,window").height+1);
	};
	
	var methods = {
		init : function (options){
			var defaults = {
				name: "mainGallery",
				galleryContainer: '.ucg_gallery:not(.modal)',
				gallerySelector: '.galleryContainer:not(.full)',
				$container: null,
				contentSwiper: null,
				containerModalSelector: '.ucg_gallery.modal .galleryContainer.full',
				$containerModal: null,
				contentSwiperModal: null,
				navEnabled: true,
				hiddenThumbs: false,
				openSlideNumber: 0,
				navSwiper: null,
				players: [],
				galleryTitle: "Gallery title",
				source: "../data/gallery.json",
				preloadedImageRange:1,//Carica n immagini prima e n immagini dopo quella corrente
				placeHolder:"../img/static/gallery-placeholder.jpg",
				host:"http://localhost:8080/unicredit-corporate",
				//mediaType is the  media type displayed by the gallery and the visualization order of the the types
				mediaType:{"YOUTUBE":"youtube","IMAGE":"image"},
				thumbSelectedImage:"../img/static/gallery-selected.png",
				imageCached:[],
				fullWindow:false
			};
			
			var st = $.extend(true, defaults, options); 
        	var $container = $(this), data = $container.data(st.name);
        	st.$container = $container;
        	st.$containerModal = $(st.containerModalSelector);
        	
        	
        	if(typeof data === "undefined"){
        		$container.data(st.name, {
        			target : $container,
        			st : st
        		});
        		
        		
        		$.galleryPreloader.show(st.galleryContainer+" "+st.gallerySelector);
        		
				$.when(utils._buildHtml(st)).then(function() {
					
					//st.openSlideNumber=utils._getCurrentIndexByHash(st);
        			var $imageArray=utils._getElementsWithRange(st,st.openSlideNumber,utils._getThumbElements(st)); 
        			$.when(utils._preloadImages(st,$imageArray)).then(function(){
                		
                		utils._initializeSwiper(st);
                		$.galleryPreloader.hide(st.galleryContainer+" "+st.gallerySelector);
                		
                		
        			});
        			
        		});
        		
        	}
        	
		}
	};
	
	var utils = {
			
		_getCurrentIndexByHash : function(st){
			var index=st.openSlideNumber;
			var hash=window.location.hash;
			if(hash){
				index=$("[data-hash]").index($("[data-hash='"+hash.split("#")[1]+"']"));
			}
			return index;
		},	
		_getThumbElements :function(st){
			var $imageArray=[];
			$.each(st.elements,function(){
				//if(this.type!=st.mediaType.YOUTUBE ){
					$imageArray.push(this.thumb);
				//}
			});
			
			return $imageArray;
		},
		/**
		 * 
		 */
		_getElementsWithRange : function (st,index,$imageArray){
			var indexes =[];
			indexes.push(index);
			for(var i=1;i<=st.preloadedImageRange;i++){
				indexes.push(index-i);
				indexes.push(index+i);
			}
			return  utils._getElements(st,indexes,utils._getThumbElements(st));
		},
		_getElements :function(st,indexes,$imageArray){
			var $imgArray=[]; 
			if($imageArray){
				$imgArray=$imageArray;
			}
			
			$.each(indexes,function(){
				if(st.elements[this]  && st.elements[this].type==st.mediaType.IMAGE){
					var src =st.elements[this].src;
					$imgArray.push(src);
				}
			});
			
			return $imgArray;
		},
		_preloadImages: function(st,$imageArray,defer){
			
			if(!defer || defer==null){
				defer = $.Deferred();
			}

			if($imageArray.length && $imageArray.length>0 ){
				if($.inArray($imageArray[0], st.imageCached )>0){
					utils._preloadImages(st,$imageArray.slice(1),defer);
				}else{
					preloader = new Image();
					preloader.src=$imageArray[0];
					
					//Inserisco l'icona di loader se è una img  e non una thumb
					var el = $("[data-src='"+$imageArray[0]+"']");
					if(el.is("[data-type-image]")){
						$.galleryPreloader.show(st.galleryContainer+" "+st.gallerySelector+" [data-src='"+$imageArray[0]+"']");
					}
					
					$.each($imageArray,function() {
						preloader.onload = function() {
							st.imageCached.push($imageArray[0]);
							utils._insertImageSrcAndRemoveLoader(st.galleryContainer+" "+st.gallerySelector, $imageArray[0]);
							utils._preloadImages(st,$imageArray.slice(1),defer);
						};
						preloader.onerror = function() {
							st.imageCached.push($imageArray[0]);
							utils._insertImageSrcAndRemoveLoader(st.galleryContainer+" "+st.gallerySelector, $imageArray[0]);
							utils._preloadImages(st,$imageArray.slice(1),defer);
						};
					});
				}
			}else{
				defer.resolve();
			}
			
			return defer.promise();
		},
		
		_insertImageSrcAndRemoveLoader : function(gallerySelector, src){
			var el =$("[data-src='"+src+"']");
			$("[data-src='"+src+"'] > img").prop("src",src);
			//Rimuovo il preload dopo una latenza
			if(el.is("[data-type-image]")){
				setTimeout($.proxy(function(){$.galleryPreloader.hide(gallerySelector+" [data-src='"+src+"']")}, el), 500);
			}
		},
		/**
		 *  read the json of the gallery and  Build the html if the gallery 
		 */	
		_buildHtml: function(st){
			 var defer = $.Deferred();
			 
			 request= $.ajax({
				 type: "GET",
				 url: st.source,
				 dataType: "json"
			 });
			 
			 request.done(function( data ) {
				 utils._buildElements(st,data);
				 if(data.infos && data.infos.title){
					 st.galleryTitle =  data.infos.title;
				 }
				 $(st.galleryContainer+" .ucg_gallery_title h2").text(st.galleryTitle);
				 $("#closeButton").click(function(){
					 utils._removeFullWindow(st);
				 });
				 defer.resolve();
			 });
			 request.fail(function( jqXHR, textStatus ) {
				 defer.resolve();
			 });
			 
			return  defer.promise();
			
		},
		_buildElements:function(st,jsonGallery){
			st.elements=[];
			
			if(jsonGallery.elements && jsonGallery.elements.length>0){
//				$.each(jsonGallery.galleryElements,function(){
//					var el={};
//					//el.src= "http://www.youtube.com/watch?v="+ utils._getYoutubeVideoId($.parseHTML(this.embed)[0].src);
//					el.src= this.src;
//					el.thumb=null;
//					el.type=st.mediaType.YOUTUBE;
//					el.id=this.itemId;
//					el.description=this.description;
//					//el.index=st.galleryElements.length+1;
//					st.galleryElements.push(el);
//				});
				st.elements = jsonGallery.elements;
			}
			
//			if(jsonGallery.photogallery && jsonGallery.photogallery.length>0){
//				$.each(jsonGallery.photogallery,function(){
//					var el={};
//					el.src=st.host+this.full;
//					el.thumb=st.host+this.small;
//					el.type=st.mediaType.IMAGE;
//					el.id=this.itemId;
//					el.description=this.description;
//					//el.index=st.galleryElements.length+1;
//					st.galleryElements.push(el);
//				});
//			}

//			var footer = "<div class='footer'>"+
//	    		"<div class='text'>"+
//	    		"</div>"+
//	    		"<div class='fullScreenToggle'></div>"+
//	    		"<div class='thumbToggle'></div>"+
//	    		"</div>";
		
			//****Scafolfing****////			
			var arrows ="<div class='arrowContainer'>"
			if (utils._isIe()){
				arrows += "<iframe class='arrow arrow-left' frameborder='0'></iframe>";				
			}
			arrows += "<a class='arrow arrow-left' href='#'></a>";
			if (utils._isIe()){
				arrows += "<iframe class='arrow arrow-right' frameborder='0'></iframe>";				
			}
			arrows += "<a class='arrow arrow-right' href='#'></a>";
			arrows += "</div>"
			st.$container.append($("<div class='swiper-container swiper-content'>").append($("<div class='swiper-wrapper'>")));
			st.$container.append($("<div class='bottomGalleryBar'>").append($(arrows)).append($("<div class='swiper-container swiper-nav thumb-list'>").append($("<div class='swiper-wrapper'>")).append($("<div class='thumbArrow'>"+
							"<a class='arrow arrow-left' href='#'></a>"+
							"<a class='arrow arrow-right' href='#'></a>"+
							"</div>")))).append("<div class='clear'></div>");
			
			//st.$container.append($(footer));
			//****Scafolfing****////
			
			//****Templating***//
			var footerSlideTemplate = "<div class='slide-footer'>";
			if (utils._isIe()){
				footerSlideTemplate += "<iframe class='slide-footer-container' frameborder='0'></iframe>";				
			}
			footerSlideTemplate+= "<div class='slide-footer-container'>" +
							"<div class='indexer'><b>{{=it.index}}</b> of <b>"+st.elements.length+"</b></div>" +
							"<h5>{{=it.description}}</h5>" +
							"<div class='view-full'><a href='javascript:void(0);' data-index='{{=it.index}}' class='fullscreen'></a></div>" +
							"</div>" +
						"</div>";
			//var imageTemplateFn=doT.template("<div class='swiper-slide' data-type-image data-slide-text='{{=it.description}}' data-hash='{{=it.id}}' data-src='{{=it.src}}'><img class='img-responsive' src='"+st.placeHolder+"' alt='' title=''></div>");
			var imageTemplateFn=doT.template("<div class='swiper-slide' data-type-image data-slide-text='{{=it.description}}' data-src='{{=it.src}}'>" +
							"<img class='img-responsive' src='"+st.placeHolder+"' alt='' title=''>"+
							footerSlideTemplate +
							"</div>");
			//var videoTemplateFn=doT.template("<div class='swiper-slide video-player' data-slide-text='{{=it.description}}' data-hash='{{=it.id}}' ><div id='video-{{=it.id}}' data-target-video data-video-url='{{=it.src}}' data-video-cover=''></div></div>");
			var youtubeStringTemplate="<div class='swiper-slide video-youtube' data-slide-text='{{=it.description}}' data-videoname='"+st.name+"_video_{{=it.index}}'><div class='youtube-video-container'>";
//			if(!utils._isIe()){	
				youtubeStringTemplate+="<div class='youtube-layer top' >&nbsp;</div><div class='youtube-layer bottom' >&nbsp;</div>"+
				"<div class='youtube-layer left' >&nbsp;</div><div class='youtube-layer right' >&nbsp;</div><!--<div class='youtube-layer button' >&nbsp;</div>-->";
//			} else {
//				youtubeStringTemplate+="<iframe class='youtube-layer top' frameborder='0'>&nbsp;</iframe><iframe class='youtube-layer bottom' frameborder='0'>&nbsp;</iframe>"+
//				"<iframe class='youtube-layer left' frameborder='0'>&nbsp;</iframe><iframe class='youtube-layer right' frameborder='0'>&nbsp;</iframe><!--<iframe class='youtube-layer button' frameborder='0'>&nbsp;</iframe>-->";
//			}
			var typeRes = getVideoTypeRes();
			
			//youtubeStringTemplate+="<iframe width='{{=it.sizes."+typeRes+".width}}' height='{{=it.sizes."+typeRes+".height}}' src='{{=it.src}}' frameborder='0' allowfullscreen id='"+st.name+"_video_{{=it.index}}'></iframe>";
			youtubeStringTemplate+="<div class='player-box' data-index='{{=it.index}}' data-src='{{=it.src}}"+(utils._isIe()?"?wmode=transparent":"")+"' id='"+st.name+"_video_{{=it.index}}'></div>";
			youtubeStringTemplate+="</div>"+footerSlideTemplate+"</div>";
			var youtubeTemplateFn=doT.template(youtubeStringTemplate);
			
			var thumbTemplate="<div class='swiper-slide active-nav'>"+
				"<img class='img-responsive thumb' src='{{=it.thumb!=null?it.thumb:''}}'>" + 
				"<img class='img-responsive selected' src='"+st.thumbSelectedImage+"' >"+
			"</div>";
			var thumbTemplateFn = doT.template(thumbTemplate);
			
			var mediaContainer=st.$container.find(".swiper-container.swiper-content > .swiper-wrapper");
			var thumbContainer=st.$container.find(".swiper-container.swiper-nav.thumb-list > .swiper-wrapper");
			$.each(st.elements,function(){
				switch(this.type) {
			    case st.mediaType.IMAGE:
			    	mediaContainer.append(imageTemplateFn(this));
			        break;
//			    case st.mediaType.VIDEO:
//			    	mediaContainer.append(videoTemplateFn(this));
//			        break;
			    case st.mediaType.YOUTUBE:
			    	mediaContainer.append(youtubeTemplateFn(this));
			    	var name = st.name+"_video_"+this.index;
			    	var $videoContainer = $(mediaContainer).find('.video-youtube[data-videoname="'+name+'"]')
			    	$videoContainer.data("sizes", this.sizes);
//			    	$(mediaContainer).find('.video-youtube[data-videoname="video_'+this.index+'"]').data("sizes", this.sizes).data("player",
//			    			new YT.Player(
//			    					"video_"+this.index,	{
//		        					videoId: utils._getYoutubeVideoId(this.src),
//		        					events: {
//				        	            'onReady': function(){console.log("Ready!");},
//				        	            'onStateChange': function(){console.log("Change!");}
//				        	          }
//								}
//		        			));	
//			    	$(mediaContainer).find('.video-youtube[data-videoname="video_'+this.index+'"]').data({
//			    		"sizes": this.sizes,
//			    		"player": new YT.Player(
//			    					"video_"+this.index,	{
//		        					videoId: utils._getYoutubeVideoId(this.src),
//		        					events: {
//				        	            'onReady': function(){console.log("Ready!");},
//				        	            'onStateChange': function(){console.log("Change!");}
//				        	          	}
//			    					})
//			    		}
//			    	);
			    	st.players[name] =  new YT.Player(
			    					name,	{
		        					videoId: utils._getYoutubeVideoId(this.src),
		        					wmode: (utils._isIe()?"transparent":"opaque"),
		        					height: this.sizes[typeRes].height,
		        					width: this.sizes[typeRes].width,
		        					events: {
				        	            'onStateChange': function (event) {
				        	            	var $videoContainer = $('.video-youtube[data-videoname="'+name+'"]');
				        	            	//var $layers = $videoContainer.find('.youtube-layer:not(.button)');
				        	                if (event.data == YT.PlayerState.PLAYING || 
				        	                	event.data == YT.PlayerState.BUFFERING ) {
				        	                	$videoContainer.addClass("playing");
				        	                	//$layers.css("z-index", "0");
				        	                  } else {
					        	                	$videoContainer.removeClass("playing");
					        	                	//$layers.css("z-index", "3");				        	                	  
				        	                  }
				        	                }
				        	          	}
			    					});
			    	//st.players[name];
			        break;
			        
			    default:
			    	break;
		        
				}	 
				thumbContainer.append(thumbTemplateFn(this));
			});
			
		},
		
		_getYoutubeVideoId: function(url){
		    if(url.match(/youtube\.com\/watch\?v=([^\&\?\/]+)/) != null){
		     var idVid =  url.match(/youtube\.com\/watch\?v=([^\&\?\/]+)/)[1];
		    } else if(url.match(/youtube\.com\/v\/([^\&\?\/]+)/) != null){
		     var idVid = url.match(/youtube\.com\/v\/([^\&\?\/]+)/)[1];
		    } else if(url.match(/youtube\.com\/embed\/([^\&\?\/]+)/) != null){
		     var idVid = url.match(/youtube\.com\/embed\/([^\&\?\/]+)/)[1];
		    } else if(url.match(/youtu\.be\/([^\&\?\/]+)/) != null){
		     var idVid =  url.match(/youtu\.be\/([^\&\?\/]+)/)[1];
		    } else {
		     return '';
		    }
		    return idVid;
		   },
		/**
		 * Funzione che si occupa di inizializzare gli swiper.
		 * 
		 * @param st
		 */
		_initializeSwiper: function(st){
			var $cont = st.$container;
			
			if($cont.find('.swiper-nav').length == 0){
				st.navEnabled = false;
			}
			
			
			if(st.navEnabled){
				if(st.hiddenThumbs){
					$cont.find('.swiper-nav').css('visibility','hidden');
				}
				
				st.navSwiper = $cont.find('.swiper-nav').swiper({
			    	calculateHeight:true,
			    	visibilityFullFit:true,
					autoResize: true,
					resizeReInit: true,
					slidesPerView:'auto',
					onSlideClick:function(){
						st.contentSwiper.swipeTo(st.navSwiper.clickedSlideIndex);
					},
					onFirstInit:function(){
						if(st.hiddenThumbs){
							$cont.find('.swiper-nav').css('display','none');
							$cont.find('.swiper-nav').css('visibility','');
						}
					},
					onSlideChangeEnd:function(swiper, direction){
						var thumbsPerNav=$(".swiper-nav .swiper-slide.swiper-slide-visible").length+$(".swiper-nav .swiper-slide.swiper-slide-active").length;
						var activeNav = $(".swiper-nav .swiper-slide.swiper-slide-active");
						
						if(activeNav.index()<1){
							$cont.find('.swiper-nav .arrow-left').css("display","none");
						}else{
							$cont.find('.swiper-nav .arrow-left').css("display","block");
						}
						
						if((activeNav.index()+thumbsPerNav)>=(swiper.slides.length)){
							$cont.find('.swiper-nav .arrow-right').css("display","none");
						}else{
							$cont.find('.swiper-nav .arrow-right').css("display","block");
						}
					}
			    });
				$('.thumbArrow .arrow-left').on('click', function(e){
				    e.preventDefault();
				    st.navSwiper.swipePrev();
				});
			    $('.thumbArrow .arrow-right').on('click', function(e){
				    e.preventDefault();
				    st.navSwiper.swipeNext();
			    });
			}
			
			st.contentSwiper = $cont.find('.swiper-content').swiper({
				calculateHeight:true,
				simulateTouch:true,
				hashNav: true,
				autoResize: true,
				resizeReInit: true,
				onInit: function(swiper){
					$('.ucg_gallery .swiper-content .swiper-slide.video-youtube .youtube-video-container > iframe').each(function(i, e){
						var vMargin = ($(this).parent().outerHeight()-$(this).height())/2;
						var oMargin = ($(this).parent().outerWidth()-$(this).width())/2;
						$(this).css({margin: vMargin+"px "+oMargin+"px"});
					});
					utils._slideChangeActions(st, swiper);
					utils._manageSwiperArrow(st,swiper);
					if(st.openSlideNumber!=0){
						swiper.swipeTo(st.openSlideNumber);
					}
//					$('.ucg_gallery .swiper-slide.video-youtube').each(function(i, e){
//							$(e).data({"stop": function(){
////								var layers = $(this).parent().find('.youtube-layer:not(.button)');
////								$(layers).css("z-index", "3");
////								var $iframe  =$(e).find('iframe');
////								$(e).removeClass("playing");
////								var swap = toStop = $iframe.attr("src");
////								if (swap.indexOf("?autoplay")>0){
////									toStop = swap.substring(0, swap.indexOf("?"));
////								}
////								console.log(toStop);
////								$iframe.attr("src", "").attr("src", toStop);	
//							}, "play": function(){
//								
//								//console.log($(e).find('iframe'));
////								var layers = $(this).parent().find('.youtube-layer:not(.button)');
////								$(layers).css("z-index", "0");
////								$(e).addClass("playing");
////								var $iframe  =$(e).find('iframe');
////								var swap = toPlay = $iframe.attr("src");
////								if (swap.indexOf("?autoplay")<0){
////									var toPlay = swap+"?autoplay=1";
////								}
////								console.log(toPlay);
////								$iframe.attr("src", "").attr("src", toPlay);	
//							}, "doneClick": function(){
////								var $iframe  =$(e).find('iframe');
////								if($(e).hasClass("playing")){
////									$iframe.trigger("click");
////								}	
//							}
//						});
//					});
//					$('.ucg_gallery .swiper-slide.video-youtube .youtube-layer:not(.button)').off("click");
//					$('.ucg_gallery .swiper-slide.video-youtube .youtube-layer:not(.button)').click(function(e){
//						$(this).parents(".video-youtube").data().doneClick();
//					});
//					$('.ucg_gallery .swiper-slide.video-youtube .youtube-layer.button').off("click");
//					$('.ucg_gallery .swiper-slide.video-youtube .youtube-layer.button').click(function(e){
//						//e.preventDefault();
//						//e.stopPropagation();
//						console.log("Click Play");
//						var $player = $(this).parents(".video-youtube");
//						//$(this).parents(".video-youtube").data().doneClick();
//						if (!$player.hasClass("playing")){
//							$player.data().play();
//						} else {
//							$player.data().stop();
//						}
//					});
					
				},
				onSlideChangeStart:function(swiper, direction){
					$('.ucg_gallery .swiper-slide.video-youtube').each(function(i, e){
						if ($(e).hasClass("playing")){
							st.players[$(e).data("videoname")].pauseVideo();
						}
					});
					utils._slideChangeActions(st, swiper);
				},
				onSlideChangeEnd:function(swiper, direction){
					//Stoppo i player
//					$(st.players).each(function(){
//						$(this)[0].play(false);
//					});
					
					utils._preloadImages(st,utils._getElementsWithRange(st,swiper.activeIndex));
					$.safariYoutubeSliderHack();
					utils._manageSwiperArrow(st,swiper);
				}
			});
			
			$cont.find('.arrowContainer .arrow-left').on('click', function(e){
			    e.preventDefault();
			    st.contentSwiper.swipePrev();
			});
			$cont.find('.arrowContainer .arrow-right').on('click', function(e){
			    e.preventDefault();
			    st.contentSwiper.swipeNext();
		    });
			$cont.find('.swiper-slide .slide-footer .fullscreen').off('click');
			$cont.find('.swiper-slide .slide-footer .fullscreen').click(function(){
				var index = $(this).data("index")-1;
				st.openSlideNumber = $(this).data("index")-1;
				var $modalWindow = st.$containerModal.parents('.ucg_gallery.modal');
				var modalSource = st.source;
				$('.ucg_gallery .swiper-slide.video-youtube').each(function(i, e){
					if ($(e).hasClass("playing")){
						st.players[$(e).data("videoname")].stopVideo();
					}
				});
//				$('.ucg_gallery:not(.modal) .swiper-slide.video-youtube .youtube-video-container > iframe').each(function(){
//					var swap = $(this).attr("src");
//					$(this).attr("src", "").attr("src", swap);					
//				});
				//$modalWindow.modal({backdrop: "static"});
				$modalWindow.modal();
				$modalWindow.off("shown.bs.modal");
				$modalWindow.on("shown.bs.modal", function(){					
					st.$containerModal.mediaGalleryManager({galleryContainer: ".ucg_gallery.modal", gallerySelector: ".galleryContainer.full", name: "modal_"+st.name, source: modalSource, hiddenThumbs: true, fullWindow:false, openSlideNumber: index});
					
				});
			});
			$('.ucg_gallery.modal .swiper-slide .slide-footer .fullscreen, .ucg_gallery.modal .modal-header .close-modal-gallery').off("click");
			$('.ucg_gallery.modal .swiper-slide .slide-footer .fullscreen, .ucg_gallery.modal .modal-header .close-modal-gallery').click(function(){
				var $mC = st.$containerModal.data(st.name);
				var $modalWindow = st.$containerModal.parents('.ucg_gallery.modal');
				$mC.st.contentSwiper.destroy();
				$mC.st.navSwiper.destroy();
				$mC.st.$container.html("");
				st.$containerModal.removeData(st.name);
				$modalWindow.modal("hide");
				//console.log($mC);
			});
//			$cont.find('.swiper-slide .slide-footer .fullscreen, .ucg_gallery.modal .modal-header .close-modal-gallery').click(function(){
//				
//			});
//			$cont.find('.thumbToggle').click(function(){
//				$cont.find('.thumb-list').stop();
//				$cont.find('.thumb-list').slideToggle(500);
//				$cont.find('.arrowContainer').each(function(){
//					//alert($(this).hasClass('arrowUp') ? "-50px" : "150px");
//					$(this).toggleClass('arrowUp').animate({top: ($(this).hasClass('arrowUp') ? "-=120" : "+=120")}, 500);
//				});
//				st.navSwiper.resizeFix();
//			});
			
			$(window).resize(function(){
				utils._resizeSwipers(st);
				//utils._resizeShare(st);
    		});
			$("#mainContainer").on("animationSidebarCompleted",function(){
				if($(this).hasClass("with-sidebar-open")){
					utils._resizeSwipers(st);					
				}
				//utils._resizeShare(st);
    		});
			$('#mainContainer').on("animationSidebarCompleted", function(){
				//if($(this).hasClass("with-sidebar-opened")){
					
					utils._resizeSwipers(st);
					//utils._resizeShare(st);				
				//}
			});
			//utils._resizeSwipers(st);
			
		},
		
		_manageSwiperArrow :function(st,swiper){
			var $cont = st.$container;
			if(swiper.activeIndex==0){
				$cont.find('.arrow-left').css("display","none");
			}else{
				$cont.find('.arrow-left').css("display","block");
			}
			
			if(swiper.activeIndex==(swiper.slides.length-1)){
				$cont.find('.arrow-right').css("display","none");
			}else{
				$cont.find('.arrow-right').css("display","block");
			}
		},
		_resizeSwipers :function(st){
			//st.contentSwiper.resizeFix();
			//st.navSwiper.resizeFix();
//			var videos = st.$container.find(".swiper-slide.video-youtube");
//			$.each(videos, function(i, e){
//				var sizes = $(this).data("sizes");
//				var typeRes = getVideoTypeRes();
//				$(this).find("iframe").attr("height", sizes[typeRes].height).attr("width", sizes[typeRes].width);
//			});
			st.$container.find(".swiper-slide.video-youtube").each(function(i, e){
				var sizes = $(this).data("sizes");
				var typeRes = getVideoTypeRes();
				$(this).find("iframe").attr("height", sizes[typeRes].height).attr("width", sizes[typeRes].width);
			});
			st.contentSwiper.reInit();
			st.navSwiper.reInit();
		},
		_resizeShare :function(st){
			//st.$container.find(".shareContainer").css("height", $(window).height()+"px");
		},
		
		/**
		 * Funzione che si occupa di sincronizzare la posizione del "navSwiper"
		 * con la slide mostrata correntemente nel "contentSwiper".
		 * 
		 * @param st
		 */
		_updateNavPosition: function(st,swiper){
			var $cont = st.$container;
			
			$cont.find('.swiper-nav .active-nav').removeClass('active-nav');
	    	var activeNav = $cont.find('.swiper-nav .swiper-slide').eq(swiper.activeIndex).addClass('active-nav');
	    	
	    	slideNumber = Math.floor($cont.find('.swiper-slide-visible').length / 2);
	    	
	    	if(activeNav.index() < slideNumber){
	    		slideNumber = 0;
	    	}else{
	    		slideNumber = activeNav.index() - slideNumber;
	    	}
	    	
			st.navSwiper.swipeTo(slideNumber);
		},
		
		/**
		 * Metodo che gestisce le azioni sul cambio slide (e visualizzazione prima slide).
		 * @param st
		 */
		_slideChangeActions: function(st, swiper){
			if(st.navEnabled){
				utils._updateNavPosition(st,swiper);
			}
		},
		
		_openFullWindow: function(st){
			var $cont = st.$container;			
			$("body>*:not(.loader-container)").wrapAll("<div id='page-layer'></div>");
			//$("body").wrapInner("<div id='page-layer'></div>");
			$("#page-layer").after($cont.detach());
			$cont.addClass("full-window");
			utils._resizeSwipers(st);
    		
		},
		_removeFullWindow: function(st){
			var $cont = st.$container;
			$("#page-layer").find(".galleryWrapper").append($cont.detach());
			$("#page-layer").contents().unwrap();
			$cont.removeClass("full-window");
			utils._resizeSwipers(st);
		},
		
		_isIe :function(){
			return ((navigator.userAgent.indexOf("MSIE") != -1) ||  (navigator.userAgent.indexOf("rv:11") != -1));
		},
		_isTouch :function(){
			return  !$("html").hasClass("galleryno-touch");
		}
	};
	
	
	$.fn.mediaGalleryManager = function(method) {
        if (methods[method]) {
            return methods[method].apply(this, Array.prototype.slice.call(arguments, 1));
        } else if (typeof method === 'object' || !method) {
            return methods.init.apply(this, arguments);
        } else {
            $.error( 'Method "' +  method + '" does not exist in mediaGalleryManager plugin!');
        }
    };
})(jQuery);