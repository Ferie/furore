var activeStart= [];
function addFields(){
	$('.daterangepicker .calendar .myLabel').remove();
	$('.daterangepicker .calendar').each(function(){
		var start = $('#calendarTools .input-daterange').data('daterangepicker').getStartDate();
		var end = $('#calendarTools .input-daterange').data('daterangepicker').getEndDate();
		$(this).find('thead').prepend('<tr class="myLabel"><th colspan="4">FROM <span class="startDate">'+start+'</span> TO <span class="endDate">'+end+'</span></th></tr>');
		//$(this).css("width", fieldWidth+"px");
	});
	$('.daterangepicker .calendar table thead th.prev i,.daterangepicker .calendar table thead th.next i').removeAttr('class');
	$('.daterangepicker .calendar.right tfoot').remove();
	$('.daterangepicker .calendar.right').each(function(){
		$(this).find('table').append('<tfoot><tr class="myApply"><th colspan="4"><button class="applyBtn btn btn-small">Confirm</button</th></tr></tfoot>');
		$(this).find('table .myApply button.applyBtn').click(function(){
			$('#calendarTools .input-daterange').data('daterangepicker').clickApply(this);
			});
	});
	
}
function updateFields(){
	$('.daterangepicker .calendar').each(function(){
		//var start = $('#calendarTools .input-daterange').data('daterangepicker').getStartDate();
		//var end = $('#calendarTools .input-daterange').data('daterangepicker').getEndDate();
		$(this).find('thead .myLabel .startDate').text(start);
		$(this).find('thead .myLabel .endDate').text(end);
	});
}
function setDataYear(){
	$('.daterangepicker .calendar').each(function(){
		var year = $(this).find('table thead th.month').text();
		$(this).find('.month').each(function(){
			var mname = $(this).text();
			$(this).html("<span>"+mname+"</span>")
			$(this).attr("data-datayear", year);
		});
	});
}
function activationDelayed(){
	$('.daterangepicker .calendar .month.available.myactive').removeClass("myactive");
	$('.daterangepicker .calendar .month.available.my-start-date').removeClass("my-start-date");
	$('.daterangepicker .calendar .month.available.my-end-date').removeClass("my-end-date");
	var haveRange =  $('.daterangepicker .calendar .month.in-range').exists();
	$.each(activeStart, function(i, v){
		$('.daterangepicker .calendar .month.available[data-datayear="'+v.year+'"][data-title="'+v.title+'"]').addClass("myactive");
		if (haveRange)
			$('.daterangepicker .calendar .month.available[data-datayear="'+v.year+'"][data-title="'+v.title+'"]').addClass("in-range");
		$('.daterangepicker .calendar .month.available[data-datayear="'+v.year+'"][data-title="'+v.title+'"]').addClass("my-"+(i==0?"start":"end")+"-date");
	});
}
function setWidth(){
	var fieldWidth = $('#calendarTools .input-daterange').outerWidth();
	$('.daterangepicker .calendar').css("width", fieldWidth+"px");
}
function setPosition(){
	var top = $('#calendarTools .input-daterange').offset().top+$('#calendarTools .input-daterange').outerHeight()-1;
	var left = $('#calendarTools .input-daterange').offset().left;
	$('.daterangepicker').css({ top: top, left: left});
}
function manageClick(calendar, element) {
	$('#calendarTools .input-daterange').data('daterangepicker').updateInputText();
	switch(calendar){
	case "left":
		activeStart[0]={ year: $(element).data("datayear"), title: $(element).data("title")};		
		$(".daterangepicker .calendar.left").hide();
		$(".daterangepicker .calendar.right").show();
		break;
	case "right":
		activeStart[1]={ year: $(element).data("datayear"), title: $(element).data("title")};
		break;
	}
}
function initDatepickerRange(element){
	element.daterangepicker({
		minViewMode: "month",
	    format: "MMM YYYY",
	    opens: "center",
	    autoApplyClickedRange: true
		},
	    function(start, end) {
	        $('#calendarTools .input-daterange div').addClass("selected").html('From <span>'+start.format('MMM/YY') + '</span> to <span>' + end.format('MMM/YY')+'</span>');
	        $('#calendarTools .dates.cross').addClass("selected");
	        /*$('#calendarTools .input-daterange').click(function(e){
	    		//e.preventDefault();
	    		//e.stopPropagation();
	    		//$(this).parent().trigger("click");
	    	});*/
	    });
	activeStart= [];
	element.click(function(){
		//$('#calendarTools .input-daterange div').removeClass("selected").html("Select range");
		$(".daterangepicker .calendar.left").show();
		$(".daterangepicker .ranges").hide();
		$(".daterangepicker .calendar.right").hide();
		setDataYear();
		addFields();
		setPosition();
		setWidth();
	});
	element.on('show.daterangepicker', function(ev, picker) {
		$(".daterangepicker .calendar.left .month.available").click(function(){manageClick("left", this);});
		$(".daterangepicker .calendar.right .month.available").click(function(){manageClick("left", this);});
	});
	element.on('calendarUpdated.daterangepicker', function(){
		$(".daterangepicker .calendar .month.available span").click(function(e){
			e.preventDefault();
			event.stopPropagation();
			//$(this).parent().trigger("click");
		});
		$(".daterangepicker .calendar.left .month.available").click(function(){manageClick("left", this);});
		$(".daterangepicker .calendar.right .month.available").click(function(){manageClick("right", this);});
		setDataYear();
		addFields();
		setPosition();
		setWidth();
		activationDelayed();
	});
}


var spinnerUBISManager;

$(document).ready(function() {
	

	spinnerUBISManager = $("#mainContainer").spinnerUBISManager({
				topElementSelector: '#calendarMessages',
				setElementsSelector: '#calendarMessages, #calendarPanelResults',
				htmlMessage: '',
				textMessage: 'Loading Events',
				autohide: true,
				millisecondsTimer: 4000,
				color: "#00afd0",
				shape: 'spiral',
				diameter: 50,
				density: 71,
				range: 1.1,
				fps: 25
				});
	spinnerUBISManager.utils._startSpinner();

	$(window).resize(function(){
		setPosition();
		setWidth();		
	});
	$('#calendarTools .cross.keys a').click(function(){
		$(this).parent().removeClass("selected");
		$('#calendarTools .keywords').val("").removeClass("selected");		
	});
	$('#calendarTools .cross.dates a').click(function(e){
		e.preventDefault();
		e.stopPropagation();
		$(this).parent().removeClass("selected");
		$('#calendarTools .input-daterange div').removeClass("selected").html("Select range");
		$('#calendarTools .input-daterange').data('daterangepicker').remove();
		initDatepickerRange($('#calendarTools .input-daterange'));
	});
	$('#calendarTools .keywords').focusout(function(){
			if($(this).val()!="") {
				$(this).addClass("selected");
				$(this).parent().find('.cross').addClass("selected");
			}
		})
		.focus(function(){
			$(this).removeClass("selected");
			$(this).parent().find('.cross').removeClass("selected");
		});

	initDatepickerRange($('#calendarTools .input-daterange'));
	
	
	$("#calendarTools .chosen-select").chosen({
			allow_single_deselect: true,
			disable_search: true,
		    width: "100%"}).change(function(){
		var $txt = $('#calendarTools .chosen-container-single .chosen-single-with-deselect span');
		if($txt.text().indexOf("(")>-1) {
			$txt.text($txt.text().substring(0, $txt.text().indexOf("(")));
		}
	});
	
	$('#calendarPanelResults .event .footer .attach').click(function(){
		$(this).toggleClass("collapsed");
		var swapText = $(this).text();
		if ($(this).data('memotext')==""){
			$(this).data('memotext', "Hide attachments");
		}
		$(this).text($(this).data('memotext'));
		$(this).data('memotext', swapText);
	});
	
	$('.collapse').on('shown.bs.collapse', function(){
		headerUBISManager.utils._setHeightContainer();
		headerUBISManager.utils._setHeightSidebar();
	});
	$('.collapse').on('hidden.bs.collapse', function(){
		headerUBISManager.utils._setHeightContainer();
		headerUBISManager.utils._setHeightSidebar();
	});
});