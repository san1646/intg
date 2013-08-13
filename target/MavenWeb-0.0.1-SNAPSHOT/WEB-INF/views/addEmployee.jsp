<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page session="false" isELIgnored="false"%>

<html>
<head>
<title>Requirement</title>
<link rel="stylesheet" href="<spring:theme code='stylesheet'/>"
	type="text/css" />
</head>
<body>
	<%-- Shifted to Sitemesh :D 
	<div id="header" style="text-align: right;">
		<ul>
			<li style="list-style: none;"><a href="<c:url value="/home" />">Home</a>
				| <a href="javascript:closeWindow();">Logout</a></li>
		</ul>
	</div>
	<h1 class="titleClass" style="text-align: center;">${app_name}</h1>
	<div>
		<br />
	</div>

	<div id="menu-wrapper">
		<div id="menu">
			<ul class="tabs">
				<li><a href="<c:url value="/project" />">Project</a></li>
				<li><a href="<c:url value="/technology" />">Technology</a></li>
				<li class="current_page_item"><a href="<c:url value="/home" />">Employee</a></li>
				<li><a href="<c:url value="/reqt" />">Requirement</a></li>
				<li><a href="<c:url value="#" />">Schedule</a></li>
				<li><a href="<c:url value="/services" />">Services</a></li>
				<li><a href="<c:url value="/department" />">Department</a></li>
				<li><a href="<c:url value="#" />">Cost</a></li>
			</ul>
		</div>
	</div> --%>

	<div id="page" class="container" style="overflow: auto;">
		<h3 style="text-align: left;">Add Employee</h3>
		<form method="get" action="<c:url value="/reqt" />">

			<table>
				<tr>
					<td><label id="employeeId">Employee Id</label></td>
					<td><input id="employeeId" value="1000" readonly="readonly" /></td>
				</tr>
				<tr>
					<td><label id="empTitle">Title</label></td>
					<td><input id="empTitle" value="" /></td>

					<td><label id="empName"></label>Name</td>
					<td><input id="" value="" /></td>

					<td><label id="level"></label>Level</td>
					<td><input id="" value="" /></td>
				</tr>
				<tr>
					<td><label id="empAddressLine1">Address Line 1</label></td>
					<td><input id="" value="" /></td>

					<td><label id="empAddressLine2">Address Line 2</label></td>
					<td><input id="" value="" /></td>

					<td><label id="city">City</label></td>
					<td><input id="" value="" /></td>

				</tr>
				<tr>
					<td><label id="state">State</label></td>
					<td><input id="" value="" /></td>

					<td><label id="zipcode">Zipcode</label></td>
					<td><input id="" value="" /></td>

					<td><label id="zipplus4">Zip plus(4)</label></td>
					<td><input id="" value="" /></td>
				</tr>
				<tr>
					<td><label id="province">Province</label></td>
					<td><input id="" value="" /></td>

					<td><label id="country">Country</label></td>
					<td><input id="" value="" /></td>

					<td><label id="postalcode">Postal code</label></td>
					<td><input id="" value="" /></td>

				</tr>
				<tr>
					<td><label id="dateOfBirth">Date Of Birth</label></td>
					<td><input id="" value="" /></td>

					<td><label id="empStartDate">Start Date</label></td>
					<td><input id="" value="" /></td>

					<td><label id="empEndDate">End Date</label></td>
					<td><input id="" value="" /></td>

				</tr>
				<tr>
					<td><label id="sme">SME</label></td>
					<td><input id="" value="" /></td>

					<td><label id="email">Email</label></td>
					<td><input id="" value="" /></td>

					<td><label id="workPhone">Work Phone</label></td>
					<td><input id="" value="" /></td>

				</tr>
				<tr>
					<td><label id="mobilePhone">Mobile Phone</label></td>
					<td><input id="" value="" /></td>




				</tr>
				<tr>
					<td><br /></td>
				</tr>





				<tr>
					<td><br /></td>
				</tr>

				<tr>
					<td colspan="2"><input type="submit" value="Next" /></td>
				</tr>
			</table>
		</form>
	</div>
	<%-- Shifted to Sitemesh :D 
	<div id="footer" class="container">
		<p>PLM System ${year} ${version}</p>
	</div> --%>
</body>

</html>
