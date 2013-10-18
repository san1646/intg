<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="true" isELIgnored="false"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<!-- DataTables CSS -->
<link rel="stylesheet" type="text/css" href="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/css/jquery.dataTables.css" />
 
<!-- jQuery -->
<script type="text/javascript" charset="utf8" src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.2.min.js"></script>
 
<!-- DataTables -->
<script type="text/javascript" charset="utf8" src="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/jquery.dataTables.min.js"></script>
	
<link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.1/themes/sunny/jquery-ui.css" />
<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>	
<title>Home</title>
	
<style>
  #accordion-resizer {
    padding: 10px;
    width: 1000px;
    height: 600px;
  }
  /*This setting prevents panes from overflowing, adds a nice scrollbar, and makes home screen pretty!*/
  #accordion .ui-accordion-content {
    max-height: 500px;
    overflow-y: auto;
}
  </style>
  
  <script>
  $(function() {
    $( "#accordion" ).accordion({
      heightStyle: "content",
      autoHeight: false
    });
  });
  $(function() {
    $( "#accordion-resizer" ).resizable({
      minHeight: 140,
      minWidth: 200,
      resize: function() {
        $( "#accordion" ).accordion( "refresh" );
      }
    });
  });
  </script>

<!-- JS for DataTable -->
<script type="text/javascript">
$(document).ready( function () {
	$('#flexme').dataTable( {
		"bJQueryUI": true,
		"sPaginationType": "full_numbers",
		"sDom": '<"H"Tfr>t<"F"ip>',
		"oTableTools": {
			"aButtons": [
				"copy", "csv", "xls", "pdf",
				{
					"sExtends":    "collection",
					"sButtonText": "Save",
					"aButtons":    [ "csv", "xls", "pdf" ]
				}
			]
		},
		"aoColumns": [
		              { sWidth: '10%' },
		              { sWidth: '10%' },
		              { sWidth: '10%' },
		              { sWidth: '70%' }]
	} );
} );
</script>

</head>

<body>
	<div id="accordion-resizer" class="ui-accordion-content">
		<div id="accordion" style="font-size: medium;">
			<h3>Projects</h3>
			<div>
				<p>
				<form:form method="post" modelAttribute="projects" >
				<table id="flexme" width="100%">
				<thead>
                        <tr>
                                <th>   </th>
                                <th>Project Id</th>
                                <th>Customer Id</th>
                                <th></th>
                                
                        </tr>
                </thead>
                <tbody>
					<c:forEach items="${projects}" var="project" varStatus="status">
						<tr>
							<td align="center">${status.count}.</td>
							<td> ${project.projectId} <%-- <input name="projects[${status.index}].projectId"
								value="${project.projectId}" /> --%> </td>
								<td> ${project.customerId} </td>
							<td> <a href="<c:url value="/createProject?editProjectId=${project.projectId} "/>" style="color: blue;" 
							>Edit</a> <br /></td>
						</tr>
					</c:forEach>
				</tbody>
				</table>
				</form:form>
				</p>
			</div>
			
			<h3>Events</h3>
			<div>
				<p>Events</p>
				<p>Events 2</p>
			</div>
			<h3>Other Info</h3>
			<div>
				<p>Neque porro quisquam est qui dolorem ipsum quia dolor sit
					amet, consectetur, adipisci velit</p>
				<p>Sed eleifend nonummy diam. Praesent mauris ante, elementum
					et, bibendum at, posuere sit amet, nibh.</p>
				<h1>message : ${message}</h1>
			</div>
		</div>
	</div>

       
	<div style="font-size: medium;">
		<ul class="entry">
			<li style="list-style: none;"><a
				href="<c:url value="/createProject" />" style="font-family: Tahoma;">Create
					a Project</a> | <a href="<c:url value="/findproject" />"
				style="font-family: Tahoma;">Find Project</a></li>
		</ul>
		<ul class="entry">
			<li style="list-style: none;"><a style="font-family: Tahoma;"
				href="<c:url value="/customer" />">Add Customer</a> | <a
				href="<c:url value="/knightedrate" />" style="font-family: Tahoma;">Knighted
					Rate</a></li>
		</ul>
	</div>
	<%-- <div id="footer" class="container">
		<p>PLM System ${year} ${version}</p>
	</div> --%>
</body>

</html>
