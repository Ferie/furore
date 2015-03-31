$(document).ready(function() {
	//var timer = null;
	var lastState = null;
	var outerHtml = function(element){
		return $("<div />").append($(element).clone()).html();
	};
	var getAbbr = function(string, words){
		var shorttext = "";
		var wordsArr = string.split(" ");
		if (wordsArr.length>20){
			$.each(wordsArr, function(i, e){
				if(i<=words){
					shorttext+=e+" ";
				}
			});	
			return shorttext+"... ";		
		} else {
			return string;
		}			
	}
	var extraxtData = function(table){
		var data = null;
		var tableType = $(table).data("tabletype");
		switch (tableType) {
		case 1:
			data = {
				labelFirst:  $(table).find('.container p:first-child').length>0?outerHtml($(table).find('.container p:first-child')):"",
				labelLast:  $(table).find('.container p:last-child').length>0?outerHtml($(table).find('.container p:last-child')):"",
				titleTh: outerHtml($(table).find('table .tableHead th:first-child')),
				headersTh: new Array(),
				tableRow: new Array()
				}
			$(table).find('table .tableHead th:not(:first-child)').each(function(i, e){
				data.headersTh.push(outerHtml(e));
			});
			$(table).find('table tr:not(.tableHead)').each(function(i, e){
				var swap = {
					titleTd: outerHtml($(e).find('td:first-child')),
					bodyTd: new Array()	
				};
				$(e).find('td:not(:first-child)').each(function(i1, e1){
					swap.bodyTd.push(outerHtml(e1));
				});
				data.tableRow.push(swap);
			});			
			break;
		case 2:
			data = {
				labelFirst:  $(table).find('.container p:first-child').length>0?outerHtml($(table).find('.container p:first-child')):"",
				labelLast:  $(table).find('.container p:last-child').length>0?outerHtml($(table).find('.container p:last-child')):"",
				headersTh: new Array(),
				tableRow: new Array()
				}
			$(table).find('table .tableHead th').each(function(i, e){
				data.headersTh.push(outerHtml(e));
			});
			$(table).find('table tr:not(.tableHead)').each(function(i, e){
				var swap = {
						bodyTd: new Array()	
					};
					$(e).find('td').each(function(i1, e1){
						swap.bodyTd.push(outerHtml(e1));
					});
					data.tableRow.push(swap);
					
					
				//data.tableRow.push(outerHtml(e));
			});
			break;
		case 3:
			data = {
				labelFirst:  $(table).find('.container p:first-child').length>0?outerHtml($(table).find('.container p:first-child')):"",
				labelLast:  $(table).find('.container p:last-child').length>0?outerHtml($(table).find('.container p:last-child')):"",
				titleTh: $(table).find('table .tableHead th:first-child').html(),
				headersTh: new Array(),
				tableRow: new Array()
				}
			$(table).find('table .tableHead th:not(:first-child)').each(function(i, e){
				data.headersTh.push($(e).html());
			});
			$(table).find('table tr:not(.tableHead)').each(function(i, e){
				var swap = {
					groupped: "",
					titleTd: "",
					bodyTd: new Array()	
				};
				if ($(e).find('td span').length>0){
					var rowNumber = $(e).find('td:first-child span').length;
					for (var i = 0; i < rowNumber; i++) {
						swap.groupped = "groupped ";
						swap.titleTd = $($(e).find('td:first-child span').get(i)).html();
						$(e).find('td:not(:first-child) span').each(function(i1, e1){
							if(i1%rowNumber==i) {
								swap.bodyTd.push($(e1).html());
							}
						});
						data.tableRow.push(swap);
						swap = {
								groupped: false,
								titleTd: "",
								bodyTd: new Array()	
							};
					}				
				} else {
					swap.titleTd = $($(e).find('td:first-child')).html();
					$(e).find('td:not(:first-child)').each(function(i1, e1){
						swap.bodyTd.push($(e1).html());
					});
					data.tableRow.push(swap);			
				}
			});			
			break;
		case 4:
			data = {
				labelFirst:  $(table).find('.container p:first-child').length>0?outerHtml($(table).find('.container p:first-child')):"",
				labelLast:  $(table).find('.container p:last-child').length>0?outerHtml($(table).find('.container p:last-child')):"",
				headersTh: new Array(),
				tableRow: new Array()
				}
			$(table).find('table .tableHead th:not(:first-child)').each(function(i, e){
				data.headersTh.push(outerHtml(e));
			});
			$(table).find('table tr:not(.tableHead)').each(function(i, e){
				var swap = {
					titleTd: outerHtml($(e).find('td:first-child')),
					bodyTd: new Array()	
				};
				$(e).find('td:not(:first-child)').each(function(i1, e1){
					swap.bodyTd.push(outerHtml(e1));
				});
				data.tableRow.push(swap);
			});		
			break;
		}
		var $note = $(table).find('[data-mobile-expand]');
		$(table).data("fulltextnote", $note.text());
		if ($note.length>0){
			$(table).data("shorttextnote", getAbbr($note.text(), $note.data("mobile-expand")));			
		}
		$(table).data("datatable", data);
	};
	var trasformTable = function(table){
		//Detect viewport
		var isMobile = isBreakpoint("xs");
		//Detect Table type
		var tableType = $(table).data("tabletype");
		if (lastState!=isMobile && isMobile){
			//Gone to MOBILE
			switch (tableType) {
			case 1:
				//Retrieve data
				var data = $(table).data("datatable");
				//build template
				var tableTemplate = "<div class='container'>{{=it.labelFirst}}<table><tbody>" +
						"{{~it.tableRow :value:index}}" +
						"<tr class='{{?index%2==0}}odd{{??index%2!=0}}even{{??}}{{?}} tableHead'>{{=it.titleTh}}</tr>" +
						"<tr class='{{?index%2==0}}odd{{??index%2!=0}}even{{??}}{{?}} tableHead'>{{=value.titleTd}}</tr>" +
						"{{~value.bodyTd :value2:index2}}" +
						"<tr class='{{?index%2==0}}odd{{??index%2!=0}}even{{??}}{{?}}'>" +
						"{{~it.headersTh :value3:index3}}" +
						"{{?index2==index3}}{{=value3}}{{?}}" +
						"{{~}}" +
						"{{=value2}}" +
						"</tr>" +
						"{{~}}" +
						"<tr class='{{?index%2==0}}odd{{??index%2!=0}}even{{??}}{{?}} spacer'><td colspan='2'></td></th>" +
						"{{~}}" +
						"</tbody></table>{{=it.labelLast}}</div>";
				
				
				var TemplateFn = doT.template(tableTemplate);
				//var newTable = TemplateFn(data);
				//Erase table
				//Rewrite table
				$(table).html(TemplateFn(data));
				$(table).find('table .tableHead th, table .tableHead td').attr("colspan", "2");
				
				break;
			case 2:
				//Retrieve data
				var data = $(table).data("datatable");
				//build template
				var tableTemplate = "<div class='container'>{{=it.labelFirst}}<table><tbody>" +
						"{{~it.tableRow :value:index}}" +
						"{{~value.bodyTd :value2:index2}}" +
						"<tr class='{{?index%2==0}}odd{{??index%2!=0}}even{{??}}{{?}}'>" +
						"{{~it.headersTh :value3:index3}}" +
						"{{?index2==index3}}{{=value3}}{{?}}" +
						"{{~}}" +
						"{{=value2}}" +
						"</tr>" +
						"{{~}}" +
						"<tr class='{{?index%2==0}}odd{{??index%2!=0}}even{{??}}{{?}} spacer'><td colspan='2'></td></th>" +
						"{{~}}" +
						"</tbody></table>{{=it.labelLast}}</div>";
				
				
				var TemplateFn = doT.template(tableTemplate);
				//var newTable = TemplateFn(data);
				//Erase table
				//Rewrite table
				$(table).html(TemplateFn(data));
				
				break;
			case 3:
				//Retrieve data
				var data = $(table).data("datatable");
				//build template
				var tableTemplate = "<div class='container'>{{=it.labelFirst}}<table><tbody>" +
						"<tr class='tableHead'>" +
						"<th>{{=it.titleTh}}</th>" +
						"</tr>" +
						"{{~it.tableRow :value:index}}" +
						"" +
						"<tr class='{{=value.groupped}}{{?index%2==0}}odd{{??index%2!=0}}even{{??}}{{?}} tableHead'><td>{{=value.titleTd}}</td></tr>" +
						"{{~value.bodyTd :value2:index2}}" +
						"<tr class='{{=value.groupped}}{{?index%2==0}}odd{{??index%2!=0}}even{{??}}{{?}}'>" +
						"{{~it.headersTh :value3:index3}}" +
						"{{?index2==index3}}<th>{{=value3}}</th>{{?}}" +
						"{{~}}" +
						"<td>{{=value2}}</td>" +
						"</tr>" +
						"{{~}}" +
						"<tr class='{{?index%2==0}}odd{{??index%2!=0}}even{{??}}{{?}} spacer'><td colspan='2'></td></th>" +
						"{{~}}" +
						"</tbody></table>{{=it.labelLast}}</div>";
				
				
				var TemplateFn = doT.template(tableTemplate);
				//var newTable = TemplateFn(data);
				//Erase table
				//Rewrite table
				$(table).html(TemplateFn(data));
				$(table).find('table .tableHead th, table .tableHead td').attr("colspan", "2");
				
				break;
			case 4:
				//Retrieve data
				var data = $(table).data("datatable");
				//build template
				var tableTemplate = "<div class='container'>{{=it.labelFirst}}<table><tbody>" +
						"{{~it.tableRow :value:index}}" +
						"<tr class='{{?index%2==0}}odd{{??index%2!=0}}even{{??}}{{?}} tableHead'>{{=value.titleTd}}</tr>" +
						"{{~value.bodyTd :value2:index2}}" +
						"<tr class='{{?index%2==0}}odd{{??index%2!=0}}even{{??}}{{?}}'>" +
						"{{~it.headersTh :value3:index3}}" +
						"{{?index2==index3}}{{=value3}}{{?}}" +
						"{{~}}" +
						"</tr><tr class='{{?index%2==0}}odd{{??index%2!=0}}even{{??}}{{?}}'>" +
						"{{=value2}}" +
						"</tr>" +
						"{{~}}" +
						"<tr class='{{?index%2==0}}odd{{??index%2!=0}}even{{??}}{{?}} spacer'><td></td></th>" +
						"{{~}}" +
						"</tbody></table>{{=it.labelLast}}</div>";
				
				
				var TemplateFn = doT.template(tableTemplate);
				//var newTable = TemplateFn(data);
				//Erase table
				//Rewrite table
				$(table).html(TemplateFn(data));
				$(table).find('table .tableHead th, table .tableHead td').attr("colspan", "2");
				
				break;
			}
			var $note = $(table).find('[data-mobile-expand]');
			var fulltext = $(table).data("fulltextnote");
			if(fulltext.length>$note.data("mobile-expand")){
				$note.text($(table).data("shorttextnote"));
				$note.append("<a class='more' href='javascript:void(0);'>+ More</a>");
				$note.find("a.more").each(function(){
					$(this).off("click");
					$(this).click(function(e){
						$(e.target).parent().text(fulltext);
						headerUBISManager.utils._setHeightContainers();
						$(e.target).remove();
					});
				});
			}
			
		} else if (lastState!=isMobile && !isMobile){
			//Gone to DESKTOP
			switch (tableType) {
			case 1:
				//Retrieve data
				var data = $(table).data("datatable");
				//build template
				var tableTemplate = "<div class='container'>{{=it.labelFirst}}<table><tbody>" +
						"<tr class='tableHead'>{{=it.titleTh}}" +
						"{{~it.headersTh :value3:index3}}" +
						"{{=value3}}" +
						"{{~}}" +
						"</tr>" +
						"{{~it.tableRow :value:index}}" +
						"<tr class='{{?index%2==0}}odd{{??index%2!=0}}even{{??}}{{?}}'>{{=value.titleTd}}" +
						"{{~value.bodyTd :value2:index2}}" +
						"{{=value2}}" +
						"{{~}}" +
						"</tr>" +
						"{{~}}" +
						"</tbody></table>{{=it.labelLast}}</div>";
				
				
				var TemplateFn = doT.template(tableTemplate);
				//var newTable = TemplateFn(data);
				//Erase table
				//Rewrite table
				$(table).html(TemplateFn(data));
				
				break;
			case 2:
				//Retrieve data
				var data = $(table).data("datatable");
				//build template
				var tableTemplate = "<div class='container'>{{=it.labelFirst}}<table><tbody>" +
						"<tr class='tableHead'>" +
						"{{~it.headersTh :value3:index3}}" +
						"{{=value3}}" +
						"{{~}}" +
						"</tr>" +
						"{{~it.tableRow :value:index}}" +
						"<tr class='{{?index%2==0}}odd{{??index%2!=0}}even{{??}}{{?}}'>" +
						"{{~value.bodyTd :value2:index2}}" +
						"{{=value2}}" +
						"{{~}}" +
						"</tr>" +
						"{{~}}" +
						"</tbody></table>{{=it.labelLast}}</div>";
				
				
				var TemplateFn = doT.template(tableTemplate);
				//var newTable = TemplateFn(data);
				//Erase table
				//Rewrite table
				$(table).html(TemplateFn(data));
				
				break;
			case 3:
				//Retrieve data
				var data = $.extend({}, $(table).data("datatable"));
				var newTableRow = Array();
				var grouppedRows = Array();
				var grouppedRow = {
						groupped: "groupped ",
						titleTd: "",
						bodyTd: Array()
					}
				for (var i = 0; i < data.tableRow.length; i++) {
					if (data.tableRow[i].groupped=="") {
						if(grouppedRow.titleTd!="" && grouppedRow.bodyTd.length>0){
							newTableRow.push(grouppedRow);
							grouppedRow = {
									groupped: "groupped ",
									titleTd: "",
									bodyTd: Array()
								}						
						}
						newTableRow.push(data.tableRow[i]);
					} else {
						grouppedRow.titleTd += '<span class="moreRows">'+data.tableRow[i].titleTd+'</span>';
						var bodyTd = data.tableRow[i].bodyTd;
						for (var ii = 0; ii < bodyTd.length; ii++) {
							if(typeof grouppedRow.bodyTd[ii]=="undefined"){
								grouppedRow.bodyTd[ii]='<span class="moreRows">'+bodyTd[ii]+'</span>';								
							} else {
								grouppedRow.bodyTd[ii] +='<span class="moreRows">'+bodyTd[ii]+'</span>';								
							}
						}
					}					
				}
				if(grouppedRow.titleTd!="" && grouppedRow.bodyTd.length>0){
					newTableRow.push(grouppedRow);
				}
				//desktopLayout = data;
				data.tableRow = newTableRow;
				
				//build template
				var tableTemplate = "<div class='container'>{{=it.labelFirst}}<table><tbody>" +
						"<tr class='tableHead'>" +
						"<th>{{=it.titleTh}}</th>" +
						"{{~it.headersTh :value3:index3}}" +
						"<th>{{=value3}}</th>" +
						"{{~}}" +
						"</tr>" +
						"{{~it.tableRow :value:index}}" +
						"<tr class='{{?index%2==0}}odd{{??index%2!=0}}even{{??}}{{?}}'>" +
						"<td>{{=value.titleTd}}</td>" +
						"{{~value.bodyTd :value2:index2}}" +
						"<td>{{=value2}}</td>" +
						"{{~}}" +
						"</tr>" +
						"{{~}}" +
						"</tbody></table>{{=it.labelLast}}</div>";
				
				
				var TemplateFn = doT.template(tableTemplate);
				//var newTable = TemplateFn(data);
				//Erase table
				//Rewrite table
				$(table).html(TemplateFn(data));
				break;
			case 4:
				//Retrieve data
				var data = $(table).data("datatable");
				//build template
				var tableTemplate = "<div class='container'>{{=it.labelFirst}}<table><tbody>" +
						"<tr class='tableHead'><th></th>" +
						"{{~it.headersTh :value3:index3}}" +
						"{{=value3}}" +
						"{{~}}" +
						"</tr>" +
						"{{~it.tableRow :value:index}}" +
						"<tr class='{{?index%2==0}}odd{{??index%2!=0}}even{{??}}{{?}}'>{{=value.titleTd}}" +
						"{{~value.bodyTd :value2:index2}}" +
						"{{=value2}}" +
						"{{~}}" +
						"</tr>" +
						"{{~}}" +
						"</tbody></table>{{=it.labelLast}}</div>";
				
				
				var TemplateFn = doT.template(tableTemplate);
				//var newTable = TemplateFn(data);
				//Erase table
				//Rewrite table
				$(table).html(TemplateFn(data));
				
				break;
			}

			var $note = $(table).find('[data-mobile-expand]');
			var fulltext = $(table).data("fulltextnote");
			if(fulltext.length>$note.data("mobile-expand")){
				$note.text(fulltext);
				$note.find("a.more").remove();				
			}
		}
	};
	var tablesNumber = $(".ucg_table[data-tabletype]").length;
	$(".ucg_table[data-tabletype]").each(function(i, value){
		extraxtData(value);
		trasformTable(value);
		if(i==(tablesNumber-1)){
			headerUBISManager.utils._setHeightContainers();
		}
	});
	$(window).resize(function(){
//		clearTimeout(timer);
//		timer = setTimeout(function(){
			$(".ucg_table[data-tabletype]").each(function(i, value){
				trasformTable(value);
				if(i==(tablesNumber-1)){
					headerUBISManager.utils._setHeightContainers();
				}			
			});
			lastState = isBreakpoint("xs");
//		}, 500);
	});
});