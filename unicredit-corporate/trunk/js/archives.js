var activeStart = [];

function addFields() {
	$('.daterangepicker .calendar .myLabel').remove();
	$('.daterangepicker .calendar').each(function () {
		var start = $('#archivesTools .input-daterange').data('daterangepicker').getStartDate();
		var end = $('#archivesTools .input-daterange').data('daterangepicker').getEndDate();
		$(this).find('thead').prepend('<tr class="myLabel"><th colspan="2">FROM <span class="startDate">' + start + '</span></th><th colspan="2">TO <span class="endDate">' + end + '</span></th></tr>');
		//$(this).css("width", fieldWidth+"px");
	});

	$('.daterangepicker .calendar table thead th.prev i,.daterangepicker .calendar table thead th.next i').removeAttr('class');
	$('.daterangepicker .calendar.right tfoot').remove();
	$('.daterangepicker .calendar.right').each(function () {
		$(this).find('table').append('<tfoot><tr class="myApply"><th colspan="4"><button class="applyBtn btn btn-small">Confirm</button</th></tr></tfoot>');
		$(this).find('table .myApply button.applyBtn').click(function () {
			$('#archivesTools .input-daterange').data('daterangepicker').clickApply(this);
		});
	});
}

function updateFields() {
	$('.daterangepicker .calendar').each(function () {
		//var start = $('#archivesTools .input-daterange').data('daterangepicker').getStartDate();
		//var end = $('#archivesTools .input-daterange').data('daterangepicker').getEndDate();
		$(this).find('thead .myLabel .startDate').text(start);
		$(this).find('thead .myLabel .endDate').text(end);
	});
}

function setDataYear() {
	$('.daterangepicker .calendar').each(function () {
		var year = $(this).find('table thead th.month').text();
		$(this).find('.month').each(function () {
			var mname = $(this).text();
			$(this).html("<span>" + mname + "</span>")
			$(this).attr("data-datayear", year);
		});
	});
}

function activationDelayed() {
	$('.daterangepicker .calendar .month.available.myactive').removeClass("myactive");
	$('.daterangepicker .calendar .month.available.my-start-date').removeClass("my-start-date");
	$('.daterangepicker .calendar .month.available.my-end-date').removeClass("my-end-date");
	var haveRange = $('.daterangepicker .calendar .month.in-range').exists();
	$.each(activeStart, function (i, v) {
		$('.daterangepicker .calendar .month.available[data-datayear="' + v.year + '"][data-title="' + v.title + '"]').addClass("myactive");
		if (haveRange)
			$('.daterangepicker .calendar .month.available[data-datayear="' + v.year + '"][data-title="' + v.title + '"]').addClass("in-range");
		$('.daterangepicker .calendar .month.available[data-datayear="' + v.year + '"][data-title="' + v.title + '"]').addClass("my-" + (i == 0 ? "start" : "end") + "-date");
	});
}

function setWidth() {
	var fieldWidth = $('#archivesTools .input-daterange').outerWidth();
	$('.daterangepicker').css("width", fieldWidth + "px");
	$('.daterangepicker .calendar').css("width", fieldWidth + "px");
}

function setPosition() {
	var top = $('#archivesTools .input-daterange').offset().top + $('#archivesTools .input-daterange').outerHeight() - 1;
	var left = $('#archivesTools .input-daterange').offset().left;
	$('.daterangepicker').css({top: top, left: left});
}

function manageClick(calendar, element) {
	$('#archivesTools .input-daterange').data('daterangepicker').updateInputText();
	switch (calendar) {
		case "left":
			activeStart[0] = {year: $(element).data("datayear"), title: $(element).data("title")};
			$(".daterangepicker .calendar.left").hide();
			$(".daterangepicker .calendar.right").show();
			break;
		case "right":
			activeStart[1] = {year: $(element).data("datayear"), title: $(element).data("title")};
			break;
	}
}

function initDatepickerRange(element) {
	element.daterangepicker({
		minViewMode: "month",
		format: "MMM YYYY",
		opens: "center",
		autoApplyClickedRange: true
	},
	function (start, end) {
		$('#archivesTools .input-daterange div').addClass("selected").html('From <span>' + start.format('MMM/YY') + '</span> to <span>' + end.format('MMM/YY') + '</span>');
		$('#archivesTools .dates.cross').addClass("selected");
		/*$('#archivesTools .input-daterange').click(function(e){
		 //e.preventDefault();
		 //e.stopPropagation();
		 //$(this).parent().trigger("click");
		 });*/
	});
	activeStart = [];
	element.click(function () {
		//$('#archivesTools .input-daterange div').removeClass("selected").html("Select range");
		$(".daterangepicker .calendar.left").show();
		$(".daterangepicker .ranges").hide();
		$(".daterangepicker .calendar.right").hide();
		setDataYear();
		addFields();
		setPosition();
		setWidth();
	});
	element.on('show.daterangepicker', function (ev, picker) {
		$(".daterangepicker .calendar.left .month.available").click(function () {
			manageClick("left", this);
		});
		$(".daterangepicker .calendar.right .month.available").click(function () {
			manageClick("left", this);
		});
	});
	element.on('calendarUpdated.daterangepicker', function () {
		$(".daterangepicker .calendar .month.available span").click(function (e) {
			e.preventDefault();
			event.stopPropagation();
			//$(this).parent().trigger("click");
		});
		$(".daterangepicker .calendar.left .month.available").click(function () {
			manageClick("left", this);
		});
		$(".daterangepicker .calendar.right .month.available").click(function () {
			manageClick("right", this);
		});
		setDataYear();
		addFields();
		setPosition();
		setWidth();
		activationDelayed();
	});
}



var spinnerUBISManager;

$(document).ready(function () {
	var filename = location.pathname.substr(location.pathname.lastIndexOf('/') + 1, location.pathname.length);

	spinnerUBISManager1 = $("#mainContainer").spinnerUBISManager({
		topElementSelector: '#archivesTools .input-daterange > div',
		setElementsSelector: '#archivesTools .input-daterange > div',
		idSpinner: 'spinner-loader1',
		htmlMessage: '',
		textMessage: 'Loading Events',
		fontSize: '16px',
		autohide: true,
		modeInline: true,
		millisecondsTimer: 3000,
		color: "#00afd0",
		shape: 'UBIS',
		diameter: 15,
		density: 71,
		range: 2,
		fps: 25
	});

	spinnerUBISManager2 = $("#mainContainer").spinnerUBISManager({
		topElementSelector: '#archivesPanelResults',
		setElementsSelector: '#archivesPanelResults',
		idSpinner: 'spinner-loader2',
		htmlMessage: '',
		textMessage: 'Loading Results',
		autohide: true,
		millisecondsTimer: 4000,
		color: "#00afd0",
		shape: 'UBIS',
		diameter: 40,
		density: 71,
		range: 2,
		fps: 25
	});

	spinnerUBISManager3 = $("#mainContainer").spinnerUBISManager({
		topElementSelector: '#header .online-banking',
		setElementsSelector: '#header .online-banking',
		idSpinner: 'spinner-loader3',
		htmlMessage: '',
		textMessage: 'Loading...',
		fontSize: '18px',
		autohide: true,
		modeInline: true,
		millisecondsTimer: 2000,
		color: "#00afd0",
		shape: 'UBIS',
		diameter: 20,
		density: 71,
		range: 2,
		fps: 25
	});

	if (filename == "archives.html") {
		spinnerUBISManager1.utils._startSpinner(spinnerUBISManager1.st);
		spinnerUBISManager2.utils._startSpinner(spinnerUBISManager2.st);
		spinnerUBISManager3.utils._startSpinner(spinnerUBISManager3.st);
	}

	$('#archives #loadMore button').click(function () {
		//$('#archives #moreEvents').hide();
		$('#archives #moreEvents').append($('#archives #archivesPanelResults .event2, #archives #archivesPanelResults .event3, #archives #archivesPanelResults .event4, #archives #archivesPanelResults .event5').clone());
		$('#archives #loadMore').remove();

		spinnerLoadMore = $("#moreEvents").spinnerUBISManager({
			topElementSelector: '#moreEvents',
			setElementsSelector: '#moreEvents',
			idSpinner: 'spinner-loader3',
			htmlMessage: '',
			textMessage: 'Loading More Events',
			autohide: true,
			millisecondsTimer: 4000,
			color: "#00afd0",
			shape: 'UBIS',
			diameter: 40,
			density: 71,
			range: 2,
			fps: 25
		});

		spinnerLoadMore.utils._startSpinner(spinnerLoadMore.st);
		//$('#archives #moreEvents').scrollTop($("#archives #moreEvents").offset().top);
		headerUBISManager.utils._setHeightContainer();
		headerUBISManager.utils._setHeightSidebar();
		$(window).scrollTop($("#archives #moreEvents").offset().top);
	})

	$(window).resize(function () {
		if ($('#archivesTools .input-daterange').exists()) {
			setPosition();
			setWidth();
		}
	});

	$('#archivesTools .cross.keys a').click(function () {
		$(this).parent().removeClass("selected");
		$('#archivesTools .keywords').val("").removeClass("selected");
	});

	$('#archivesTools .cross.dates a').click(function (e) {
		e.preventDefault();
		e.stopPropagation();
		$(this).parent().removeClass("selected");
		$('#archivesTools .input-daterange div').removeClass("selected").html("Select range");
		$('#archivesTools .input-daterange').data('daterangepicker').remove();
		initDatepickerRange($('#archivesTools .input-daterange'));
	});

	$('#archivesTools .keywords').focusout(function () {
		if ($(this).val() != "") {
			$(this).addClass("selected");
			$(this).parent().find('.cross').addClass("selected");
		}
	}).focus(function () {
		$(this).removeClass("selected");
		$(this).parent().find('.cross').removeClass("selected");
	});

	initDatepickerRange($('#archivesTools .input-daterange'));

	$("#archivesTools .chosen-select").chosen({
		allow_single_deselect: true,
		disable_search: true,
		width: "100%"
	}).change(function () {
		var $txt = $('#archivesTools .chosen-container-single .chosen-single-with-deselect span');
		if ($txt.text().indexOf("(") > -1) {
			$txt.text($txt.text().substring(0, $txt.text().indexOf("(")));
		}
	});

	$('#archivesPanelResults .event .footer .attach').click(function () {
		$(this).toggleClass("collapsed");
		var swapText = $(this).text();
		if ($(this).data('memotext') == "") {
			$(this).data('memotext', "Hide attachments");
		}
		$(this).text($(this).data('memotext'));
		$(this).data('memotext', swapText);
	});

	$('#socialSingleShare .icon a, #socialSingleShare .closer a').click(function () {
		$('#socialSingleShare .icon').toggleClass('collapsed');
		$('#socialSingleShare .collapse > div').toggle();
	});

	$('.collapse').on('shown.bs.collapse', function () {
		headerUBISManager.utils._setHeightContainer();
		headerUBISManager.utils._setHeightSidebar();
	});

	$('.collapse').on('hidden.bs.collapse', function () {
		headerUBISManager.utils._setHeightContainer();
		headerUBISManager.utils._setHeightSidebar();
	});

	$('.checkbox input[type="checkbox"]').iCheck({
//		checkboxClass: 'icheckbox',
		aria: true,
		labelHover: false,
		cursor: true,
		increaseArea: '20%'
	});
});