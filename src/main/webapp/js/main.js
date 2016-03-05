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
					//$('#city-button ').find("span").html("Select City");
					var html = '<h2 class="strong-cls" style="text-align:center;">City</h2><select name="city" id="city" class="ui-select ui-btn"><option value="Select City">Select City</option>';
					var details = data.details;
					var len = details.length;
					for ( var i = 0; i < len; i++) {
						html += '<option value="' + details[i].key + '">'
								+ details[i].value + '</option>';
					}
						html += '</select>';
					$('#city').html(html); 
				});
	});
}
function initMap() {
		var e = document.getElementById("city");
	var strUser = e.options[e.selectedIndex].text;
	  var address = ''+ strUser+','+$.cookie("coun")+'';
	//var address = ''+ strUser+','+$.cookie("coun")+'';
	   var map = new google.maps.Map(document.getElementById('map'), { 
	       mapTypeId: google.maps.MapTypeId.TERRAIN,
	       zoom: 6
	   });

	   var geocoder = new google.maps.Geocoder();

	   geocoder.geocode({
	      'address': address
	   }, 
	   function(results, status) {
	      if(status == google.maps.GeocoderStatus.OK) {
	         new google.maps.Marker({
	            position: results[0].geometry.location,
	            map: map
	         });
	         map.setCenter(results[0].geometry.location);
	      }
	      else {
	         // Google couldn't geocode this request. Handle appropriately.
	      }
	   });
}
function urlOmit(){
	//window.location.href = window.location.href.split('?')[0];
	initMap();
}



