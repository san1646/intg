<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page session="false"%>
<html>
<head>
<title>Create Project</title>
<%-- <link rel="stylesheet" href="<spring:theme code='stylesheet'/>"	type="text/css" /> --%>
</head>
<body>
	<div id="header" style="text-align:right;">
		<ul>
			<li style="list-style: none;"><a href="<c:url value="/home" />">Home</a>
				| <a href="javascript:closeWindow();">Logout</a></li>
		</ul>
	</div>
	<h1 class="titleClass" style="text-align: center;">${app_name}</h1>

<%-- <div id="menu-wrapper">
		<div id="menu">
			<ul class="tabs">
				<li class="current_page_item"><a href="<c:url value="/project" />">Project</a></li>
				<li><a href="<c:url value="/technology" />">Technology</a></li>
				<li><a href="<c:url value="/home" />">Employee</a></li>
				<li><a href="<c:url value="/reqt" />">Requirement</a></li>
				<li><a href="<c:url value="/home" />">Schedule</a></li>
				<li><a href="<c:url value="/home" />">Services</a></li>
				<li><a href="<c:url value="/home" />">Cost</a></li>
			</ul>
		</div>
	</div> --%>
	
	<div id="page" class="container" style="overflow: auto;">
			<h2>Search Project</h2>
			<div>&nbsp;</div>
	
	<div id="page" class="container" >
	<form method="get" action="<c:url value="/project" />">

		<table >
			<tr>
				<td><label id="projectId">By Project Id:</label></td>
				<td><input id="projectId" /></td>
			</tr>

			<tr>
				<td><label id="customerId">By Customer:</label></td>
				<td><input id="customerId" /></td>
			</tr>
			
			<tr>
				<td colspan="2"><input type="submit" value="Search" /></td>
			</tr>
		</table>
	</form>
	</div>
	</div>
	<div id="footer" class="container">
		<p>
			PLM System ${year} ${version} 
		</p>
	</div>
</body>
</html>
