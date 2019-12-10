<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>

<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Student Enrollment Form</title>
	<link href="css/bootstrap.css"      rel="stylesheet">
	<link href="css/custom.css"      rel="stylesheet">
	<link href="css/main.css"      rel="stylesheet">
</head>

<body>

 	<div class="form-container">
 	
 	<h1>Select Department</h1>
 	
	<form:form method="GET" modelAttribute="department" commandName="student" class="form-horizontal" action="viewstudents1">
	
	<div class="row">
			<div class="form-group col-md-12">
				<label class="col-md-3 control-lable" for="department">Department</label>
				<div class="col-md-7">
					<form:select path="department" id="department" class="form-control input-sm">
				        <form:option value="">Select Department</form:option>
			    	    <form:options items="${department}" />
				    </form:select>
					<div class="has-error">
						<form:errors path="department" class="help-inline"/>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="form-actions floatRight">
				<input type="submit" value="Submit" class="btn btn-primary btn-sm">
			</div>
		</div>
	
	</form:form>
	</div>
	</body>
	</html>
	