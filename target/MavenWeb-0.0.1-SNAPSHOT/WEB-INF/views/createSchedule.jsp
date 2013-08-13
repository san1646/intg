<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page session="false" isELIgnored="false"%>

<html >
	<head>
		<title>Requirement</title>
		<link rel="stylesheet" href="<spring:theme code='stylesheet'/>" type="text/css"/>
	</head>
	<body>
	<script src="../js/jquery-2.0.3.js"></script>
    <script>
    window.onload = function() {alert( "welcome" );}
    $(function()
    		{
    			$('.date-pick').datePicker().val(new Date().asString()).trigger('change');
    		});
    </script>
	<%-- Shifted to Sitemesh :D
	<div id="header" style="text-align:right;">
		<ul>
			<li  style="list-style: none;"><a href="<c:url value="/home" />" >Home</a> |
			<a href="javascript:closeWindow();">Logout</a></li>
		</ul>
	</div>
		<h1 class="titleClass" style="text-align: center;">${app_name}</h1>
	<div>	<br /></div> 
		
		<div id="menu-wrapper">
		<div id="menu">
			<ul class="tabs">
				<li><a href="<c:url value="/project" />">Project</a></li>
				<li><a href="<c:url value="/technology" />">Technology</a></li>
				<li><a href="<c:url value="/employee" />">Employee</a></li>
				<li><a href="<c:url value="/reqt" />">Requirement</a></li>
				<li class="current_page_item"><a href="<c:url value="/home" />">Schedule</a></li>
				<li><a href="<c:url value="/services" />">Services</a></li>
				<li><a href="<c:url value="/department" />">Department</a></li>
				<li><a href="<c:url value="#" />">Cost</a></li>
			</ul>
		</div>
	</div> --%>
	
<div id="page" class="container" style="overflow: auto;">
<h3 style="text-align:left;">Schedule the project</h3>
	<form method="get" action="<c:url value="/services" />">

		<table>
			<tr>
				<td><label id="startDate">Start Date</label></td>
				<td><input id="startDate" value="07/31/2013" /></td>
				
				
			</tr>
			<tr><td><br/></td></tr>
			
			
			
			
			
			<tr><td><br/></td></tr>
			
			<tr>
				<td colspan="2"><input type="submit" value="Next" /></td>
			</tr>
		</table>
	</form>
	</div>

<%-- Shifted to Sitemesh :D
	<div id="footer" class="container">
	<p>PLM System ${year} ${version} </p>
</div> --%>
</body>

</html>
