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
			return typeof result[0].selector!="undefined"?result[0].spinner:null;			
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
			$spinner.utils._startSpinner($spinner.st);
		},
		hide:function(selector){
			var $spinner = this.getSpinnerBySelector(selector);
			$spinner.utils._stopSpinner($spinner.st);
			this.spinnerManagers = this.spinnerManagers.filter(function(el){ return el.selector!=selector; });
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
				$container: null,
				contentSwiper: null,
				navEnabled: true,
				hiddenThumbs: false,
				navSwiper: null,
				players: [],
				galleryTitle: "Gallery title",
				source: "/unicredit-corporate/data/gallery.json",
				preloadedImageRange:1,//Carica n immagini prima e n immagini dopo quella corrente
				placeHolder:"img/static/media-gallery-placeholder.jpg",
				host:"http://localhost:8080/unicredit-corporate",
				//mediaType is the  media type displayed by the gallery and the visualization order of the the types
				mediaType:{"YOUTUBE":"youtube","IMAGE":"image"},
				thumbSelectedImage:"img/static/media-gallery-selected.png",
				imageCached:[],
				fullWindow:false
			};
			
			var st = $.extend(true, defaults, options); 
        	var $container = $(this), data = $container.data('mediaGalleryManager');
        	st.$container = $container;
        	
        	
        	if(typeof data === "undefined"){
        		$container.data('mediaGalleryManager', {
        			target : $container,
        			st : st
        		});
        		
        		
        		$.galleryPreloader.show(".ucg_gallery");
        		
				$.when(utils._buildHtml(st)).then(function() {
					
					var currentIndex=utils._getCurrentIndexByHash();
        			var $imageArray=utils._getElementsWithRange(st,currentIndex,utils._getThumbElements(st)); 
        			$.when(utils._preloadImages(st,$imageArray)).then(function(){
                		
                		utils._initializeSwiper(st);
                		//utils._initVideoPlayers(st);
                		$.galleryPreloader.hide(".ucg_gallery");
                		
                		
        			});
        			
        		});
        		
        	}
        	
		}
	};
	
	var utils = {
			
		_getCurrentIndexByHash : function(){
			var index=0;
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
						$.galleryPreloader.show(".ucg_gallery [data-src='"+$imageArray[0]+"']");
					}
					
					$.each($imageArray,function() {
						preloader.onload = function() {
							st.imageCached.push($imageArray[0]);
							utils._insertImageSrcAndRemoveLoader($imageArray[0]);
							utils._preloadImages(st,$imageArray.slice(1),defer);
						};
						preloader.onerror = function() {
							st.imageCached.push($imageArray[0]);
							utils._insertImageSrcAndRemoveLoader($imageArray[0]);
							utils._preloadImages(st,$imageArray.slice(1),defer);
						};
					});
				}
			}else{
				defer.resolve();
			}
			
			return defer.promise();
		},
		
		_insertImageSrcAndRemoveLoader : function(src){
			var el =$("[data-src='"+src+"']");
			$("[data-src='"+src+"'] > img").prop("src",src);
			//Rimuovo il preload dopo una latenza
			if(el.is("[data-type-image]")){
				setTimeout($.proxy(function(){$.galleryPreloader.hide(".ucg_gallery [data-src='"+src+"']")}, el), 500);
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
				 $(".ucg_gallery .ucg_gallery_title h2").text(st.galleryTitle);
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

			var footer = "<div class='footer'>"+
	    		"<div class='text'>"+
	    		"</div>"+
	    		"<div class='fullScreenToggle'></div>"+
	    		"<div class='thumbToggle'></div>"+
	    		"</div>";
		
			//****Scafolfing****////			
					
			st.$container.append($("<div class='swiper-container swiper-content'>").append($("<div class='swiper-wrapper'>")));
			st.$container.append($("<div class='bottomGalleryBar'>").append($("<div class='arrowContainer'>"+
					"<a class='arrow arrow-left' href='#'></a>"+
					"<a class='arrow arrow-right' href='#'></a>"+
					"</div>")).append($("<div class='swiper-container swiper-nav thumb-list'>").append($("<div class='swiper-wrapper'>")).append($("<div class='thumbArrow'>"+
							"<a class='arrow arrow-left' href='#'></a>"+
							"<a class='arrow arrow-right' href='#'></a>"+
							"</div>"))));
			
			st.$container.append($(footer));
			//****Scafolfing****////
			
			//****Templating***//
			var footerSlideTemplate = "<div class='slide-footer'>" +
							"<div class='slide-footer-container'>" +
							"<div><b>{{=it.index}}</b> of <b>"+st.elements.length+"</b></div>" +
							"<h5>{{=it.description}}</h5>" +
							"<div class='view-full'><a href='{{=it.src}}' class='fullscreen'><a></div>" +
							"</div>" +
						"</div>";
			//var imageTemplateFn=doT.template("<div class='swiper-slide' data-type-image data-slide-text='{{=it.description}}' data-hash='{{=it.id}}' data-src='{{=it.src}}'><img class='img-responsive' src='"+st.placeHolder+"' alt='' title=''></div>");
			var imageTemplateFn=doT.template("<div class='swiper-slide' data-type-image data-slide-text='{{=it.description}}' data-src='{{=it.src}}'>" +
							"<img class='img-responsive' src='"+st.placeHolder+"' alt='' title=''>"+
							footerSlideTemplate +
							"</div>");
			//var videoTemplateFn=doT.template("<div class='swiper-slide video-player' data-slide-text='{{=it.description}}' data-hash='{{=it.id}}' ><div id='video-{{=it.id}}' data-target-video data-video-url='{{=it.src}}' data-video-cover=''></div></div>");
			//var youtubeStringTemplate="<div class='swiper-slide video-youtube' data-slide-text='{{=it.description}}' data-hash='{{=it.id}}'>";
			var youtubeStringTemplate="<div class='swiper-slide video-youtube' data-slide-text='{{=it.description}}'>";
			if(utils._isTouch()){	
				youtubeStringTemplate+="<div class='youtube-layer top' >&nbsp;</div><div class='youtube-layer bottom' >&nbsp;</div>"+
				"<div class='youtube-layer left' >&nbsp;</div><div class='youtube-layer right' >&nbsp;</div>";
			}
			youtubeStringTemplate+="<iframe width='100%' height='100%' src='{{=it.src}}' frameborder='0' allowfullscreen></iframe>"+footerSlideTemplate+"</div>";
			var youtubeTemplateFn=doT.template(youtubeStringTemplate);
			
			var thumbTemplate="<div class='swiper-slide active-nav'>"+
				"<img class='img-responsive thumb' src='{{=it.thumb!=null?it.thumb:''}}'>" + 
				"<img class='img-responsive selected' src='"+st.thumbSelectedImage+"' >"+
			"</div>";
			var thumbTemplateFn = doT.template(thumbTemplate);
			
			var mediaContainer=$(".swiper-container.swiper-content > .swiper-wrapper");
			var thumbContainer=$(".swiper-container.swiper-nav.thumb-list > .swiper-wrapper");
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
				onInit: function(swiper){
					utils._slideChangeActions(st, swiper);
					utils._manageSwiperArrow(st,swiper);
				},
				onSlideChangeStart:function(swiper, direction){
					utils._slideChangeActions(st, swiper);
				},
				onSlideChangeEnd:function(swiper, direction){
					//Stoppo i player
					$(st.players).each(function(){
						$(this)[0].play(false);
					});
					
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
			$cont.find('.thumbToggle').click(function(){
				$cont.find('.thumb-list').stop();
				$cont.find('.thumb-list').slideToggle(500);
				$cont.find('.arrowContainer').each(function(){
					//alert($(this).hasClass('arrowUp') ? "-50px" : "150px");
					$(this).toggleClass('arrowUp').animate({top: ($(this).hasClass('arrowUp') ? "-=120" : "+=120")}, 500);
				});
				st.navSwiper.resizeFix();
			});
			
			$(window).resize(function(){
				utils._resizeSwipers(st);
				utils._resizeShare(st);
    		});
			utils._resizeSwipers(st);
			
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
			st.contentSwiper.resizeFix();
			st.navSwiper.resizeFix();
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
			var text = $(swiper.activeSlide()).data('slide-text');
			var src = $(swiper.activeSlide()).data('src');
			
			if(text){
				st.$container.find('.footer .text').html(text);
			}else{
				st.$container.find('.footer .text').html("");
			}
			var actionContainer = st.$container.find('.actionContainer');
			if(src){
				actionContainer.find('.download a').attr("href", src);
			}else{
				actionContainer.find('.download a').attr("href", "javascript:void(0);");
			}
			
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
		
		/**
		 * Metodo che si occupa di inizializzare un video.
		 * 
		 * @param st
		 * @param target
		 */
		/*_initVideoPlayers: function(st){
			st.$container.find('.video-player [data-target-video]').each(function(){
				$elem = $(this);
				
				var settings = {
					file: $elem.data('video-url'),
					height: "100%",
					width: "auto",
					volumeMemory: 100
//					Commentanto perchè generare errore su chrome verificare l'interfaccia
,					skin:"css/ducati_minimal/ducati.xml"
//					Vecchia versione
//,					skin:"css/ducati/ducati.xml"
				};
				
				if(utils._isIe()){
					settings.wmode='transparent';
					settings.primary="flash";
				}
				
				if($elem.data('video-cover')!=""){
					settings.image= $elem.data('video-cover');
				}
				
				if($elem.data('youtube')){
					settings.events = {
					   onPlay :function(){
			    		  //Solo per tablet chrome/safari
						 if(utils._isTouch()){
							 $("#"+this.id).parents(".swiper-slide").find(".youtube-layer").remove();
						 }
			    	   }
				    };
				}
				
				if($elem.attr('id') != ""){
					//st.players.push(jwplayer($elem.attr('id')).setup(settings));
					var swapPlayer = jwplayer($elem.attr('id')).setup(settings);
					swapPlayer.volumeMemory = settings.volumeMemory;
					if (!utils._isIe()) {
						swapPlayer.onMute(function(){
							if (swapPlayer.getMute()){
								swapPlayer.volumeMemory = swapPlayer.getVolume();
								swapPlayer.setVolume(0);
							} else {
								swapPlayer.setVolume(swapPlayer.volumeMemory);							
							}						
						});
					}
					st.players.push(swapPlayer);
				}
			});
		},*/
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