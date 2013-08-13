<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page session="false"%>
<html>
<head>
<title>Project</title>
</head>
<body>
	<div id="page" class="container" style="overflow: auto;">
	<h3 style="text-align:left;">Add Project</h3>
	<div>
					<input type="radio" name="typeOfProject" id="blankProject"
						value="blank" /> <label for="blankProject">Blank Project</label>
					<br /> <input type="radio" name="typeOfProject" id="copyProject"
						value="copy" /> <label for="copyProject">Copy Project</label> <br />
					<input type="submit" value="Create" />
				</div>
	<form method="get" action="<c:url value="/employee" />">
				<table>
					<tr>
						<td><label id="projectId">Project Id</label></td>
						<td><input id="projectId" value="1000" readonly="readonly" /></td>
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
