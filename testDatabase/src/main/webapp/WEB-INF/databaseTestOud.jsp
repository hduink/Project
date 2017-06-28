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
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
<style>
.row {
	padding: 20px 20px 20px 20px;
}

td {
	color: white;
	padding: 5px 5px 5px 5px;
}

.col-md-4{
padding: 15px 15px 15px 15px;
color: white;
background-color: #009999;
}
.input_form{

}
</style>

</head>

<body>
	<div class="row">
		<div class="col-md-4">
			<div class="logo">
				<h1>Shop Search</h1>
				<h2>What are you looking for?</h2>
			</div>
			<div class="input_form">
				<form action="/databaseTest" method="POST">
					<table>
						<tr>
							<td>shop</td>
							<td><input type="text" name="winkelnaam" /></td>
						</tr>
						<tr>
							<td>location</td>
							<td><input type="text" name="locatie" /></td>
						</tr>
						<tr>
							<td>product</td>
							<td><input type="text" name="product" /></td>
						</tr>
						<tr>
							<td>brand</td>
							<td><input type="text" name="merk" /></td>
						</tr>
						<tr>
							<td>image</td>
							<td><input type="text" name="afbeelding" /></td>
						</tr>
						<tr>
							<td>price</td>
							<td><input type="range" id="rangeInput" name="rangeInput"
								min="10" max="200" value="105"
								oninput="amount.value=rangeInput.value" /></td>
							<td><output name="amount" for="rangeInput"></output></td>
						</tr>
						<tr>
							<td><input class="btn btn-default" type="submit"
								value="submit">
							<td><input class="btn btn-default" type="reset"
								value="reset"></td>
						</tr>
					</table>
				</form>
			</div>
		</div>

		<div class="col-md-8">
			<div class="map">
				<h3>Kaart demo import data</h3>
				<script>
					function initMap() {
						var locatie = {
							lat : 52.090688,
							lng : 5.121647
						};
						var map = new google.maps.Map(document
								.getElementById('map'), { //to find the map div on the webpage
							zoom : 14,
							center : locatie
						});
						var marker = new google.maps.Marker({
							position : locatie,
							map : map
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