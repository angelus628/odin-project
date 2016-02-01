$(document).ready(function($){
	var table = $('#table');

	$('#button').on('click', 'button', function(event) {
		table.children('.table-row').remove();
		askLimit();
	});

	var askLimit = function(){
		var limit = prompt('¿Cuántos cuadros de ancho?');

		if (typeof(limit) == 'undefined' || isNaN(limit) || Number(limit) <= 0){
			askLimit();
		};

		drawSquares(Number(limit));
	};

	var drawSquares = function(limit){
		for (var j = 0; j < limit; j++) {
			var tr = $('<div>').addClass('table-row');

			for (var i = 0; i < limit; i++) {
				var td = $('<div>').addClass('table-cell');
				tr.append(td);
			};

			table.append(tr);
		};
	};

	table.on('mouseenter', '.table-cell', function(event) {
		var r = Math.floor((Math.random() * 255) + 1);
		var g = Math.floor((Math.random() * 255) + 1);
		var b = Math.floor((Math.random() * 255) + 1);

		$(this).animate({backgroundColor:'rgb(' + r + ', ' + g + ', ' + b + ')'}, 3);		
	}).on('mouseleave', '.table-cell', function(event) {
		$(this).animate({backgroundColor:'#BAF64C'}, 'slow');
	});
});