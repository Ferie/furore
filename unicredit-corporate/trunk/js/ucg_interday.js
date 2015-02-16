var lastLoad = 0;
function getIntradayData() {
	$.ajax({
		type: 'GET',
		url: 'data/interday.json',
		dataType: "json",
		success: function(data, textStatus, jqXHR){
			var toLoad = (lastLoad+1)%data.length;
			$('.ucg_interday .ucg_image img').attr("src", data[toLoad].src);
			$('.ucg_interday .ucg_interday_text .value').text(data[toLoad].value);
			$('.ucg_interday .ucg_interday_text .currency').text(data[toLoad].currency);
			$('.ucg_interday .ucg_interday_text .trend').text(data[toLoad].trend.value).removeAttr("class").addClass("trend").addClass(data[toLoad].trend.direction);
			$('.ucg_interday .ucg_interday_date .day').text(data[toLoad].day);
			$('.ucg_interday .ucg_interday_date .month').text(data[toLoad].month);
			$('.ucg_interday .ucg_interday_date .year').text(data[toLoad].year);
			$('.ucg_interday .ucg_interday_date .hours').text(data[toLoad].hours);
			$('.ucg_interday .ucg_interday_date .minutes').text(data[toLoad].minutes);
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
setInterval("getIntradayData()", 8000 );
});