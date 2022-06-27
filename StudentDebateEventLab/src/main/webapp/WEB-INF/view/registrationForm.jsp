<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport">

<title>Student Form</title>
</head>
<body>
	<div class="container">

		<h3>Students List</h3>
		<hr>

		<p>Add Student</p>

		<form action="save" method="POST">


			<input type="hidden" name="studentId" value="${Student.studentId}" />

			<div class="form-inline">
				<input type="text" name="firstName" value="${Student.firstName}"
					class="form-control mb-4 col-4" placeholder="firstName">

				<div class="form-inline">
					<input type="text" name="lastName" value="${Student.lastName}"
						class="form-control mb-4 col-4" placeholder="lastname">

				</div>

				<div class="form-inline">

					<input type="text" name="course" value="${Student.course}"
						class="form-control mb-4 col-4" placeholder="course">



				</div>

				<div class="form-inline">

					<input type="text" name="country" value="${Student.country}"
						class="form-control mb-4 col-4" placeholder="country">

				</div>

				<button type="submit" class="btn btn-info col-2">Save</button>
		</form>

		<hr>
		<a href="./">Back to Students List</a>

	</div>
</body>
</html>