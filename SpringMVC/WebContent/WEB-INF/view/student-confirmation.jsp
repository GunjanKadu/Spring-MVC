<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
</head>
<body>
	The Student is Confirmed: ${student.firstName } ${student.lastName}
	<br>
	<br> Country: ${student.country }

	<br>
	<br> Programming Language: ${student.favoriteLanguage }
	<br>
	<br> Operating System:
	<ul>
		<c:forEach var="OS" items="${student.operatingSystems }">
			<li>${OS }</li>
		</c:forEach>
	</ul>
</body>
</html>