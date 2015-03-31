/* PLUGIN HEADER e SIDEBAR */
(function($) {
	var st;
	var methods = {
		init: function(options){
			var defaults = {
				headerSelector: '#header',
				tableSelector: '.body-container-table',
				sidebarSelector: '#sidebar',
				sidebarWrappersSelector: '.sidebar-scroller, .sidebar-container',
				messageSelector: '#message',
				searchSelector: '.ucg_search',
				searchFieldClass: '.findAsYouType',
				searchUrl: 'data/search.json',
				searchIsInit: false,
				searchTreshold: 2,
				containerSelector: '#mainContainer',
				containerWrappersSelector: '.mainContainer-wrapper',
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
				speed: 80*(500/200),
				cookieName: "UBIS-section-page",
				breakpoint: "xs",
				selection: {section: null, page: null}
				
			};
			st = $.extend(true, defaults, options); 
			
			var $header = $(st.headerSelector);
			var $sidebar = $(st.sidebarSelector);
			var $sidebarWrappers = $(st.sidebarWrappersSelector);
			var $message = $(st.messageSelector);
			var $search = $(st.searchSelector);
			var $container = $(st.containerSelector);
			var $containerWrappers = $(st.containerWrappersSelector);
			var $footer = $(st.footerSelector);
			var $scrollables = $(st.scrollableClass);
			st.$header = $header;
			st.$sidebarWrappers = $sidebarWrappers;
			st.$sidebar = $sidebar;
			st.$message = $message;
			st.$search = $search;
			st.$container = $container;
			st.$containerWrappers = $containerWrappers;
			st.$footer = $footer;
			st.$scrollables = $scrollables;
			
			if ($.cookie(st.cookieName)==null){
				$.cookie(st.cookieName, JSON.stringify(st.selection), { expiry: 0 });
			}
			
			st.$sidebar.find('a[data-section][data-link]').click(function(){
				var mysection =  $(this).data("section");
				var mylink =  $(this).data("link");
				$.cookie(st.cookieName, JSON.stringify({section: mysection, page:""+mylink}), { expiry: 0 });
				location.reload();
			});
			
			st.$header.find('a[data-section][data-link]').click(function(){
				var mysection =  $(this).data("section");
				var mylink =  $(this).data("link");
				$.cookie(st.cookieName, JSON.stringify({section: mysection, page:""+mylink}), { expiry: 0 });
				location.reload();
			});
			st.$header.find('a.searchToolHeader').click(utils._openSearch);

			st.$header.find('.sidebar-switch a').click(function(){utils._toggleSidebar();});
			
			st.$sidebar.find('.sidebar-element .sidebar-collapser').click(function () {
				var elementClass = $(this).data('name');
				st.$sidebar.find('.sidebar-element.active:not(.'+elementClass+')').removeClass("active");
				st.$sidebar.find('.sidebar-element.'+elementClass).addClass("active");
				//$.cookie(st.cookieName, JSON.stringify({section: elementClass, page: ""}), { expiry: 0 });
				if (!st.$sidebar.hasClass("opened")){
					utils._toggleSidebar();
				} else {
					st.$sidebar.find('.sidebar-element.active:not(.'+elementClass+')').removeClass("active");
					st.$sidebar.find('.sidebar-element.'+elementClass).addClass("active");
					st.$sidebar.find('.sidebar-element:not(.'+elementClass+') .collapse.in').slideUp().removeClass("in");
					var target = $($(this).data("target"));
					if (target.hasClass("in")) {
						st.$sidebar.find('.sidebar-element.'+elementClass).removeClass("opened");
						target.slideUp({complete: function(){
								st.$sidebar.find(".sidebar-scroller").animate({
								scrollTop: $(this).offset().top
							}, 300);
							//utils._setHeightContainers();		
							}}).removeClass("in");
					} else {
						var ScrollTo = (st.$sidebar.find(".sidebar-element."+elementClass).index(".sidebar-element")*st.$sidebar.find(".sidebar-element .sidebar-header").outerHeight(true));
						st.$sidebar.find(".sidebar-scroller").animate({
							scrollTop: ScrollTo
						}, 300);
						st.$sidebar.find('.sidebar-element.'+elementClass).addClass("opened");
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
			utils._setWidthSidebar();
			//utils._setHeightScrollables();
			//utils._setHeightSidebar();
			//utils._setHeightContainer();
			utils._setPositionContainer();
			utils._selectByCookies();
			//utils._selectHeaderByCookies();
			utils._setHeightContainers();
			$(window).resize(function(){
				//clearTimeout(st.timer);
				//st.timer = setTimeout(function(){
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
				//}, 200);
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
		_selectByCookies: function(){
			if ($.cookie(st.cookieName)!=null){
				var selection = JSON.parse($.cookie(st.cookieName));
				
				if (selection.section!=null & selection.section!="menu" && selection.page!="") {
					st.$sidebar.find('.sidebar-element.active').removeClass("active");
					st.$sidebar.find(".sidebar-element."+selection.section+" .sidebar-collapser").trigger("click");
				}
				if (selection.section!=null && selection.page!=""){ 
					if (selection.page.indexOf("language")!=0) {
						st.$header.find('.'+selection.section+' ul li a').removeClass("active");
						st.$header.find('.'+selection.section+' ul li a.'+selection.page).addClass("active");
						st.$sidebar.find('.'+selection.section+' ul li a').removeClass("active");
						st.$sidebar.find('.'+selection.section+' ul li a.'+selection.page).addClass("active");
					} else {
						var language = selection.page=="language.ita"?"eng":"ita";
						st.$header.find('.'+selection.section+' ul li a.'+selection.page).removeAttr("class").addClass("language").addClass(language).text(language).data("link", "language."+language);
						st.$sidebar.find('.'+selection.section+' ul li a.'+selection.page).removeAttr("class").addClass("language").addClass(language).text(language).data("link", "language."+language);
					}
				}
			}
		},
		_selectHeaderByCookies: function(){
			if ($.cookie(st.cookieName)!=null){
				var selection = JSON.parse($.cookie(st.cookieName));
				if (selection.section!=null & selection.section!="menu") {
					st.$sidebar.find('.sidebar-element.active').removeClass("active");
					st.$sidebar.find(".sidebar-element."+selection.section).addClass("active");
				}
				if (selection.section!=null && selection.page!=""){ 
					if (selection.page.indexOf("language")!=0) {
						st.$header.find('.'+selection.section+' ul li a').removeClass("active");
						st.$header.find('.'+selection.section+' ul li a.'+selection.page).addClass("active");
						st.$sidebar.find('.'+selection.section+' ul li a').removeClass("active");
						st.$sidebar.find('.'+selection.section+' ul li a.'+selection.page).addClass("active");
					} else {
						var language = selection.page=="language.ita"?"eng":"ita";
						st.$header.find('.'+selection.section+' ul li a.'+selection.page).removeAttr("class").addClass("language").addClass(language).text(language).data("link", "language."+language);
						st.$sidebar.find('.'+selection.section+' ul li a.'+selection.page).removeAttr("class").addClass("language").addClass(language).text(language).data("link", "language."+language);
					}
				}
			}
		},
		_toggleSidebar: function(){
			st.$container.trigger(st.toggleEvent);
			var windowWidth = $(window).outerWidth(true);
			var oldWidthS = utils._getSidebarWidth();
			st.$sidebar.parents(st.tableSelector).toggleClass("opened");
			st.$sidebar.toggleClass("opened");
			var widthS = utils._getSidebarWidth();
			var widthC =  windowWidth-widthS;
			st.speed = Math.abs(widthS-oldWidthS)*st.pixelSpeed;
			if (!st.$sidebar.hasClass("opened")){
				//CLOSE
				st.$container.trigger(st.closeEvent);
				st.$sidebar.find(".sidebar-scroller").scrollTop(0);
				st.$header.find('.sidebar-switch a').removeClass("opened");
				st.$sidebar.find('.sidebar-footer').slideUp();
				st.$sidebar.find('.sidebar-element .collapse.in').slideUp().removeClass("in");
				st.$sidebar.find('.sidebar-element.active').removeClass('opened');
				//st.$sidebar.find(".sidebar-element .collapse a").removeClass("active");				
			} else {
				//OPEN
				st.$container.trigger(st.openEvent);
				st.$header.find('.sidebar-switch a').addClass("opened");
				st.$sidebar.find('.sidebar-footer').slideDown();
			}
			if (isBreakpoint(st.breakpoint)) {
				st.$sidebarWrappers.each(function(i,e){
					$(this).css({"width": widthS+'px'});
					$(this).hasClass("sidebar-container")?$(this).height($(window).height()*2):$(this).height($(window).height());
				})
				st.$sidebar.css({"width": widthS+'px'});
				st.$search.css({"width": widthC+"px"});
				st.$container.css({"width": widthC+"px", "margin-left": widthS-1+"px"}).toggleClass("opened");
				st.$containerWrappers.css({width: widthC+"px"});
				//st.$sidebar.find(".sidebar-scroller").scrollTop(0);
				//utils._selectHeaderByCookies();	
				if (st.$sidebar.hasClass("opened")){
					st.$sidebar.find(".sidebar-element.active .sidebar-collapser").trigger("click");
				}
				st.$container.trigger(st.animationEvent);
			} else {
				st.$sidebarWrappers.animate({"width": widthS+'px'},
						{
						complete: function(){
							$(this).hasClass("sidebar-container")?$(this).height($(window).height()*2):$(this).height($(window).height()-st.$header.height()-st.$message.height());
							} 
						},
						st.speed, 
					"linear");
				st.$sidebar.animate({"width": widthS+'px'},
						st.speed, 
					"linear");
				st.$footer.animate({
					width: widthC+"px"},
					st.speed, 
					"linear");
				st.$search.animate({width: widthC+"px"}, st.speed, "linear");
				st.$container.animate({
					width: widthC+"px", "margin-left": widthS-1+"px"},
					{
						complete: function(){
							//st.$search.css({width: widthC+"px"});
							$(this).toggleClass("opened");
							//st.$sidebar.find(".sidebar-scroller").scrollTop(0);
							//utils._selectHeaderByCookies();
							if (st.$sidebar.hasClass("opened")){
								st.$sidebar.find(".sidebar-element.active .sidebar-collapser").trigger("click");
							}	
							st.$container.trigger(st.animationEvent);
						}
					},
					st.speed, 
				"linear");
				st.$containerWrappers.animate({
					width: widthC+"px"},
					st.speed, 
				"linear");
				if(widthC<=st.containerWidth) {
					st.$container.addClass("with-sidebar-opened");
					st.$search.addClass("with-sidebar-opened");
				} else {
					st.$container.removeClass("with-sidebar-opened");
					st.$search.removeClass("with-sidebar-opened");			
				}
			}	
		},
		_closeSidebar: function(){
			var windowWidth = $(window).outerWidth(true);
			var oldWidthS = utils._getSidebarWidth();
			st.$sidebar.parents(st.tableSelector).removeClass("opened");
			st.$sidebar.removeClass("opened");
			var widthS = utils._getSidebarWidth();
			var widthC =  windowWidth-widthS;
			st.speed = Math.abs(widthS-oldWidthS)*st.pixelSpeed;
			st.$container.trigger(st.closeEvent);
			st.$header.find('.sidebar-switch a').removeClass("opened");
			st.$sidebar.find('.sidebar-footer').slideUp();
			st.$sidebar.find('.sidebar-element').removeClass("opened");
			st.$sidebar.find('.sidebar-element .collapse.in').slideUp().removeClass("in");
			//st.$sidebar.find('.sidebar-element.active').removeClass('active');
			//st.$sidebar.find(".sidebar-element .collapse a").removeClass("active");
			if (isBreakpoint(st.breakpoint)) {
				st.$sidebarWrappers.each(function(i,e){
					$(this).css({"width": widthS+'px'});
					$(this).hasClass("sidebar-container")?$(this).height($(window).height()*2):$(this).height($(window).height());
				})
				st.$sidebar.css({"width": widthS+'px'});
				st.$search.css({"width": widthC+"px"});
				st.$container.css({"width": widthC+"px", "margin-left": widthS-1+"px"}).removeClass("opened");
				st.$containerWrappers.css({width: widthC+"px"});
				st.$container.trigger(st.animationEvent);
			} else {
				st.$sidebarWrappers.animate({"width": widthS+'px'},
						{
						complete: function(){
							$(this).hasClass("sidebar-container")?$(this).height($(window).height()*2):$(this).height($(window).height()-st.$header.height()-st.$message.height());
							} 
						},
						st.speed, 
					"linear");
				st.$sidebar.animate({"width": widthS+'px'},
						st.speed, 
					"linear");
				st.$search.animate({width: widthC+"px"}, st.speed, "linear");
				st.$container.animate({
					width: widthC+"px", "margin-left": widthS-1+"px"},
					{
						complete: function(){
							//st.$search.css({width: widthC+"px"});
							$(this).removeClass("opened");
							st.$container.trigger(st.animationEvent);
						}
					},
					st.speed, 
				"linear");
				st.$containerWrappers.animate({
					width: widthC+"px"},
					st.speed, 
				"linear");
				if(widthC<=st.containerWidth) {
					st.$container.addClass("with-sidebar-opened");
					st.$search.addClass("with-sidebar-opened");
				} else {
					st.$container.removeClass("with-sidebar-opened");
					st.$search.removeClass("with-sidebar-opened");			
				}
			}
			st.$sidebar.find(".sidebar-scroller").scrollTop(0);
			utils._selectHeaderByCookies();		
		},
		_setPositionContainer: function(){
			var widthS = utils._getSidebarWidth();
			var widthC =  $(window).outerWidth(true)-widthS;
			st.$search.css({width: widthC+"px"});
			st.$container.css({width: widthC+"px"});
			st.$containerWrappers.css({width: widthC+"px"});
			//st.$footer.css("top", (st.$container.height()-st.$footer.height()));
			if(widthC<=st.containerWidth) {
				st.$container.addClass("with-sidebar-opened");
				st.$search.addClass("with-sidebar-opened");
			} else {
				st.$container.removeClass("with-sidebar-opened");
				st.$search.removeClass("with-sidebar-opened");			
			}
		},
		_setWidthContainer: function(){
			var leftC = utils._getContainerLeft()-1;
			var widthC = $(window).outerWidth(true)-leftC;
			st.$container.css({width: widthC+"px", "margin-left": leftC+"px"});
			st.$containerWrappers.css({width: widthC+"px"});
			st.$search.css({width: widthC+"px"});
		},
		_setWidthFooter: function(){
			var widthF = $(window).outerWidth(true)-utils._getContainerLeft();
			st.$footer.css({width: widthF+"px"});	
		},
		_setHeightContainers: function(){
			var h = $(window).outerHeight(true)-st.$header.height();
			st.$container.css("min-height",  "0px");
			st.$containerWrappers.css("min-height",  "0px");
			st.$container.removeClass("smaller-than-window");
			if(st.$container.height()<$(window).outerHeight(true)-st.$header.height()) {
				st.$container.addClass("smaller-than-window");
			}
			st.$container.css("min-height",  h+"px");
			st.$containerWrappers.css("min-height",  h+"px");
		},
		_setWidthSidebar: function(){
			st.$sidebar.css({width: utils._getSidebarWidth()+"px"});
			st.$sidebar.find(".sidebar-scroller").css({width: utils._getSidebarWidth()+"px"});
			st.$sidebar.find(".sidebar-container").css({width: utils._getSidebarWidth()+"px"});
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
			st.$search.slideDown( 500, function(){
				st.$header.find('a.searchToolHeader').off("click").click(utils._closeSearch);
			}).addClass("active");
			st.$search.find(st.searchFieldClass).focus().on("blur", utils._closeSearch);
			utils._closeSidebar();
		},
		_closeSearch: function(){
			st.$header.find('a.searchToolHeader').removeClass("active");
			st.$search.slideUp( 500, function(){
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