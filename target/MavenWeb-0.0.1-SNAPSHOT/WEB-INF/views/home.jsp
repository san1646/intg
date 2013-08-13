<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page session="false" isELIgnored="false"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Home</title>
<%-- <link rel="stylesheet" href="<spring:theme code='stylesheet'/>"
	type="text/css" /> --%>
</head>
<body>
	<%-- <div id="header" style="text-align: right;">
		<ul>
			<li style="list-style: none;"><a href="<c:url value="/home" />">Home</a>
				| <a href="javascript:closeWindow();">Logout</a></li>
		</ul>
	</div> --%>
	<!-- class="titleClass" -->
	<div>
		<ul>
			<li style="list-style: none;">
				<p class="titleClass" style="text-align: center;">Proposal Life-cycle Management</p>
				<%-- ${app_name} --%>
			</li>
		</ul>
	</div>
	<%-- <div id="menu-wrapper">
		<div id="menu">
			<ul class="tabs">
				<li><a href="<c:url value="/project" />">Project</a></li>
				<li><a href="<c:url value="/technology" />">Technology</a></li>
				<li><a href="<c:url value="/home" />">Employee</a></li>
				<li><a href="<c:url value="/reqt" />">Requirement</a></li>
				<li><a href="<c:url value="/home" />">Schedule</a></li>
				<li><a href="<c:url value="/home" />">Services</a></li>
				<li><a href="<c:url value="/home" />">Cost</a></li>
			</ul>
		</div>
	</div> --%>
	
	<div id="page" class="container">
		<div id="box1">
			<h2 class="title" >User Projects</h2>
			<div style="clear: both;">&nbsp;</div>
			<ul class="entry">
				<li class="first"><a>User Project</a></li>
				<li><a>User Project</a></li>
				<li class="first"> <a href="<c:url value="/savedata" />">SaveData</a> </li> 
			</ul>
		</div>
		
		<div id="box2">
			<h2 class="title">Upcoming events</h2>
			<ul class="entry">
				<li><a>Event</a></li>
				<li><a>Event</a></li>
			</ul>
		</div>
		<!-- <div id="box3">
			<h2 class="title">This is a sample header</h2>
			<ul class="entry">
				<li class="first"><a>This is a sample text</a></li>
				
				<li><a>This is a sample text</a></li>
			</ul>
		</div> -->
	</div>
	<div id="page" class="container">
		<ul class="entry">
			<li ><a href="<c:url value="/project" />" style="font-family: Tahoma;">Create a Project</a> | <a href="<c:url value="/findproject" />" style="font-family: Tahoma;">Find Project</a></li>
		</ul>
		<ul class="entry">
			<li><a style="font-family: Tahoma;" href="<c:url value="/customer" />">Add Customer</a></li>
		</ul>
	</div>
	<%-- <div id="footer" class="container">
		<p>PLM System ${year} ${version}</p>
	</div> --%>
</body>

</html>
