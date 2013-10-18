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
	<div id="accordion" style="font-size: medium;"> <!-- style="width: 800px; align: center; -->
		<h3>Projects</h3>
		<div>
				<p>User Project</p>
				<p>User Project 2</p>
				<p> <a href="<c:url value="/savedata" />">SaveData</a> </p>
		</div>
		<h3>Events</h3>
		<div>		
			<p>Events</p>			
			<p>Events 2</p>
		</div>
		<h3>Other Info</h3>
		<div>		
			<p>Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit</p>			
			<p>Sed eleifend nonummy diam. Praesent mauris ante, elementum et, bibendum at, posuere sit amet, nibh.</p>
		</div>
	</div>
	<div id="accordion" style="font-size: medium;">
		<ul class="entry">
			<li style="list-style: none;"><a href="<c:url value="/createProject" />" style="font-family: Tahoma;">Create a Project</a> | <a href="<c:url value="/findproject" />" style="font-family: Tahoma;">Find Project</a></li>
		</ul>
		<ul class="entry">
			<li style="list-style: none;"><a style="font-family: Tahoma;" href="<c:url value="/customer" />">Add Customer</a></li>
		</ul>
	</div>
	<%-- <div id="footer" class="container">
		<p>PLM System ${year} ${version}</p>
	</div> --%>
</body>

</html>
