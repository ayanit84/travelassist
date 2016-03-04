/**
 * 
 */
function divToggle () {
	$('.view_more img').on('click', function(ev){
		$('.emp-details').css('display','none');
		$(ev.target).closest('.view_more').siblings('.emp-details').css('display','block');
	});
}

function countryChange(){
	var findCitiesUrl = "http://localhost:8080/servicemanager/service/country/cities/";
	$('#state').change(function(){
		$.getJSON(findCitiesUrl + $.cookie("coun") + '/' + $(this).val(), function(data) 
				{
					// clear existing one.
					$('#city-button ').find("span").html("Select City");
					var html = '';
					var details = data.details;
					var len = details.length;
					for ( var i = 0; i < len; i++) {
						html += '<option value="' + details[i].key + '">'
								+ details[i].value + '</option>';
					}
	 
					$('#city').html(html);
				});
	});
}