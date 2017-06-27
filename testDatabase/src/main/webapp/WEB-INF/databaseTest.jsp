<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html> 
<html>
<head>
<title>Shopper login page</title>
<link href="ShopInlog.css" rel="stylesheet">
</head>
<body>

	<div id="wrapper">
		<div id="header">
			<div id="header_top">
				<div id="logo">
					<h1>Shop Search</h1>
					<h2>What are you looking for?</h2>
				</div>
			</div>
			<div id="header_center">
				<div id="input_form">
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
								<td><input type="range" min="10" max="200" name="prijs" />200</td>
							</tr>
							<tr>
								<td colspan="2">
									<input type="submit" name="action" value="Add" />
								</td> 
							</tr>
							<tr>	
								<td colspan="2">
									<input type="reset" value="Reset" />
								</td>
							</tr>
						</table>
					</form>
				</div>
				
			</div>
		</div>
	</div>