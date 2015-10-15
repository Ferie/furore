var lastLoad = 0;
var timer;
jQuery(document).ready(function() {
	var getIntradayData = function(spinners){
		$.each(spinners, function(i, e){
			e.utils._startSpinner(e.st);
		});
		clearTimeout(timer);
		timer = setTimeout(function(){ 
			$.ajax({
				type: 'GET',
				url: '../data/intraday.json',
				dataType: "json",
				success: function(data, textStatus, jqXHR){
					var toLoad = (lastLoad+1)%data.length;
					$('.ucg_intraday .ucg_img img').attr("src", data[toLoad].src);
					$('.ucg_intraday .ucg_intraday_text .value').text(data[toLoad].value);
					$('.ucg_intraday .ucg_intraday_text .currency').text(data[toLoad].currency);
					$('.ucg_intraday .ucg_intraday_text .trend').text(data[toLoad].trend.value).removeAttr("class").addClass("trend").addClass(data[toLoad].trend.direction);
					$('.ucg_intraday .ucg_intraday_date .day').text(data[toLoad].day);
					$('.ucg_intraday .ucg_intraday_date .month').text(data[toLoad].month);
					$('.ucg_intraday .ucg_intraday_date .year').text(data[toLoad].year);
					$('.ucg_intraday .ucg_intraday_date .hours').text(data[toLoad].hours);
					$('.ucg_intraday .ucg_intraday_date .minutes').text(data[toLoad].minutes);
					lastLoad = toLoad;
					$.each(spinners, function(i, e){
						e.utils._stopSpinner(e.st);
					});
				},
				error: function (jqXHR, textStatus, errorThrown){
					alert(textStatus+"\r\nStatus: "+jqXHR.status+"\r\nError: "+errorThrown);
				}
			});			
		}, 2000);
		
	};

	var spinnerUBISManagers = Array();
	spinnerUBISManagers.push($("#mainContainer").spinnerUBISManager({
		topElementSelector: '.ucg_image.ucg_intraday',
		setElementsSelector: '.ucg_image.ucg_intraday',
		idSpinner: 'spinner-loader2',
		htmlMessage: '',
		textMessage: 'Loading Image',
		autohide: false,
		modeInline: false,
		millisecondsTimer: 3000,
		color: "#00afd0",
		shape: 'UBIS',
		diameter: 30,
		density: 71,
		range: 2,
		fps: 25
		}));
	spinnerUBISManagers.push($("#mainContainer").spinnerUBISManager({
		topElementSelector: '.ucg_intraday_date',
		setElementsSelector: '.ucg_intraday_date',
		idSpinner: 'spinner-loader3',
		htmlMessage: '',
		textMessage: 'Loading Date and Time',
		fontSize: '16px',
		autohide: false,
		modeInline: true,
		millisecondsTimer: 3000,
		color: "#00afd0",
		shape: 'UBIS',
		diameter: 20,
		density: 71,
		range: 2,
		fps: 25
		}));
	getIntradayData(spinnerUBISManagers);
	setInterval(function(){
			getIntradayData(spinnerUBISManagers);
		}, 18000 );
});