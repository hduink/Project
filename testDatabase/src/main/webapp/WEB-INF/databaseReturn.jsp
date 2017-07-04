<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Shopper login page</title>
<link href="css/ShopInlog.css" rel="stylesheet" type="text/css">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">
<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
<script
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDCssdHocAm9n76yFCLmhtP7tPNOo2nRiY&callback=initMap"></script>
<style>
.row {
	padding: 20px 20px 20px 20px;
}

.login {
	padding: 40px 40px 40px 40px;
	background-color: #009999;
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
			<div class="input_form">
				<form action="/databaseTest" method="POST">
					<p style="color: white;">location</p>
					<select id="locatie" name="locatie">
						<option value="choose" selected>choose</option>
						<option value="Utrecht">Utrecht</option>
						<option value="Amsterdam">Amsterdam</option>
						<option value="Zwolle">Zwolle</option>
					</select><br>
					<p style="color: white;">brand</p>
					<select id="merk" name="merk">
						<option value="choose" selected>choose</option>
						<option value="Adidas">Adidas</option>
						<option value="Nike">Nike</option>
						<option value="Sacha">Sacha</option>
						<option value="Dune London">Dune London</option>
						<option value="Filling Pieces">Filling Pieces</option>
					</select><br>
					<p style="color: white;">price</p>
					<select id="prijs" name="prijs">
						<option value="choose" selected>choose</option>
						<option value="0-99">0-99</option>
						<option value="100-149">100-149</option>
						<option value="150+">150+</option>
					</select><br>
					<input class="btn btn-default" type="submit" value="submit"></input> 
					<input class="btn btn-default" type="reset" value="reset"></input>
				</form>
			</div>
		</div>

		<div class="col-md-7">
			<div id="map">
				<h3>Kaart demo import data</h3>
				<script type="text/javascript">
					//				var lat = ${markers.getLat};
					//				var lng = ${markers.getLng};

					function initMap() {
						var map;
						map = new google.maps.Map(document.getElementById('map'),{
									zoom : 15,
									center : new google.maps.LatLng(52.090718,
											5.121597)
								});

						var features = [ {
							position : new google.maps.LatLng(52.0915, 5.1155)
						}, {
							position : new google.maps.LatLng(52.0915, 5.11575)
						}, {
							position : new google.maps.LatLng(52.0907, 5.11681)
						}, {
							position : new google.maps.LatLng(52.0909, 5.11791)
						}, {
							position : new google.maps.LatLng(52.0928, 5.11991)
						} ];

						var myLatLng = {
							lat : 52.090718,
							lng : 5.121597
						}
						var marker2 = new google.maps.Marker({
							position : myLatLng,
							map : map,
							title : 'shoptest'
						});

						features.forEach(function(feature) {
							var marker = new google.maps.Marker({
								position : feature.position,
								map : map
							});

							marker.setMap(map);
						});
						
					}
				</script>
				<script async defer
					src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDCssdHocAm9n76yFCLmhtP7tPNOo2nRiY&callback=initMap">
					
				</script>
			</div>
		</div>
	</div>
</body>