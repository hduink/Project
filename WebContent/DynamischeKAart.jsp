<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <style>
       #map {
        height: 400px;
        width: 100%;
       }
    </style>
  </head>
  <body>
    <h3>Kaart van Dynamische locatie</h3>
    <div id="map"></div>
    <script>
//------------------------------------------------------------------------------------- 
  // Method om locatie vast te stellen  
    function initMap() {
	
	
       // var locatie = {lat: 52.51210747, lng: 6.09330297};
		var locatie = { Map.getLat : Map.getLng };        
        
        
        
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 18,
          center: locatie
    // Zwolle = {lat: 52.51210747, lng: 6.09330297}
    // dropdown in frontend. Keuze dropdown -> javascript versturen naar backend, java geeft lat/long aan.
    // Dit gaat via javascript weer terug naar de volgende pagina
    // Lat/Long moeten variabelen worden
//-------------------------------------------------------------------------------------  
        });
        var marker = new google.maps.Marker({
          position: uluru,
          map: map
        });
      }
      // Methode geeft nu 1 marker aan. Dit moeten meerdere markers worden aan de hand van de winkels
      // Schoenen / T-shirts / Broeken via dropdown -> Uitlezen welke winkels dit zijn via shopping
      // Deze winkels behouden markers, de rest moet weg worden gehaald.
      
      
      // Handmatig database maken om te testen. Winkels waardes meegeven (Soort, Locatie, Prijs)
      // Markers groeperen in nieuwe Arrays aan de hand van zoekresultaten
      // Gemarkeerde groepen zichtbaar, de overigen op hidden
//-------------------------------------------------------------------------------------  

      
    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCHeXJj-Ru0LFeql2tJ9Do88j_U8u-4VFw&callback=initMap">
    </script>
  </body>
</html>

