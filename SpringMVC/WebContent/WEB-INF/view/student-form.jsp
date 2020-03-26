<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<form:form action="processForm" modelAttribute="student">
	First Name: <form:input path="firstName" />
		<br>
		<br>
	Last Name: <form:input path="lastName" />
		<br>
		<br>
	Country:
	<form:select path="country">
			<form:options items="${student.countryOptions }" />

		</form:select>
		<br>
		<br>
		Favorite Programming Language:
			<br>
		Java	<form:radiobutton path="favoriteLanguage" value="Java" />
		<br>
		C#<form:radiobutton path="favoriteLanguage" value="C#" />
		<br>
		JavaScript<form:radiobutton path="favoriteLanguage" value="JavaScript" />
		<br>
		PHP<form:radiobutton path="favoriteLanguage" value="PHP" />
		<br>
		Ruby<form:radiobutton path="favoriteLanguage" value="Ruby" />
		<br>
		<br>

		<input type="submit" value="Submit">
	</form:form>
</body>

</html>