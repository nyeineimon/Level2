<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3>With EL</h3>
	<form action="">
		<table>
			<tr>
				<td>User Name</td>
				<td>
					<input type="text" name="uname" value="${param.uname}" />
				</td>
			</tr>
			<tr>
				<td>Email</td>
				<td>
					<input type="email" name="email" value="${param.email}" />
				</td>
			</tr>
			<tr>
				<td></td>
				<td>
					<input type="submit" />
				</td>
			</tr>
		</table>
	</form>
	<hr />
		<dvi style="display:${(param.name== '' or empty param.email) ? 'none' : 'block'}">
			<h3>Result</h3>
			<p>Name: ${param.uname}</p>
			<p>Email: ${param.email}</p>
		</dvi>
</body>
</html>