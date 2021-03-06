/* PLUGIN HEADER e SIDEBAR */
(function($) {
	var st;
	var methods = {
		init: function(options){
			var defaults = {
				headerSelector: '#header',
				sidebarSelector: '#sidebar',
				messageSelector: '#message',
				searchSelector: '.ucg_search',
				searchFieldClass: '.findAsYouType',
				searchUrl: 'data/search.json',
				searchIsInit: false,
				searchTreshold: 2,
				containerSelector: '#mainContainer',
				footerSelector: '#footer',
				toggleEvent: 'toggleSidebar',
				openEvent: 'openSidebar',
				closeEvent: 'closeSidebar',
				animationEvent: 'animationSidebarCompleted',
				calcHeightComplete: 'calculationHeightCompleted',
				scrollableSelector: '.scrollable-element',
				containerWidth: 960,
				adjHeight: 1.0,
				collapsedSidebarWidth: 80,
				openedSidebarWidth: 280,
				collapsedSidebarWidthMobile: 0,
				openedSidebarWidthMobile: function(){return ;},
				collapsedContainerLeft: 80,
				openedContainerLeft: 280,
				collapsedContainerLeftMobile: 0,
				openedContainerLeftMobile: 0,
				pixelSpeed: 500/200,
				cookieName: "UBIS-section-page",
				breakpoint: "xs",
				selection: {section: null, page: null},
				timer: null
				
			};
			st = $.extend(true, defaults, options); 
			
			var $header = $(st.headerSelector);
			var $sidebar = $(st.sidebarSelector);
			var $message = $(st.messageSelector);
			var $search = $(st.searchSelector);
			var $container = $(st.containerSelector);
			var $footer = $(st.footerSelector);
			var $scrollables = $(st.scrollableClass);
			st.$header = $header;
			st.$sidebar = $sidebar;
			st.$message = $message;
			st.$search = $search;
			st.$container = $container;
			st.$footer = $footer;
			st.$scrollables = $scrollables;
			
			if ($.cookie(st.cookieName)==null){
				$.cookie(st.cookieName, JSON.stringify(st.selection), { expiry: 0 });
			}
			
			st.$header.find('a[data-section][data-link]').click(function(){
				var mysection =  $(this).data("section");
				var mylink =  $(this).data("link");
				$.cookie(st.cookieName, JSON.stringify({section: mysection, page:""+mylink}), { expiry: 0 })
				location.reload();
			});
			st.$header.find('a.searchToolHeader').click(utils._openSearch);

			st.$header.find('.sidebar-switch a').click(function(){utils._toggleSidebar("toggle");});
			
			st.$sidebar.find('.sidebar-element .sidebar-collapser').click(function () {
				if (st.$sidebar.hasClass("opened")){
					var elementClass = $(this).data('name');
					var ScrollTo = (st.$sidebar.find(".sidebar-element."+elementClass).index(".sidebar-element")*st.$sidebar.find(".sidebar-element .sidebar-header").outerHeight(true));
					st.$sidebar.scrollTop(ScrollTo);
					st.$sidebar.find('.sidebar-element.active:not(.'+elementClass+')').removeClass("active");
					st.$sidebar.find('.sidebar-element.'+elementClass).addClass("active");
					st.$sidebar.find('.sidebar-element:not(.'+elementClass+') .collapse.in').slideUp().removeClass("in");
					var target = $($(this).data("target"));
					if (target.hasClass("in")) {
						target.slideUp({complete: function(){
							//utils._setHeightContainers();		
							}}).removeClass("in");
					} else {
						target.slideDown({complete: function(){
							//utils._setHeightContainers();		
							}}).addClass("in");
					}
				}
			});
			

			st.$search.on("keyup", function(e){
				if(st.searchIsInit!==true){
					utils._buildSearch();
				}
			});
			

			utils._setWidthLogoHeader();
			utils._setWidthRedbar();
			utils._setWidthContainer();
			utils._setWidthFooter();
			//utils._setHeightScrollables();
			//utils._setHeightSidebar();
			//utils._setHeightContainer();
			utils._setPositionContainer();
			utils._selectHeaderByCookies();
			utils._setHeightContainers();
			$(window).resize(function(){
				utils._setWidthLogoHeader();
				utils._setWidthRedbar();
				utils._setWidthContainer();
				utils._setWidthFooter();
				//utils._setHeightScrollables();
				//utils._setHeightSidebar();
				//utils._setHeightContainer();
				utils._setPositionContainer();
				utils._setWidthSidebar();
				utils._setHeightContainers();
			});
			
			return {
				utils: utils,
				header: $header, 
				sidebar: $sidebar, 
				message: $message, 
				container: $container, 
				footer: $footer, 
				scrollables: $scrollables
				};
			}
		};
	var utils = {
		_getContainerLeft: function(){
			var result = 0;
			if (isBreakpoint(st.breakpoint)) {
				result = st.$sidebar.hasClass('opened') ? st.openedContainerLeftMobile : st.collapsedContainerLeftMobile;
			} else {
				result =  st.$sidebar.hasClass('opened') ? st.openedContainerLeft : st.collapsedContainerLeft;
			}	
			return result;
		},
		 _getSidebarWidth: function(){
			var result = 0;
			if (isBreakpoint(st.breakpoint)) {
				result = st.$sidebar.hasClass('opened') ? $(window).width() : st.collapsedSidebarWidthMobile;
			} else {
				result =  st.$sidebar.hasClass('opened') ? st.openedSidebarWidth : st.collapsedSidebarWidth;
			}
			return result;
		},
		_getContentHeight: function(element){
			var sum = 0;
			$(element).children().each(function(){
				sum+=$(this).outerHeight(true);
			});
			return sum;
			//setTimeout(function(){utils._unsetElementSizes(element);}, 4000);
		},
		_selectByCookies: function(){
			if ($.cookie(st.cookieName)!=null){
				var selection = JSON.parse($.cookie(st.cookieName));
				
				if (selection.section!=null & selection.section!="menu") {
					st.$sidebar.find(".sidebar-element."+selection.section+" .sidebar-collapser").trigger("click");
				}
				if (selection.section!=null){ 
					if (selection.page.indexOf("language")!=0) {
						st.$header.find('.'+selection.section+' ul li a').removeClass("active");
						st.$header.find('.'+selection.section+' ul li a.'+selection.page).addClass("active");
					} else {
						var language = selection.page=="language.ita"?"eng":"ita";
						st.$header.find('.'+selection.section+' ul li a.'+selection.page).removeAttr("class").addClass("language").addClass(language).text(language).data("link", "language."+language);
					}
				}
				/*
				st.$sidebar.find(".sidebar-element .collapse a").removeClass("active");
				$(st.$sidebar.find(".sidebar-element."+selection.section+" .collapse a."+selection.page).addClass("active");
				if (selection.section=="menu") {
					st.$header.find(".menu a").removeClass("active");
					st.$header.find(".menu a."+selection.page).addClass("active");
				}*/
			}
		},
		_selectHeaderByCookies: function(){
			if ($.cookie(st.cookieName)!=null){
				var selection = JSON.parse($.cookie(st.cookieName));
				if (selection.section!=null & selection.section!="menu") {
					st.$sidebar.find(".sidebar-element."+selection.section).addClass("active");
				}
				if (selection.section!=null){ 
					if (selection.page.indexOf("language")!=0) {
						st.$header.find('.'+selection.section+' ul li a').removeClass("active");
						st.$header.find('.'+selection.section+' ul li a.'+selection.page).addClass("active");
					} else {
						var language = selection.page=="language.ita"?"eng":"ita";
						st.$header.find('.'+selection.section+' ul li a.'+selection.page).removeAttr("class").addClass("language").addClass(language).text(language).data("link", "language."+language);
					}
				}
			}
		},
		_toggleSidebar: function(action){
			st.$container.trigger(st.toggleEvent);
			switch (action){
				case "open":
					st.$container.trigger(st.openEvent);
					st.$header.find('.sidebar-switch a').addClass("opened");
					st.$sidebar.addClass("opened").animate({"width": utils._getSidebarWidth()+'px'}, {
						"queue": false, 
						complete: function(){
							st.$container.trigger(st.animationEvent);
							utils._setHeightContainers();
							st.$container.toggleClass("opened");
						}}, 
						utils._getSidebarWidth()*st.pixelSpeed, 
						"linear");
					st.$sidebar.find('.sidebar-footer').slideDown();
					utils._selectByCookies();
					break;
				case "close":
					st.$container.trigger(st.closeEvent);
					st.$header.find('.sidebar-switch a').removeClass("opened");
					st.$sidebar.removeClass("opened").animate({"width": utils._getSidebarWidth()+'px'}, { 
						"queue": false, 
						complete: function(){
							st.$container.trigger(st.animationEvent);
							utils._setHeightContainers();
							st.$container.toggleClass("opened");
							}}, 
						utils._getSidebarWidth()*st.pixelSpeed, 
						"linear");
					st.$sidebar.find('.sidebar-footer').slideUp();
					st.$sidebar.find('.sidebar-element .collapse.in').slideUp().removeClass("in");
					st.$sidebar.find('.sidebar-element.active').removeClass('active');
					st.$sidebar.find(".sidebar-element .collapse a").removeClass("active");
					utils._selectHeaderByCookies();
					break;
				case "toggle":
					st.$header.find('.sidebar-switch a').toggleClass("opened");
					st.$sidebar.toggleClass("opened");
					if (st.$header.find('.sidebar-switch a').hasClass("opened")){
						st.$container.trigger(st.openEvent);
						st.$sidebar.animate({"width": utils._getSidebarWidth()+'px'}, {
							"queue": false, 
							complete: function(){
								st.$container.trigger(st.animationEvent);
								utils._setHeightContainers();
								st.$container.toggleClass("opened");
							}}, 
							utils._getSidebarWidth()*st.pixelSpeed, 
							"linear");
						st.$sidebar.find('.sidebar-footer').slideDown();
						utils._selectByCookies();			
					} else {
						st.$container.trigger(st.closeEvent);
						st.$sidebar.find('.sidebar-element .collapse.in').slideUp().removeClass("in");
						st.$sidebar.find('.sidebar-element.active').removeClass('active');
						st.$sidebar.animate({"width": utils._getSidebarWidth()+'px'}, {
								"queue": false,
								complete: function(){
									st.$container.trigger(st.animationEvent);
									utils._setHeightContainers();
									st.$container.toggleClass("opened");
									}}, 
								utils._getSidebarWidth()*st.pixelSpeed,
								"linear");
						st.$sidebar.find('.sidebar-footer').slideUp();
						st.$sidebar.find(".sidebar-element .collapse a").removeClass("active");
						utils._selectHeaderByCookies();			
					}
					break;
			}
			utils._setPositionContainer();
			//utils._setHeightScrollables();
			//utils._setHeightSidebar();
			//utils._setHeightContainer();
			//utils._setHeightContainers();
		},
		_setPositionContainer: function(){
			var topC = st.$header.outerHeight(true)+(st.$message.is(":visible") ? st.$message.outerHeight(true): 0);
			var leftC = utils._getContainerLeft();
			var widthC =  $(window).outerWidth(true)-leftC;
			var widthF =  $(window).outerWidth(true)-leftC;
			st.$container.css({top: topC+"px"});
			st.$search.css({top: topC+"px"});
			st.$search.animate({left: leftC+"px", width: widthC+"px"}, {"queue": false}, "linear");
			st.$container.animate({left: leftC+"px", width: widthC+"px"}, {"queue": false}, "linear");
			st.$footer.animate({width: widthF+"px"}, {"queue": false}, "linear");
			if(widthC<=st.containerWidth) {
				st.$container.addClass("with-sidebar-opened");
				st.$search.addClass("with-sidebar-opened");
			} else {
				st.$container.removeClass("with-sidebar-opened");
				st.$search.removeClass("with-sidebar-opened");			
			}
		},
		_setWidthContainer: function(){
			var widthC = $(window).outerWidth(true)-utils._getContainerLeft();
			st.$container.css({width: widthC+"px"});
			st.$search.css({width: widthC+"px"});
		},
		_setWidthFooter: function(){
			var widthF = $(window).outerWidth(true)-utils._getContainerLeft();
			st.$footer.css({width: widthF+"px"});	
		},
		_setElementSizes: function(container){
			$(container).find("[data-ucg-height]").each(function(index, element){
				var w = $(element).data('ucg-width');
				var h = $(element).data('ucg-height');
				$(element).data("oldStyle", $(element).attr("style"));
				$(element).data("oldHeight", $(element).attr("height"));
				$(element).data("oldWidth", $(element).attr("width"));
				$(element).css({width: w+"px", height: h+"px", display: "block"});
				$(element).attr("height", h).attr("width", w);
			});
		},
		_unsetElementSizes: function(container){
			$(container).find("[data-ucg-height]").each(function(index, element){
				if(typeof $(element).data("oldStyle")!= "undefined"){
					$(element).attr("style", $(element).data("oldStyle"));
				} else {
					$(element).removeAttr("style");
				}
				if(typeof $(element).data("oldHeight")!= "undefined"){
					$(element).attr("height", $(element).data("oldHeight"));					
				} else {
					$(element).removeAttr("height");					
				}
				if(typeof $(element).data("oldWidth")!= "undefined"){
					$(element).attr("width", $(element).data("oldWidth"));					
				} else {
					$(element).removeAttr("width");					
				}
			});
		},
		_setHeightContainers: function(){
			st.$sidebar.find(".sidebar-container").css("height", "auto");
			var insertSizes = $.Deferred(function(d){
				utils._setElementSizes(st.$container);
				d.resolve();
			});
			$.when(insertSizes).done(function(){
				var containerContent =  Math.max(utils._getContentHeight(st.$sidebar), utils._getContentHeight(st.$container), $(window).outerHeight(true)-st.$header.outerHeight(true))*st.adjHeight;
				st.$container.css("height", containerContent+"px");
				st.$sidebar.css("height", containerContent+"px");
				var sidebarMenuHeight = containerContent;
				st.$sidebar.find(".sidebar-element").each(function(){
					sidebarMenuHeight -= $(this).outerHeight(true);
					containerContent += $(this).outerHeight(true);
				});
				st.$sidebar.find(".sidebar-container").css("height", containerContent+"px");
				st.$sidebar.find(".sidebar-menu").css("height", sidebarMenuHeight+"px");
				st.$container.trigger(st.calcHeightComplete);
				utils._unsetElementSizes(st.$container);
				});
		},
		_setWidthSidebar: function(){
			st.$sidebar.css({width: utils._getSidebarWidth()+"px"});
		},
		_setWidthRedbar: function(){
			var width;
			if (isBreakpoint(st.breakpoint)) {
				width = 0;
			} else {
				width = $(window).outerWidth(true)-st.$header.find('.sidebar-switch').outerWidth(true)-st.$header.find('.logo').outerWidth(true)-st.$header.find('.online-banking').outerWidth(true);
			}
			st.$header.find('.header-menu').css({width: width+"px"});
		},
		_setWidthLogoHeader: function(){
			var width;
			if (isBreakpoint(st.breakpoint)) {
				width = $(window).outerWidth(true)-st.$header.find('.sidebar-switch').outerWidth(true)-st.$header.find('.search').outerWidth(true);
			} else {
				width = 200;
			}
			st.$header.find('.logo').css({width: width+"px"});	
		},
		_buildSearch: function(){
			$.ajax({
				type: 'GET',
				url: st.searchUrl,
				dataType: "json",
				success: function(data, textStatus, jqXHR){
					words = $.map(data, function (singleWord) { return { value: singleWord}; });
					st.$search.find(st.searchFieldClass).devbridgeAutocomplete({
				        lookup: words,
				        minChars: st.searchTreshold,
				        showNoSuggestionNotice: true,
				        noSuggestionNotice: ''
				    });
					st.searchIsInit = true;
				},
				error: function (jqXHR, textStatus, errorThrown){
					st.searchIsInit = false;
				}
			});
		},
		_destroySearch: function(){
			//$(st.$search.find(st.searchFieldClass)).devbridgeAutocomplete({});
			st.$search.find(st.searchFieldClass).val("").devbridgeAutocomplete("dispose");
			st.searchIsInit = false;
		},
		_openSearch: function(){			
			st.$header.find('a.searchToolHeader').addClass("active");
			st.$search.slideDown("slow", function(){
				st.$header.find('a.searchToolHeader').off("click").click(utils._closeSearch);
			}).addClass("active");
			st.$search.find(st.searchFieldClass).focus().on("blur", utils._closeSearch);
			utils._toggleSidebar("close");
		},
		_closeSearch: function(){
			st.$header.find('a.searchToolHeader').removeClass("active");
			st.$search.slideUp("slow", function(){
				st.$header.find('a.searchToolHeader').off("click").click(utils._openSearch);
			}).removeClass("active");
			st.$search.find(st.searchFieldClass).off("blur");
			utils._destroySearch();
		}
	};
	
	$.fn.headerUBISManager = function(method) {
        if (methods[method]) {
            return methods[method].apply(this, Array.prototype.slice.call(arguments, 1));
        } else if (typeof method === 'object' || !method) {
            return methods.init.apply(this, arguments);
        } else {
            $.error( 'Method "' +  method + '" does not exist in headerUBISManager plugin!');
        }
    };
	
})(jQuery);