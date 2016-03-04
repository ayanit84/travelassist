<!DOCTYPE html>
<html>
  <head>
  	<jsp:include page="/WEB-INF/pages/header.jsp"></jsp:include>
    <style>
      #map {
        width: 500px;
        height: 400px;
      }
    </style>
  </head>
  <body>
    <div id="map"></div>
    <script>
      function initMap() {
    	  var address = 'London, UK';

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
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?callback=initMap"
        async defer></script>
        
  </body>
</html>