var lastLoad = 0;
function getIntradayData() {
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
		},
		error: function (jqXHR, textStatus, errorThrown){
			alert(textStatus+"\r\nStatus: "+jqXHR.status+"\r\nError: "+errorThrown);
		}
	});
// $.ajax({
// type: 'POST',
// url: '/it.intradayimage.html',
// beforeSend: function(x) {
// if (x && x.overrideMimeType) x.overrideMimeType("application/txt;charset=UTF-8");
// },
// success: function(data) {
// $('#intraday_image').attr('src',data);
// }/*,
// error: function(){
// alert('Failed to retrieve intraday image');
// }*/
// });
};
jQuery(document).ready(function() {
getIntradayData();
setInterval("getIntradayData()", 18000 );
});