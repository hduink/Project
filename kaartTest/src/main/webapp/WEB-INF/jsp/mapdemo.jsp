<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <style>
      #map {
        width: 100%;
        height: 400px;
      }
    </style>
  </head>
  <body>
    <h3>My Google Maps Demo</h3>
    <div id="map"></div>
    <script>
      function initMap() {
    	  	//the initMap function that initializes and 
    	    //adds the map when the web page loads. 
    	    //Use a script tag to include your own JavaScript 
    	    //which contains the initMap function.
        var uluru = {lat: 52.512943, lng: 6.092758};  
        	// next: creating a new Google maps object
        var map = new google.maps.Map(document.getElementById('map'), { //to find the map div on the webpage
          zoom: 14,
          center: uluru
        });
        //next creates a marker in the map
        var marker = new google.maps.Marker({
          position: uluru,
          map: map
        });
      }
    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDCssdHocAm9n76yFCLmhtP7tPNOo2nRiY&callback=initMap">
    </script>
  </body>
</html>