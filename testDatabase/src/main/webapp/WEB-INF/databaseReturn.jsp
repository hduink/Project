<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Shopper login page</title>
<link href="css/ShopInlog.css" rel="stylesheet" type="text/css">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
<!-- JQuery library -->
<script
  src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!--  Latest compiled Javascript -->
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>

<style>
.row {
	padding: 20px 20px 20px 20px;
}

.login {
	padding: 40px 40px 40px 40px;
	background-color: #009999;
	height: 600px;
}

.logo {
	color: white;
	font-family: Century Gothic;
}

.input-form {
	color: black;
}

p {
	padding-top: 20px;
	font-family: Century Gothic;
	font-size: 16px;
}

#map {
	width: 100%;
	height: 600px;
}

.row {
	width: auto;
	height: 600px;
}

.slider {
	width: 100px;
}
</style>

</head>

<body>
	<div class="row">
		<div class="col-md-5 login">
			<div class="logo">
				<h1>Shop Search</h1>
				<h2>What are you looking for?</h2>
			</div>
			<div id="invulling" color="white">
				<a> <img id="afbeelding"/></a>
				<p id="merk"></p>
				<p id="naam"></p>
				<p id="echte_prijs"></p>			
			</div>
		</div>

		<div class="col-md-7">
			<div id="map">
				<h3>Kaart demo import data</h3>
				<script type="text/javascript">

					function initMap() {
						var map;
						map = new google.maps.Map(document.getElementById('map'),{
									zoom : 15,
									center : new google.maps.LatLng(52.368647, 4.893116)
						});
						var locatie = [
							<c:forEach items="${filter}" var="items">
								['${items.naam}', '${items.merk}', '${item.prijs}', '${items.lat}', '${items.lng}', '${items.echte_prijs}', '${items.afbeelding}'],
							</c:forEach>
						];		
						
						for(var i=0; i < locatie.length; i++){
													
							var marker;
								 marker = new google.maps.Marker({
										position : new google.maps.LatLng(locatie[i][3],locatie[i][4]),
										map : map,
										title : locatie[i][0]
								});
								console.log("marker" + marker.position);
								}
						google.maps.event.addListener(
								marker,'click',
								(function (marker, i){
									return function(){
										document.getElementById("naam").innerHTML = (locatie[i][0]);
										document.getElementById("merk").innerHTML = (locatie[i][1]);
										document.getElementById("echte_prijs").innerHTML = (locatie[i][5]);
										document.getElementById("afbeelding").src = (locatie[i][6]);
									}
								})(marker,i));
					}
					
				</script>
				<script async defer
					src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDCssdHocAm9n76yFCLmhtP7tPNOo2nRiY&callback=initMap">
					
				</script>
			</div>
		</div>
	</div>
</body>