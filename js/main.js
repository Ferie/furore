var collapsedSidebarWidth=80;
var openedSidebarWidth=280;
var collapsedSidebarWidthMobile=0;
//var openedSidebarWidthMobile=;

var collapsedContainerLeft=80;
var openedContainerLeft=280;
var collapsedContainerLeftMobile=0;
var openedContainerLeftMobile=0;

var pixelSpeed=500/200;

function getContainerLeft(){
	var result = 0;
	if (isBreakpoint("xs")) {
		result = $('#sidebar').hasClass('opened') ? openedContainerLeftMobile : collapsedContainerLeftMobile;
	} else {
		result =  $('#sidebar').hasClass('opened') ? openedContainerLeft : collapsedContainerLeft;
	}	
	return result;
}
function getSidebarWidth(){
	var result = 0;
	if (isBreakpoint("xs")) {
		result = $('#sidebar').hasClass('opened') ? $(window).width() : collapsedSidebarWidthMobile;
	} else {
		result =  $('#sidebar').hasClass('opened') ? openedSidebarWidth : collapsedSidebarWidth;
	}	
	return result;
}
function getContentHeight(element){
	var sum = 0;
	$(element).children().each(function(){sum+=$(this).outerHeight(true);});
	return sum;
}

//detect bootstrap breakpoint
function isBreakpoint(alias) {
	// Innietto nel contenitore i div che servono per fare il check
	if ($(".device-xs.visible-xs").length == 0) {
		$("body").append($("<div class=\"device-xs visible-xs\"></div>"))
				.append($("<div class=\"device-sm visible-sm\"></div>"))
				.append($("<div class=\"device-md visible-md\"></div>"))
				.append($("<div class=\"device-lg visible-lg\"></div>"));
	}
	return $('.device-' + alias).is(':visible');
}

function selectByCookies(){
	if ($.cookie("UBIS-section-page")!=null){
		var selection = JSON.parse($.cookie("UBIS-section-page"));
		$("#sidebar .sidebar-element."+selection.section+" .sidebar-collapser").trigger("click");
		//console.log("#sidebar .sidebar-element."+selection.section+" sidebar-collapser");
		$("#sidebar .sidebar-element .collapse a").removeClass("active");
		$($("#sidebar .sidebar-element."+selection.section+" .collapse a").get(parseInt(selection.page))).addClass("active");
		//console.log($($("#sidebar .sidebar-element."+selection.section+" .collapse a").get(parseInt(selection.page))).addClass("active"));
		//console.log($.cookie("UBIS-section-page"));
	}
}

function toggleSidebar(action){
	switch (action){
		case "open":
			$('#header .sidebar-switch a').addClass("opened");
			$('#sidebar').addClass("opened").animate({"width": getSidebarWidth()+'px'}, {"queue": false}, getSidebarWidth()*pixelSpeed, "linear");
			$('#sidebar .sidebar-footer').slideDown();
			selectByCookies();
			break;
		case "close":
			$('#header .sidebar-switch a').removeClass("opened");
			$('#sidebar').removeClass("opened").animate({"width": getSidebarWidth()+'px'}, {"queue": false}, getSidebarWidth()*pixelSpeed, "linear");
			$('#sidebar .sidebar-footer').slideUp();
			$('#sidebar .sidebar-element .collapse.in').slideUp().removeClass("in");
			$('#sidebar .sidebar-element.active').removeClass('active');
			$("#sidebar .sidebar-element .collapse a").removeClass("active");
			break;
		case "toggle":
			$('#header .sidebar-switch a').toggleClass("opened");
			$('#sidebar').toggleClass("opened");
			if ($('#header .sidebar-switch a').hasClass("opened")){
				$('#sidebar').animate({"width": getSidebarWidth()+'px'}, {"queue": false}, getSidebarWidth()*pixelSpeed, "linear");
				$('#sidebar .sidebar-footer').slideDown();
				selectByCookies();
				//$('#sidebar .sidebar-element .collapse.in').collapse('hide');				
			} else {
				$('#sidebar .sidebar-element .collapse.in').slideUp().removeClass("in");
				$('#sidebar .sidebar-element.active').removeClass('active');
				$('#sidebar').animate({"width": getSidebarWidth()+'px'}, {"queue": false}, getSidebarWidth()*pixelSpeed, "linear");
				$('#sidebar .sidebar-footer').slideUp();
				$("#sidebar .sidebar-element .collapse a").removeClass("active");
			}
			break;
	}
	setPositionContainer();
}
function setPositionContainer(){
	var topC = $('#header').outerHeight(true)+$('#message:visible').outerHeight(true);
	var leftC = getContainerLeft();
	var widthC =  $(window).outerWidth(true)-leftC;
	var widthF =  $(window).outerWidth(true)-leftC;
	$('#mainContainer').css({top: topC+"px"});
	$('#mainContainer').animate({left: leftC+"px", width: widthC+"px"}, {"queue": false}, "linear");
	$('#footer').animate({width: widthF+"px"}, {"queue": false}, "linear");
	//$('#mainContainer').animate({width: width+"px"}, {"queue": false}, "linear");
	//$('#mainContainer').css({width: width+"px"});
}
function setWidthContainer(){
	var widthC = $(window).outerWidth(true)-getContainerLeft();
	$('#mainContainer').css({width: widthC+"px"});
}
function setWidthFooter(){
	var widthF = $(window).outerWidth(true)-getContainerLeft();
	$('#footer').css({width: widthF+"px"});	
}
function setHeightContainer(){
	var containerContent =  Math.max(getContentHeight($('#mainContainer')), $(window).outerHeight(true)-$('#header').outerHeight(true));	
	//var heightC = Math.max($(document).outerHeight(true), $(window).outerHeight(true))-$('#header').outerHeight(true);
	$('#mainContainer').css("height", containerContent+"px");
	//var topF = heightC-$('#footer').outerHeight(true)-$('#footer').position().top;
	//console.log("document: "+$(document).outerHeight(true)+"px");
	//console.log("window: "+$(window).outerHeight(true)+"px");
	//console.log("header: "+$('#header').outerHeight(true)+"px");
	//console.log("footer: "+$('#footer').outerHeight(true)+"px");
	//console.log("footer Top: "+$('#footer').position().top+"px");
	//console.log(topF);
	//$('#footer').css("top", topF+"px");
}
function setHeightSidebar(){
	var containerContent =  Math.max(getContentHeight($('#mainContainer')), $(window).outerHeight(true)-$('#header').outerHeight(true));
	//var heightS = $(document).outerHeight(true)-$('#header').outerHeight(true);
	$('#sidebar').css("height", containerContent+"px");	
}
function setWidthSidebar(){
	$('#sidebar').css({width: getSidebarWidth()+"px"});
}
function setWidthRedbar(){
	var width;
	if (isBreakpoint("xs")) {
		width = 0;
	} else {
		width = $(window).outerWidth(true)-$('#header .sidebar-switch').outerWidth(true)-$('#header .logo').outerWidth(true)-$('#header .online-banking').outerWidth(true);
	}
	$('#header .menu').css({width: width+"px"});
}
function setWidthLogoHeader(){
	var width;
	if (isBreakpoint("xs")) {
		width = $(window).outerWidth(true)-$('#header .sidebar-switch').outerWidth(true)-$('#header .search').outerWidth(true);
	} else {
		width = 200;
	}
	//console.log($('#header .search').outerWidth(true));
	$('#header .logo').css({width: width+"px"});	
}

$(document).ready(function() {
	var selection, timer;
	if ($.cookie("UBIS-section-page")==null){
		$.cookie("UBIS-section-page", JSON.stringify({section: null, page:null}), { expiry: 0 });
	}
    
	$('#sidebar .sidebar-element .collapse a').click(function(){
		var mysection =  $(this).data("section");
		var mypage = $("#sidebar .sidebar-element."+mysection+" ul li").index($(this).parent());
		$.cookie("UBIS-section-page", JSON.stringify({section: mysection, page:mypage}), { expiry: 0 });
		location.reload();
		//console.log($.cookie("UBIS-section-page"));
	});
	//console.log($.cookie("UBIS-section-page"));
	
	$('#header .sidebar-switch a').click(function(){toggleSidebar("toggle");});
	$('#sidebar .sidebar-element .sidebar-collapser').click(function () {
		if ($("#sidebar").hasClass("opened")){
			var elementClass = $(this).data('name');
			//console.log($("#sidebar .sidebar-element .sidebar-header").outerHeight(true));
			var menuHeight = (isBreakpoint("xs") ? $("#sidebar .menu").outerHeight(true) : 0);
			var ScrollTo = ($("#sidebar .sidebar-element."+elementClass).index(".sidebar-element")*$("#sidebar .sidebar-element .sidebar-header").outerHeight(true))+menuHeight;
			$("#sidebar").scrollTop(ScrollTo);
			$('#sidebar .sidebar-element.active:not(.'+elementClass+')').removeClass("active");
			$('#sidebar .sidebar-element.'+elementClass).toggleClass("active");
			$('#sidebar .sidebar-element:not(.'+elementClass+') .collapse.in').slideUp().removeClass("in");
			var target = $($(this).data("target"));
			if (target.hasClass("in")) {
				target.slideUp({complete: function(){
					setHeightSidebar();
					setHeightContainer();		
					}}).removeClass("in");
			} else {
				target.slideDown({complete: function(){
					setHeightSidebar();
					setHeightContainer();		
					}}).addClass("in");
			}
		}
	});

	setWidthLogoHeader();
	setWidthRedbar();
	setWidthContainer();
	setWidthFooter();
	setHeightSidebar();
	setHeightContainer();
	setPositionContainer();
	$(window).resize(function(){
		setWidthLogoHeader();
		setWidthRedbar();
		setWidthContainer();
		setWidthFooter();
		setHeightSidebar();
		setHeightContainer();
		setPositionContainer();
		setWidthSidebar();
	});
});