$(document).ready(function() {
	$.ajax({
		type: 'GET',
		url: 'listkereta.xml',
		dataType: 'xml',
		success: function(xml) {
			var textToInsert = "";

			$(xml).find('car').each(function() {
				$("#div_carList").append(
					"<div class='container_car_list row'>" +
						"<div class='col-4 col-m-4'>" +
							"<img src='" + $(this).find("image").text() + "' class='img_car_big' alt='" + "'>" +
						"</div>" + 
						"<div class='col-8 col-m-8'>" +
							
							"<div class='container_car_spec'>" +

									"<br><span class='font_title'>" + $(this).find("name").text() + "</span>" +

									"<br><br><span>" + $(this).find("mileage").text() + "km </span><br>" +


								
									"<span>" + $(this).find("cc").text() + "L </span><br>" +
								

								
									"<span>" + $(this).find("transmission").text() + "</span><br>" +
								

									"<span>" + $(this).find("location").text() + "</span><br>" +

									"<br><span class='font_price'>RM " + $(this).find("price").text() + "</span>" +

									"<br><br><i class='fa fa-car fa-fw'></i><span>" + $(this).find("dealer").text() + " </span><span class='font_dealer'> : DEALER</span>" +

							"</div>" +
							
		
						"</div>" +
					"</div>"
				);
			});
		},
		error: function() {
			// Error handling function.
			alert("The XML File could not be processed correctly.");
		}
	});
});