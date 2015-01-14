var collapsedSidebar=80;
var openedSidebar=280;
var pixelSpeed=500/200;

function getLeft(){
	return $('#sidebar').hasClass('opened') ? openedSidebar : collapsedSidebar;
}
function getContentHeight(element){
	var sum = 0;
	$(element).children().each(function(){sum+=$(this).outerHeight(true);});
	return sum;
}

function toggleSidebar(action){
	switch (action){
		case "open":
			$('#header .sidebar-switch a').addClass("opened");
			$('#sidebar').addClass("opened").animate({"width": openedSidebar+'px'}, {"queue": false}, openedSidebar*pixelSpeed, "linear");
			$('#sidebar .sidebar-footer').slideDown();
			break;
		case "close":
			$('#header .sidebar-switch a').removeClass("opened");
			$('#sidebar').removeClass("opened").animate({"width": collapsedSidebar+'px'}, {"queue": false}, "linear");
			$('#sidebar .sidebar-footer').slideUp();
			$('#sidebar .sidebar-element .collapse.in').slideUp().removeClass("in");
			$('#sidebar .sidebar-element.active').removeClass('active');
			break;
		case "toggle":
			if ($('#header .sidebar-switch a').hasClass("opened")){
				$('#sidebar').animate({"width": collapsedSidebar+'px'}, {"queue": false}, "linear");
				$('#sidebar .sidebar-footer').slideUp();
				$('#sidebar .sidebar-element .collapse.in').slideUp().removeClass("in");
				$('#sidebar .sidebar-element.active').removeClass('active');
				//$('#sidebar .sidebar-element .collapse.in').collapse('hide');				
			} else {
				$('#sidebar').animate({"width": openedSidebar+'px'}, {"queue": false}, "linear");
				$('#sidebar .sidebar-footer').slideDown();
			}
			$('#header .sidebar-switch a').toggleClass("opened");
			$('#sidebar').toggleClass("opened");
			break;
	}
	setPositionContainer();
}
function setPositionContainer(){
	var topC = $('#header').outerHeight(true)+$('#message:visible').outerHeight(true);
	var leftC = getLeft();
	var widthC =  $(window).outerWidth(true)-leftC;
	var widthF =  $(window).outerWidth(true)-leftC;
	$('#mainContainer').css({top: topC+"px"});
	$('#mainContainer').animate({left: leftC+"px", width: widthC+"px"}, {"queue": false}, "linear");
	$('#footer').animate({width: widthC+"px"}, {"queue": false}, "linear");
	//$('#mainContainer').animate({width: width+"px"}, {"queue": false}, "linear");
	//$('#mainContainer').css({width: width+"px"});
}
function setWidthContainer(){
	var widthC = $(window).outerWidth(true)-getLeft();
	$('#mainContainer').css({width: widthC+"px"});
}
function setWidthFooter(){
	var widthF = $(window).outerWidth(true)-getLeft();
	$('#footer').css({width: widthF+"px"});	
}
function setHeightContainer(){
	var containerContent = getContentHeight($('#mainContainer'));	
	var heightC = $(document).outerHeight(true)-$('#header').outerHeight(true);
	$('#mainContainer').css("height", containerContent+"px");
	//var topF = heightC-$('#footer').outerHeight(true)-$('#footer').position().top;
	//console.log("document: "+$(document).outerHeight(true)+"px");
	//console.log("header: "+$('#header').outerHeight(true)+"px");
	//console.log("footer: "+$('#footer').outerHeight(true)+"px");
	//console.log("footer Top: "+$('#footer').position().top+"px");
	//console.log(topF);
	//$('#footer').css("top", topF+"px");
}
function setHeightSidebar(){
	var containerContent = getContentHeight($('#mainContainer'));
	var heightS = $(document).outerHeight(true)-$('#header').outerHeight(true);
	$('#sidebar').css("height", containerContent+"px");	
}
function setWidthRedbar(){
	var width = $(window).outerWidth(true)-$('#header .sidebar-switch').outerWidth(true)-$('#header .logo').outerWidth(true)-$('#header .online-banking').outerWidth(true);
	$('#header .menu').css({width: width+"px"});
}

$(document).ready(function() {

    var timer;
    
	$('#header .sidebar-switch a').click(function(){toggleSidebar("toggle");});
	$('#sidebar .sidebar-element .sidebar-collapser').click(function () {
		if ($("#sidebar").hasClass("opened")){
			var elementClass = $(this).data('name');
			//console.log($("#sidebar .sidebar-element .sidebar-header").outerHeight(true));
			//console.log($("#sidebar .sidebar-element."+elementClass).index(".sidebar-element"));
			$("#sidebar").scrollTop($("#sidebar .sidebar-element."+elementClass).index(".sidebar-element")*$("#sidebar .sidebar-element .sidebar-header").outerHeight(true));
			$('#sidebar .sidebar-element.active:not(.'+elementClass+')').removeClass("active");
			$('#sidebar .sidebar-element.'+elementClass).toggleClass("active");
			$('#sidebar .sidebar-element:not(.'+elementClass+') .collapse.in').slideUp().removeClass("in");
			var target = $($(this).data("target"));
			if (target.hasClass("in")) {
				target.slideUp().removeClass("in");
			} else {
				target.slideDown().addClass("in");
			}
		}
	});
	setWidthRedbar();
	setWidthContainer();
	setWidthFooter();
	setHeightSidebar();
	setHeightContainer();
	setPositionContainer();
	$(window).resize(function(){
		setWidthRedbar();
		setWidthContainer();
		setWidthFooter();
		setHeightSidebar();
		setHeightContainer();
		setPositionContainer();
	});
});