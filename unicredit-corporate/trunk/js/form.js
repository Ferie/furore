$(document).ready(function () {
	$('.checkbox input[type="checkbox"], .radio input[type="radio"]').iCheck({
		checkboxClass: 'icheckbox_ubis',
		radioClass: 'iradio_ubis',
		aria: true,
		labelHover: false,
		cursor: true,
		increaseArea: '20%'
	});
});