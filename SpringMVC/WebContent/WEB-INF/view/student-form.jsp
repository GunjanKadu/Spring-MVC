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
		 <form:radiobuttons path="favoriteLanguage"
			items="${student.favoriteLanguageOptions}" />
		<br>
		<br>

	Operating System:
		Linux<form:checkbox path="operatingSystems" value="Test" />
		Windows<form:checkbox path="operatingSystems" value="Test1" />
		Mac<form:checkbox path="operatingSystems" value="Test2" />
		<br>
		<br>
		<input type="submit" value="Submit">
	</form:form>
</body>

</html>