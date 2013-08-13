<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page session="false"%>
<html>
<head>
<title>Create Project</title>
<link rel="stylesheet" href="<spring:theme code='stylesheet'/>" type="text/css" />
</head>
<body>
	<div id="header" style="text-align:right;">
		<ul>
			<li style="list-style: none;"><a href="<c:url value="/home" />">Home</a>
				| <a href="javascript:closeWindow();">Logout</a></li>
		</ul>
	</div>
<h1 class="titleClass" style="text-align: center;">${app_name}</h1>
<div id="menu-wrapper">
		<div id="menu">
			<ul class="tabs">
				<li class="current_page_item"><a href="<c:url value="/project" />">Project</a></li>
				<li><a href="<c:url value="/technology" />">Technology</a></li>
				<li><a href="<c:url value="/employee" />">Employee</a></li>
				<li><a href="<c:url value="/reqt" />">Requirement</a></li>
				<li><a href="<c:url value="#" />">Schedule</a></li>
				<li><a href="<c:url value="/services" />">Services</a></li>
				<li><a href="<c:url value="/department" />">Department</a></li>
				<li><a href="<c:url value="#" />">Cost</a></li>
			</ul>
		</div>
	</div>
	
	<div id="page" class="container">
		<div id="box1">
			<h2>Create Project</h2>
			<div>&nbsp; </div>
			

			<form  id="input" action="">
			<div>
				<input type="radio" name="typeOfProject" id="blankProject"
					value="blank" /> <label for="blankProject">Blank Project</label> <br />
				<input type="radio" name="typeOfProject" id="copyProject"
					value="copy" /> <label for="copyProject">Copy Project</label> <br/>
				<input type="submit" value="Create"/>
				</div>
			</form>
		</div>
	</div>
	<div id="page" class="container">
	<form method="get" action="<c:url value="/employee" />">

		<table >
			<tr>
			
				<td><label id="projectId">Project Id</label></td>
				<td><input id="projectId" value="1000" readonly="readonly"/></td>
				<td><label id="customerId">Customer</label></td>
				<td><input id="customerId" /></td>
			</tr>
			<tr>
				<td><label id="pocEmployeeId">POC Employee Id</label></td>
				<td><input id="pocEmployeeId" /></td>
			
				<td><label id="employeeId">Add Employees (drop down)</label></td>
				<td><input id="employeeId" /></td>
			</tr>
			<tr>
				<td><label id="locationId">Add Locations (drop down)</label></td>
				<td><input id="locationId" /></td>
			
				<td><label id="designId">Add designs (drop down)</label></td>
				<td><input id="designId" /></td>
			</tr>
			<tr>
				<td><label id="requirementId">Select requirement</label></td>
				<td><input id="requirementId" /></td>
			</tr>

			<tr>
				<td colspan="2"><input type="submit" value="Next" /></td>
			</tr>
		</table>
	</form>
	</div>
	<%-- Shifted to Sitemesh :D 
	<div id="footer" class="container">
		<p>
			PLM System ${year} ${version} 
		</p>
	</div> --%>
</body>
</html>
