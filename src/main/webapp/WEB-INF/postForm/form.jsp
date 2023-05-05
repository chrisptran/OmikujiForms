<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Omikuji</title>
</head>
<body>
<h1>Send an Omikuji!</h1>
<form action="process/omikuji/show" method="post">
		<div>
			<label>Pick any number from 5 to 25</label><br> <input
				type="number" name="number" />
		</div>
		<div>
			<label>Enter the name of any city</label><br> <input type="text" name="city"/>
		</div>
		<div>
			<label>Enter the name of any real person</label><br> <input
				type="text" name="person" />
		</div>
		<div>
			<label>Enter professional endeavor or hobby</label><br> <input
				type="text" name="endeavor" />
		</div>
				<div>
			<label>Enter any type of living thing</label><br> <input
				type="text" name="thing" />
		</div>
		<div>
			<label>Say something nice to someone</label><br> <input
				type="text" name="nice"/>
		</div>
		<p>Send and show a friend</p>
		<input type="submit" value="Send" />
</form>
</body>
</html>