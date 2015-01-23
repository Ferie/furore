/* PLUGIN HEADER e SIDEBAR */
(function($) {
	var st;
	var methods = {
		init: function(options){
			var defaults = {
				headerSelector: '#header',
				sidebarSelector: '#sidebar',
				messageSelector: '#message',
				containerSelector: '#mainContainer',
				footerSelector: '#footer',
				containerWidth: 960,
				collapsedSidebarWidth: 80,
				openedSidebarWidth: 280,
				collapsedSidebarWidthMobile: 0,
				openedSidebarWidthMobile: $(window).width(),
				collapsedContainerLeft: 80,
				openedContainerLeft: 280,
				collapsedContainerLeftMobile: 0,
				openedContainerLeftMobile: 0,
				pixelSpeed: 500/200,
				cookieName: "UBIS-section-page",
				breakpoint: "xs",
				selection: {section: null, page:null},
				timer: null
				
			};
			st = $.extend(true, defaults, options); 
			
			var $header = $(st.headerSelector);
			var $sidebar = $(st.sidebarSelector);
			var $message = $(st.messageSelector);
			var $container = $(st.containerSelector);
			var $footer = $(st.footerSelector);
			st.$header = $header;
			st.$sidebar = $sidebar;
			st.$message = $message;
			st.$container = $container;
			st.$footer = $footer;
			
			if ($.cookie(st.cookieName)==null){
				$.cookie(st.cookieName, JSON.stringify(st.selection), { expiry: 0 });
			}
			
			st.$sidebar.find('.sidebar-element .collapse a').click(function(){
				var mysection =  $(this).data("section");
				var mypage = st.$sidebar.find(".sidebar-element."+mysection+" ul li").index($(this).parent());
				$.cookie(st.cookieName, JSON.stringify({section: mysection, page:mypage}), { expiry: 0 });
				location.reload();
			});
			

			st.$header.find('.sidebar-switch a').click(function(){utils._toggleSidebar("toggle");});
			
			st.$sidebar.find('.sidebar-element .sidebar-collapser').click(function () {
				if (st.$sidebar.hasClass("opened")){
					var elementClass = $(this).data('name');
					var menuHeight = (isBreakpoint(st.breakpoint) ? st.$sidebar.find(".menu").outerHeight(true) : 0);
					var ScrollTo = (st.$sidebar.find(".sidebar-element."+elementClass).index(".sidebar-element")*st.$sidebar.find(".sidebar-element .sidebar-header").outerHeight(true))+menuHeight;
					st.$sidebar.scrollTop(ScrollTo);
					st.$sidebar.find('.sidebar-element.active:not(.'+elementClass+')').removeClass("active");
					st.$sidebar.find('.sidebar-element.'+elementClass).toggleClass("active");
					st.$sidebar.find('.sidebar-element:not(.'+elementClass+') .collapse.in').slideUp().removeClass("in");
					var target = $($(this).data("target"));
					if (target.hasClass("in")) {
						target.slideUp({complete: function(){
							utils._setHeightSidebar();
							utils._setHeightContainer();		
							}}).removeClass("in");
					} else {
						target.slideDown({complete: function(){
							utils._setHeightSidebar();
							utils._setHeightContainer();		
							}}).addClass("in");
					}
				}
			});
			

			utils._setWidthLogoHeader();
			utils._setWidthRedbar();
			utils._setWidthContainer();
			utils._setWidthFooter();
			utils._setHeightSidebar();
			utils._setHeightContainer();
			utils._setPositionContainer();
			$(window).resize(function(){
				utils._setWidthLogoHeader();
				utils._setWidthRedbar();
				utils._setWidthContainer();
				utils._setWidthFooter();
				utils._setHeightSidebar();
				utils._setHeightContainer();
				utils._setPositionContainer();
				utils._setWidthSidebar();
			});
			
			return {
				utils: utils,
				header: $header, 
				sidebar: $sidebar, 
				message: $message, 
				container: $container, 
				footer: $footer
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
				result = st.$sidebar.hasClass('opened') ? st.openedSidebarWidthMobile : st.collapsedSidebarWidthMobile;
			} else {
				result =  st.$sidebar.hasClass('opened') ? st.openedSidebarWidth : st.collapsedSidebarWidth;
			}	
			return result;
		},
		_getContentHeight: function(element){
			var sum = 0;
			$(element).children().each(function(){sum+=$(this).outerHeight(true);});
			return sum;
		},
		_selectByCookies: function(){
			if ($.cookie(st.cookieName)!=null){
				var selection = JSON.parse($.cookie(st.cookieName));
				st.$sidebar.find(".sidebar-element."+selection.section+" .sidebar-collapser").trigger("click");
				st.$sidebar.find(".sidebar-element .collapse a").removeClass("active");
				$(st.$sidebar.find(".sidebar-element."+selection.section+" .collapse a").get(parseInt(selection.page))).addClass("active");
			}
		},
		_toggleSidebar: function(action){
			switch (action){
				case "open":
					st.$header.find('.sidebar-switch a').addClass("opened");
					st.$sidebar.addClass("opened").animate({"width": utils._getSidebarWidth()+'px'}, {"queue": false}, utils._getSidebarWidth()*st.pixelSpeed, "linear");
					st.$sidebar.find('.sidebar-footer').slideDown();
					utils._selectByCookies(st);
					break;
				case "close":
					st.$header.find('.sidebar-switch a').removeClass("opened");
					st.$sidebar.removeClass("opened").animate({"width": utils._getSidebarWidth()+'px'}, {"queue": false}, utils._getSidebarWidth()*st.pixelSpeed, "linear");
					st.$sidebar.find('.sidebar-footer').slideUp();
					st.$sidebar.find('.sidebar-element .collapse.in').slideUp().removeClass("in");
					st.$sidebar.find('.sidebar-element.active').removeClass('active');
					st.$sidebar.find(".sidebar-element .collapse a").removeClass("active");
					break;
				case "toggle":
					st.$header.find('.sidebar-switch a').toggleClass("opened");
					st.$sidebar.toggleClass("opened");
					if (st.$header.find('.sidebar-switch a').hasClass("opened")){
						st.$sidebar.animate({"width": utils._getSidebarWidth()+'px'}, {"queue": false}, utils._getSidebarWidth()*st.pixelSpeed, "linear");
						st.$sidebar.find('.sidebar-footer').slideDown();
						utils._selectByCookies(st);			
					} else {
						st.$sidebar.find('.sidebar-element .collapse.in').slideUp().removeClass("in");
						st.$sidebar.find('.sidebar-element.active').removeClass('active');
						st.$sidebar.animate({"width": utils._getSidebarWidth()+'px'}, {"queue": false}, utils._getSidebarWidth()*st.pixelSpeed, "linear");
						st.$sidebar.find('.sidebar-footer').slideUp();
						st.$sidebar.find(".sidebar-element .collapse a").removeClass("active");
					}
					break;
			}
			utils._setPositionContainer();
			utils._setHeightSidebar();
			utils._setHeightContainer();
		},
		_setPositionContainer: function(){
			var topC = st.$header.outerHeight(true)+(st.$message.is(":visible") ? st.$message.outerHeight(true): 0);
			var leftC = utils._getContainerLeft();
			var widthC =  $(window).outerWidth(true)-leftC;
			var widthF =  $(window).outerWidth(true)-leftC;
			st.$container.css({top: topC+"px"});
			st.$container.animate({left: leftC+"px", width: widthC+"px"}, {"queue": false}, "linear");
			st.$footer.animate({width: widthF+"px"}, {"queue": false}, "linear");
			if(widthC<=st.containerWidth) {
				st.$container.addClass("with-sidebar-opened");				
			} else {
				st.$container.removeClass("with-sidebar-opened");				
			}
		},
		_setWidthContainer: function(){
			var widthC = $(window).outerWidth(true)-utils._getContainerLeft();
			st.$container.css({width: widthC+"px"});
		},
		_setWidthFooter: function(){
			var widthF = $(window).outerWidth(true)-utils._getContainerLeft();
			st.$footer.css({width: widthF+"px"});	
		},
		_setHeightContainer: function(){
			var containerContent =  Math.max(utils._getContentHeight(st.$container), $(window).outerHeight(true)-st.$header.outerHeight(true))*1.11;
			st.$container.css("height", containerContent+"px");
		},
		_setHeightSidebar: function(){
			var containerContent =  Math.max(utils._getContentHeight(st.$container), $(window).outerHeight(true)-st.$header.outerHeight(true))*1.11;
			st.$sidebar.css("height", containerContent+"px");	
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
			st.$header.find('.menu').css({width: width+"px"});
		},
		_setWidthLogoHeader: function(){
			var width;
			if (isBreakpoint(st.breakpoint)) {
				width = $(window).outerWidth(true)-st.$header.find('.sidebar-switch').outerWidth(true)-st.$header.find('.search').outerWidth(true);
			} else {
				width = 200;
			}
			st.$header.find('.logo').css({width: width+"px"});	
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