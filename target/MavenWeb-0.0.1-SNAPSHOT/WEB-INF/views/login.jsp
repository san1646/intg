<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page session="false" isELIgnored="false"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Home</title>
<link rel="stylesheet" href="<spring:theme code='stylesheet'/>"	type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/WEB-INF/jquery-ui-1.10.3.custom/js/jQuery-root-custom.js"></script>
</head>
<body>
	<div id="header" style="text-align:right;">
		<ul>
			<li style="list-style: none;"><a href="<c:url value="/" />">Home</a>
				| <a href="javascript:closeWindow();">Logout</a></li>
		</ul>
	</div>
	<h1 class="titleClass" style="text-align: center;">${app_name}</h1>
	
		
		<div id="accordion" class="container">
			<form id='f' action="<c:url value='j_spring_security_check' />"
				method="post">

				<table>
					<tr><td>
						<div id="box1">
							<h2 class="title">Login page</h2>
							<div style="clear: both;">&nbsp;</div>
						</div>
						</td>
					</tr>
					<tr>
						<td>User:</td>
						<td><input type='text' name='j_username' value='' /></td>
					</tr>
					<tr>
						<td>Password:</td>
						<td><input type='password' name='j_password' /></td>
					</tr>
					<tr>
						<td colspan='2'><input name="submit" type="submit"
							value="Submit" /></td>
					</tr>
					<tr>
						<td colspan='2'><input name="reset" type="reset" /></td>
					</tr>
				</table>

			</form>
		</div>
		<div id="page" class="container">
			<c:if test="${not empty error}">
				<div class="errorblock" >
					Your login attempt was not successful, try again.<br /> Caused :
					${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
				</div>
			</c:if>
		</div>
	

	<%-- <div id="footer" class="container">
		<p>PLM System ${year} ${version}</p>
	</div> --%>
</body>

</html>
