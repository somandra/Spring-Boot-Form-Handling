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
 	
 	<h1>Select Gender</h1>
 	
	<form:form method="GET" modelAttribute="sex" commandName="student" class="form-horizontal" action="viewstudents2">
			<div class="row">
			<div class="form-group col-md-12">
				<label class="col-md-3 control-lable" for="sex">Sex</label>
				<div class="col-md-7" class="form-control input-sm">
					<form:radiobutton path="sex" name="sex" value="M" />Male 
	    			<form:radiobutton path="sex" name="sex" value="F" />Female
					<div class="has-error">
						<form:errors path="sex" class="help-inline"/>
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
