<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">

<style>
.tablehead {
	background-color: blue;
}

.tablehead tr {
	color: white;
}

.title-container {
	background-color: blue;
	width: 100vw;
	height: 100px;
	text-align: center;
}

.title-container h3 {
	color: white;
	padding: 25px;
}
</style>

<title>Student Directory</title>
</head>
<body>
	<div id="display">
		<h1>Enrolled Students</h1>
		<a href="showFormForAdd" class="btn btn-primary btn-sm mb-3"> Add Student </a>

		<table class="table table-bordered table-striped">
			<tr>
				<th>StudentID</th>
				<th>FirstName</th>
				<th>LastName</th>
				<th>Course</th>
				<th>Country</th>
				<th>Action</th>
			</tr>
			<c:forEach items="${student}" var="student">
				<tr>
					<td>${student.studentId }</td>
					<td>${student.firstName}</td>
					<td>${student.lastName}</td>
					<td>${student.course}</td>
					<td>${student.country}</td>
					
					<td>
						<!-- Add "update" button/link --> <a
						href="showFormForUpdate?studentId=${student.studentId}"
						class="btn btn-info btn-sm"> Update </a> <!-- Add "delete" button/link -->
						<a href="delete?studentId=${student.studentId}"
						class="btn btn-danger btn-sm"
						onclick="if (!(confirm('Are you sure you want to delete this student?'))) return false">
							Delete </a>
					</td>
				</tr>

			</c:forEach>
		</table>
	</div>
</body>
</html>