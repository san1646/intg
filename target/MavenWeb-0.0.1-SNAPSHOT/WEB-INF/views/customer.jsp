<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page session="false" isELIgnored="false"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Home</title>
<link rel="stylesheet" href="<spring:theme code='stylesheet'/>"
	type="text/css" />
</head>
<body>
	<div id="header" style="text-align: right;">
		<ul>
			<li style="list-style: none;"><a href="<c:url value="/home" />">Home</a>
				| <a href="javascript:closeWindow();">Logout</a></li>
		</ul>
	</div>
	<h1 class="titleClass" style="text-align: center;">${app_name}</h1>
	
	
	<div id="page" class="container" style="overflow: auto;" >
	<form method="get" action="<c:url value="/home" />">

		<table >
			<tr>
			
				<td><label id="customerId">Customer Id</label></td>
				<td><input id="customerId" value="1000" readonly="readonly"/></td>
			</tr>
			<tr>
				<td><label id="customerName">Customer Name</label></td>
				<td><input id="customerName" /></td>
				
				<td><label id="businessEntity">Business Entity</label></td>
				<td><input id="businessEntity" /></td>
				
				<td><label id="email">Email</label></td>
				<td><input id="email" /></td>
			</tr>
			
			<tr>
				<td><label id="primaryContact">Primary Contact</label></td>
				<td><input id="primaryContact" /></td>
				
				<td><label id="phone">Phone</label></td>
				<td><input id="phone" /></td>
				
				<td><label id="sic">SIC</label></td>
				<td><input id="sic" /></td>
			</tr>
			
			<!-- <tr>
				<td><label id=""></label></td>
				<td><input id="" /></td>
				
				<td><label id=""> </label></td>
				<td><input id="" /></td>
				
				<td><label id=""></label></td>
				<td><input id="" /></td>
			</tr>
			
			<tr>
				<td><label id=""></label></td>
				<td><input id="" /></td>
				
				<td><label id=""> </label></td>
				<td><input id="" /></td>
				
				<td><label id=""></label></td>
				<td><input id="" /></td>
			</tr> -->

			<tr>
				<td colspan="2"><input type="submit" value="Save" /></td>
			</tr>
		</table>
	</form>
	</div>
	
	<div id="footer" class="container">
		<p>PLM System ${year} ${version}</p>
	</div>
</body>

</html>
