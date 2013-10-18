<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
	<form:form method="get" action="#" commandName="defaultProject">
			
				<table>
					<tr>
						<td><label id="projectId">Project Id</label></td>
						<td><form:input path="projectId" readonly="readonly" size="5" /></td>
						<td><label id="customerName">Customer Name:</label></td>
						<%-- <td> <form:input path="city" /> Walmart</td> --%>
						<td> <p style="font-style: italic;">Walmart</p> </td>
						<%-- <td><form:input path="customerId" /></td> --%>
						
						<!-- <td ><label id="customerType" >Customer Type</label></td> -->
						<%-- <td><form:input path="customerType" /></td>	 --%>
					</tr>
					<tr>
					<td><label>Customer Type </label></td>
					<td><form:select path="*">
							<form:option value="NONE" label="--- Select ---" />
							<form:option value="1" label="End User" />
							<form:option value="2" label="Integrator" />
							<form:option value="3" label="Both" />
							<%-- <form:options items="${customerTypesMap}" /> --%>
						</form:select></td>

				</tr>
					<tr>
						<td><label id="pocEmployeeId">POC Employee Id</label></td>
						<%-- <td><form:input path="pocEmployeeId" /></td> --%>

						<td><label id="employeeId">Add Employees (drop down)</label></td>
						<%-- <td><form:input path="employeeId" /></td> --%>
					</tr>
					<tr>
						<td><label id="locationId">Add Locations (drop down)</label></td>
						<%-- <td><form:input path="locationId" /></td> --%>

						<td><label id="designId">Add designs (drop down)</label></td>
						<%-- <td><form:input path="designId" /></td> --%>
					</tr>
					<tr>
						<td><label id="requirementId">Select requirement</label></td>
						<%-- <td><form:input path="requirementId" /></td> --%>
					</tr>
					<tr>
						<td colspan="2"><input type="submit" value="Next" /></td>
					</tr>
				</table>
			</form:form>
	</div>
	<%-- Shifted to Sitemesh :D 
	
	<div id="footer" class="container">
		<p>
			PLM System ${year} ${version} 
		</p>
	</div> --%>
</body>
</html>
