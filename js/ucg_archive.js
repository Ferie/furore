$(document).ready(function() {
	var initFilter = function(filter){
		$(filter).chosen({
			allow_single_deselect: false,
			disable_search: true,
			inherit_select_classes: true,
		    width: "100%"}).change(function(){
		    	buildResult(this);
		    });		
	};
	var fillResult = function($result, year){
		var resultTemplate = "{{~it.archive :result:index}}" +
				"<div class='ucg_archive_result{{?result.title=='' && result.attach.length==1}} single-without-title{{?}}'>" +
				"{{?result.date!=''}}" +
					"<div class='ucg_archive_date'>" +
					"<b>{{=result.date}}</b> {{=it.year}}" +
					"</div>" +
				"{{?}}" +
				"{{?result.title!=''}}" +
					"<div class='ucg_archive_title'>" +
					"<h5><b>{{=result.title}}</b></h5>" +
					"</div>" +
				"{{?}}" +
				"{{?result.attach.length>1}}" +
					"<div class='ucg_archive_attach multiple'>" +
					"<a href='javascript:void(0);' class='collapsed ucg_archive_linkcollapser' data-label='Hide'><span>Show</span> attachment</a>" +
					"<div class='panel panel-collapse collapse'>" +
					"<div class='panel ucg_linklist'>" +
					"<div class='container'>" +
					"<ul class='ucg_link_container'>" +
					"{{~result.attach :attach1:index1}}" +
						"<li class='ucg_download_link'>" +
						"<a href='{{=attach1.src}}'>" +
						"<b>{{=attach1.filetype}}</b>" +
						" | {{=attach1.name}}</a>{{?attach1.kbyte!=''}} ({{=attach1.kbyte}}kb){{?}}" +
						"</li>" +
					"{{~}}" +
					"</ul>" +
					"</div>" +
					"</div>" +
					"</div>" +
					"</div>" +
				"{{??result.attach.length==1}}" +
					"<div class='ucg_archive_attach single'>" +
					"<div class='panel ucg_linklist'>" +
					"<div class='container'>" +
					"<ul class='ucg_link_container'>" +
					"{{~result.attach :attach2:index2}}" +
						"<li class='ucg_download_link'>" +
						"<a href='{{=attach2.src}}'>" +
						"<b>{{=attach2.filetype}}</b>" +
						" | {{=attach2.name}}</a>{{?attach2.kbyte!=''}} ({{=attach2.kbyte}}kb){{?}}" +
						"</li>" +
					"{{~}}" +
					"</ul>" +
					"</div>" +
					"</div>" +
					"</div>" +
				"{{??}}" +
				"{{?}}" +
				"{{?result.grouppedattach.length>=1}}" +
					"<div class='ucg_archive_attach groupped'>" +
					"{{~result.grouppedattach :attach3:index3}}" +
					"<div class='ucg_archive_attach_group'>" +
					"{{?attach3.title!=''}}" +
						"<div class='ucg_archive_attach_group_title'>" +
						"<h5>{{=attach3.title}}</h5>" +
						"</div>" +
					"{{?}}" +
					"<div class='panel ucg_linklist'>" +
					"<div class='container'>" +
					"<ul class='ucg_link_container'>" +
					"{{~attach3.attach :attach4:index4}}" +
						"<li class='ucg_download_link'>" +
						"<a href='{{=attach4.src}}'>" +
						"<b>{{=attach4.filetype}}</b>" +
						" | {{=attach4.name}}</a>{{?attach3.kbyte!=''}} ({{=attach4.kbyte}}kb){{?}}" +
						"</li>" +
					"{{~}}" +
					"</ul>" +
					"</div>" +
					"</div>" +
					"</div>" +
					"{{~}}" +
				"{{?}}" +
				"</div>" +
				"{{~}}";
		
		var TemplateFn = doT.template(resultTemplate);
		$result.html(TemplateFn(year));
		headerUBISManager.utils._setHeightContainers();
		refreshListeners($result);
	};
	var refreshListeners = function($result){
		$result.find('.ucg_archive_linkcollapser').off("click");
		$result.find('.ucg_archive_linkcollapser').click(function(){
			$(this).parent().find(".collapse").collapse("toggle");
			$(this).toggleClass("collapsed");
			var label = $(this).find("span").text();
			$(this).find("span").text($(this).data("label"));
			$(this).data("label", label).attr("data-label", label);
		});
		$result.find('.collapse').on('shown.bs.collapse', function () {
			headerUBISManager.utils._setHeightContainers();
		});
		$result.find('.collapse').on('hidden.bs.collapse', function () {
			headerUBISManager.utils._setHeightContainers();
		});
	};
	var buildResult = function(filter){
		$.ajax({
			type: 'GET',
			url: $(filter).data("url"),
			dataType: "json",
			success: function(data, textStatus, jqXHR){
				var $result = $(filter).parents(".container").find(".ucg_archive_results");
				for (var i = 0; i < data.length; i++) {
					if($(filter).val()==data[i].year){
						fillResult($result, data[i]);
					}	
				}
			},
			error: function (jqXHR, textStatus, errorThrown){
				alert(textStatus+"\r\nStatus: "+jqXHR.status+"\r\nError: "+errorThrown);
			}
		});
		
	};
	var buildFilter = function(filter) {
			$.ajax({
				type: 'GET',
				url: $(filter).data("url"),
				dataType: "json",
				success: function(data, textStatus, jqXHR){
					$(filter).html("");
					$(filter).append('<option value=""></option>');
					for (var i = 0; i < data.length; i++) {
						$(filter).append('<option value="'+data[i].year+'">'+data[i].year+'</option>');
					}
					initFilter(filter);
				},
				error: function (jqXHR, textStatus, errorThrown){
					alert(textStatus+"\r\nStatus: "+jqXHR.status+"\r\nError: "+errorThrown);
				}
			});
	};
	var buildFilters = function() {
		$(".ucg_archive .chosen-select").each(function(i, e){
			buildFilter(e);
		});
	};
	buildFilters();
});