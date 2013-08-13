<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page session="false"%>
<html>
<head>
<title>Technology</title>
<link rel="stylesheet" href="<spring:theme code='stylesheet'/>" type="text/css" />
</head>
<body>
	<%-- Shifted to Sitemesh :D
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
				<li><a href="<c:url value="/project" />">Project</a></li>
				<li class="current_page_item"><a href="<c:url value="/technology" />">Technology</a></li>
				<li><a href="<c:url value="/employee" />">Employee</a></li>
				<li><a href="<c:url value="/reqt" />">Requirement</a></li>
				<li><a href="<c:url value="/schedule" />">Schedule</a></li>
				<li><a href="<c:url value="/services" />">Services</a></li>
				<li><a href="<c:url value="/department" />">Department</a></li>
				<li><a href="<c:url value="#" />">Cost</a></li>
			</ul>
		</div>
	</div> --%>
	
	<div id="page" class="container" style="overflow: auto;">
	<h3 style="text-align:left;">Add Technology</h3>
	<form method="get" action="<c:url value="/employee" />">

		<table>
			<tr>
				<td><label id="addTechnologyId">Add Technology(drop down)</label></td>
				<td><input id="addTechnologyId" /></td>
			</tr>
			<tr><td><br/></td></tr>
			<tr><td><p>Create a new technology:</p></td></tr>
			<tr>
				<td><label id="technologyId">Technology Id:</label></td>
				<td><input id="technologyId" value="1000" readonly="readonly"/></td>
				
				<td><label id="description">Description:</label></td>
				<td><input id="description" spellcheck="true"/></td>
			</tr>
			<tr>
				<td><label id="addEmployeeId">Add Employee(drop down)</label></td>
				<td><input id="addEmployeeId" /></td>
				<td><label id="addLocationId">Add Location(drop down)</label></td>
				<td><input id="addLocationId" /></td>
			</tr>
			
			<tr>
				<td><label id="addDepartmentId">Add Department(drop down)</label></td>
				<td><input id="addDepartmentId" /></td>
			</tr>
			<tr>
				<td><label id="addEmployeeId">Add Employee(drop down)</label></td>
				<td><input id="addEmployeeId" /></td>
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
