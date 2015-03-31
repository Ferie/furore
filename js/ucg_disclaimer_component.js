$(document).ready(function () {
//	$('#mainContainer').on('shown.bs.modal', function () {
//		$('.ucg_disclaimer .modal .modal-dialog .modal-body').focus();
//	});

	// radio button
	$('.ucg_disclaimer .ucg_disclaimer_radio').on('click', function () {
		$('.ucg_disclaimer .ucg_disclaimer_radio').removeClass('checked');
		$(this).addClass('checked');
	});
});