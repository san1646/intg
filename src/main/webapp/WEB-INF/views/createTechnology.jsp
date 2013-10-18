<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false" isELIgnored="false"%>
<html>
<head>
<title>Technology</title>
<link rel="stylesheet"
	href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.1/themes/sunny/jquery-ui.css" />
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script>
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.9.1/jquery-ui.min.js"></script>
<script type="text/javascript"
	src="src/main/webapp/jquery.cookies.2.2.0.js"></script>
<script type="text/javascript"
    src="http://code.jquery.com/jquery-1.10.1.min.js">
	
	<!-- Custom Scripts: Sanket Bharaswadkar -->
	<%-- <script type="text/javascript" src="${context}/scripts/jquery191-ajax-technology.js.js"></script> --%>
	<script type="text/javascript" src="<c:url value="/scripts/jquery191-ajax-technology.js" /> "></script>
	
<script type="text/javascript">
	$(function() {
		var cookieName = 'stickyAccordion';

		$("#accordion,#accordion2,#accordion3,#accordion4,#accordion5")
				.accordion({
					collapsible : true,
					icons : {
						/* ui-icons are for plus and minus signs for the collapsibles;
						Currently, only the plus sign is working; 
						Could not diagnose for the minus sign*/
						'header' : 'ui-icon-plus',
						'headerSelected' : 'ui-icon-minus'
					},
					/* hieghtStyle resizes the accordion box accroding to content;
					 	    Variable content size will not have scroll bars*/
					heightStyle : "content",
					active : false
				/* active: ( $.cookies.get( cookieName ) || false),
				change: function( e, ui )
				{
					$.cookies.set( cookieName, $( this ).find( 'h3' ).index ( ui.newHeader[0] ) );
				} */
				});

	});
	
	$(window).load(
		    function() {
		        alert($('div').width());
		    }
		);
</script>

<script type="text/javascript">
	/*changeFunc loads the KnightedDiv only when the knighted technology is selected from the dropdown;
	 * It is hidden earlier and not display: none; It is because display has issues with 
	 the box size after it is made visible through the JavaScript;
	 */
	function changeFunc() {
		//document.getElementById('knightedDiv').style.display= 'none';
		var selectBox = document.getElementById("technology12");
		var selecValue = selectBox.options[selectBox.selectedIndex].value;
		if (selectBox.selectedIndex === 1) {
			document.getElementById('knightedDiv').style.visibility = 'visible';
		} else {
			document.getElementById('knightedDiv').style.visibility = 'hidden';
		}
	}
</script>


<script type="text/javascript">
var str = $("#knightedWBS").serialize();
	 function crunchifyAjax() {
		$.ajax({
			type:"get",
			/* data: str, */
			url : '/totalHours',
			async: false,
			/* dataType: "json", */
			/* success: function(){
			       alert("success");
			    } */
			    success : function(data) {
	                $('#result').html(data);
	            
		});
	} 
</script>


<script type="text/javascript">
	var intervalId = 0;
	intervalId = setInterval(crunchifyAjax, 5000);
</script>

</head>
<body>
	
	<div>
		<p>Select a technology:</p>
		<select id="technology12" onchange="changeFunc();">
			<option value="selectOption" selected="selected">---Select---</option>
			<option value="Knighted">Knighted</option>
			<option value="Mechanical">Mechanical</option>
		</select>
	</div>

	<!-- complete -->
	<div id="knightedDiv" style="visibility: hidden;">
		<h2>Knighted WBS</h2>
		<div class="demo">

			<form:form id="knightedWBS" method="post"  modelAttribute="knightedWBSTechnologyForm"  >
			<div id="accordion">
			
				<h3>
				
					<a href="#"> 60 Service-WMS</a><span style="float: right;">Total:<input
						type="text" size="5px" value="${totalHours60}"/>
					</span>
				</h3>
				<div style="width: inherit;">
					<div>
						<p >
							<span style="font: caption;">Task <span
								style="float: right;">Hours</span></span>
						</p>
						
						<p>
							60.1 Executive Management 
							
							<%-- This loop works fine. It pulls form values and updates back
							 <c:forEach items="${knightedWBSTechnologyForm.knightedWBSTechnologies}" var="knightedWBSTechnology" varStatus="status">
        				<tr>
        				    <td align="center">Status count - ${status.count}</td>
         			  		 <td><input name="knightedWBSTechnologies[${status.index}].hours" value="${knightedWBSTechnology.hours}"/></td>
         			  		 
       					 </tr>
   					 </c:forEach> --%>
    
							<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[0].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[0].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[0].taskNumber"
												value="60.1" />
							</span>
						</p>
						<p>
							60.2 Project Management <span style="float: right;"> 
								
										
											<label>Hours:</label> <input
												name="knightedWBSTechnologies[1].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[1].hours}" />
												<input style="visibility: hidden;" name="knightedWBSTechnologies[1].taskNumber"
												value="60.2" />
									
						</span>
						</p>
						<p>
							60.3 Proc Flow and Bus An <span style="float: right;"> 
											<label>Hours:</label> <input
												name="knightedWBSTechnologies[2].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[2].hours}" />
												<input style="visibility: hidden;" name="knightedWBSTechnologies[2].taskNumber"
												value="60.3" />
									</span>
						</p>
						<p>
							60.4 Appl Gap Analysis <span style="float: right;"> 
											<label>Hours:</label> <input
												name="knightedWBSTechnologies[3].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[3].hours}" />
												<input style="visibility: hidden;" name="knightedWBSTechnologies[3].taskNumber"
												value="60.4" />
									</span>
						</p>
						<%-- </c:forEach> --%>
						<p>
							60.5 Server Install Confi
							<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[4].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[4].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[4].taskNumber"
												value="60.5" />
							</span> 
						</p>

						<div id="accordion3">
							<h3>
								<a href="#">60.6 Interface Integration</a>
								<span
									style="float: right;">Total:<input type="text"
									size="5px" />
								</span>
							</h3>
							<div>
								<div>
									<p>
										<span style="font: caption;">Task <span
											style="float: right;">Hours</span></span> <br /> 60.6.1 Interface
										Map Def 
										<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[5].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[5].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[5].taskNumber"
												value="60.6.1" />
							</span>
									</p>
									<p>...</p>
									<div id="accordion4">
										<h3>
											<a href="#">60.6.2 Dev (New Interface)</a>
											
										</h3>
										<div>
											<div>
												<p>
													<span style="font: caption;">Task <span
														style="float: right;">Hours</span></span>
												</p>
												<p>
													60.6.2.1 Analysis 
													<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[6].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[6].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[6].taskNumber"
												value="60.6.2.1" />
							</span>
												</p>
												<p>
													60.6.2.2 Development 
													<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[7].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[7].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[7].taskNumber"
												value="60.6.2.2" />
							</span>
												</p>
												<p>
													60.6.2.3 Unit test
													<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[8].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[8].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[8].taskNumber"
												value="60.6.2.3" />
							</span>
												</p>
												<!-- Sub-level -->
												<div id="accordion5">
													<h3>
														<a href="#">60.6.2.4 QA</a><span style="float: right;">Total:<input
															type="text" size="5px" />
														</span>
													</h3>
													<div>
														<div>
															<p>
																<span style="font: caption;">Task <span
																	style="float: right;">Hours</span></span>
															</p>
															<p>
																60.6.2.4.1 QA Test 
																<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[9].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[9].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[9].taskNumber"
												value="60.6.2.4.1" />
							</span>
															</p>
															<p>
																60.6.2.4.2 Documentation 
																<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[10].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[10].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[10].taskNumber"
												value="60.6.2.4.2" />
							</span>
															</p>
															<p>
																60.6.2.4.3 Re-testing
																<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[11].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[11].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[11].taskNumber"
												value="60.6.2.4.3" />
							</span>
															</p>
														</div>
													</div>
												</div>
												<p>
													60.6.2.5 Deployment
													<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[12].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[12].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[12].taskNumber"
												value="60.6.2.5" />
							</span>
												</p>
												<p>
													60.6.2.6 Re-work
													<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[13].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[13].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[13].taskNumber"
												value="60.6.2.6" />
							</span>
												</p>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- End: accordion3 60.6-->
						<div id="accordion3">
							<h3>
								<a href="#">60.7 Devel (Application)</a><span 
									style="float: right;">Total:<input type="text"
									size="5px" />
								</span>
							</h3>
							<div>
								<div>
									<p>
										<span style="font: caption;">Task <span
											style="float: right;">Hours</span></span> <br /> 60.7.1 Analysis
											<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[14].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[14].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[14].taskNumber"
												value="60.7.1" />
							</span>
									</p>
									<p>
										60.7.2 Specification
										<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[15].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[15].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[15].taskNumber"
												value="60.7.2" />
							</span>
									</p>

									<p>
										60.7.3 Design
										<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[16].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[16].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[16].taskNumber"
												value="60.7.3" />
							</span>
									</p>
									<p>
										60.7.4 Develop
										<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[17].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[17].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[17].taskNumber"
												value="60.7.4" />
							</span>
									</p>
									<p>
										60.7.5 Unit test
										<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[18].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[18].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[18].taskNumber"
												value="60.7.5" />
							</span>
									</p>
									<p>
										60.7.6 Document
										<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[19].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[19].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[19].taskNumber"
												value="60.7.6" />
							</span>
									</p>

									<div id="accordion4">
										<h3>
											<a href="#">60.7.7 QA</a><span style="float: right;">Total:<input
												type="text" size="5px" />
											</span>
										</h3>
										<div>
											<div>
												<p>
													<span style="font: caption;">Task <span
														style="float: right;">Hours</span></span>
												</p>
												<p>
													60.7.7.1 QA Testing
													<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[20].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[20].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[20].taskNumber"
												value="60.7.7.1" />
							</span>
												</p>
												<p>
													60.7.7.2 Documentation 
													<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[21].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[21].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[21].taskNumber"
												value="60.7.7.2" />
							</span>
												</p>
												<p>
													60.7.7.3 Re-testing
													<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[22].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[22].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[22].taskNumber"
												value="60.7.7.3" />
							</span>
												</p>
											</div>
										</div>
									</div>

									<p>
										60.7.8 Deployment
										<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[23].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[23].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[23].taskNumber"
												value="60.7.8" />
							</span>
									</p>
									<p>
										60.7.9 Re-work
										<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[24].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[24].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[24].taskNumber"
												value="60.7.9" />
							</span>
									</p>

								</div>
							</div>
						</div>
						<p>
							60.8 DB Server Inst Config <span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[25].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[25].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[25].taskNumber"
												value="60.8" />
							</span>
						</p>
						<p>
							60.9 Int Server Inst Config 
							<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[26].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[26].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[26].taskNumber"
												value="60.9" />
							</span>
						</p>
						<p>
							60.CONV Converted 
							<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[27].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[27].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[27].taskNumber"
												value="60.CONV" />
							</span>
						</p>
					</div>

				</div>
				<h3>
					<a href="#">61 Service-WCS</a><span style="float: right;">Total:<input
						type="text" size="5px" value="${totalHours61}"/>
					</span>
				</h3>
				<!--  -->
				<div>
						<p >
							<span style="font: caption;">Task <span
								style="float: right;">Hours</span></span>
						</p>
						<%-- <c:forEach 	items="${knightedWBSTechnologyForm.knightedWBSTechnologies}"
										var="knightedWBSTechnology" varStatus="status"> --%>
						<p>
							61.1 Executive Management 
							
							<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[28].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[28].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[28].taskNumber"
												value="61.1" />
							</span>
						</p>
						<p>
							61.2 Project Management <span style="float: right;"> 
								
										
											<label>Hours:</label> <input
												name="knightedWBSTechnologies[29].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[29].hours}" />
												<input style="visibility: hidden;" name="knightedWBSTechnologies[29].taskNumber"
												value="61.2" />
									
						</span>
						</p>
						<p>
							61.3 Proc Flow and Bus An <span style="float: right;"> 
											<label>Hours:</label> <input
												name="knightedWBSTechnologies[30].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[30].hours}" />
												<input style="visibility: hidden;" name="knightedWBSTechnologies[30].taskNumber"
												value="61.3" />
									</span>
						</p>
						<p>
							61.4 Appl Gap Analysis <span style="float: right;"> 
											<label>Hours:</label> <input
												name="knightedWBSTechnologies[31].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[31].hours}" />
												<input style="visibility: hidden;" name="knightedWBSTechnologies[31].taskNumber"
												value="61.4" />
									</span>
						</p>
						<%-- </c:forEach> --%>
						<p>
							61.5 Server Install Confi
							<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[32].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[32].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[32].taskNumber"
												value="61.5" />
							</span> 
						</p>

						<div id="accordion3">
							<h3>
								<a href="#">61.6 Interface Integration</a>
								<span
									style="float: right;">Total:<input type="text"
									size="5px" />
								</span>
							</h3>
							<div>
								<div>
									<p>
										<span style="font: caption;">Task <span
											style="float: right;">Hours</span></span> <br /> 61.6.1 Interface
										Map Def 
										<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[33].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[33].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[33].taskNumber"
												value="61.6.1" />
							</span>
									</p>
									<div id="accordion4">
										<h3>
											<a href="#">61.6.2 Dev (New Interface)</a>
											
										</h3>
										<div>
											<div>
												<p>
													<span style="font: caption;">Task <span
														style="float: right;">Hours</span></span>
												</p>
												<p>
													61.6.2.1 Analysis 
													<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[34].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[34].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[34].taskNumber"
												value="61.6.2.1" />
							</span>
												</p>
												<p>
													61.6.2.2 Development 
													<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[35].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[35].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[35].taskNumber"
												value="61.6.2.2" />
							</span>
												</p>
												<p>
													61.6.2.3 Unit test
													<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[36].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[36].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[36].taskNumber"
												value="61.6.2.3" />
							</span>
												</p>
												<!-- Sub-level -->
												<div id="accordion5">
													<h3>
														<a href="#">61.6.2.4 QA</a><span style="float: right;">Total:<input
															type="text" size="5px" />
														</span>
													</h3>
													<div>
														<div>
															<p>
																<span style="font: caption;">Task <span
																	style="float: right;">Hours</span></span>
															</p>
															<p>
																61.6.2.4.1 QA Test 
																<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[37].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[37].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[37].taskNumber"
												value="61.6.2.4.1" />
							</span>
															</p>
															<p>
																61.6.2.4.2 Documentation 
																<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[38].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[38].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[38].taskNumber"
												value="61.6.2.4.2" />
							</span>
															</p>
															<p>
																61.6.2.4.3 Re-testing
																<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[39].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[39].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[39].taskNumber"
												value="61.6.2.4.3" />
							</span>
															</p>
														</div>
													</div>
												</div>
												<p>
													61.6.2.5 Deployment
													<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[40].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[40].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[40].taskNumber"
												value="61.6.2.5" />
							</span>
												</p>
												<p>
													61.6.2.6 Re-work
													<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[41].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[41].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[41].taskNumber"
												value="61.6.2.6" />
							</span>
												</p>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- End: accordion3 61.6-->
						<div id="accordion3">
							<h3>
								<a href="#">61.7 Devel (Application)</a><span 
									style="float: right;">Total:<input type="text"
									size="5px" />
								</span>
							</h3>
							<div>
								<div>
									<p>
										<span style="font: caption;">Task <span
											style="float: right;">Hours</span></span> <br /> 61.7.1 Analysis
											<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[42].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[42].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[42].taskNumber"
												value="61.7.1" />
							</span>
									</p>
									<p>
										61.7.2 Specification
										<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[43].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[43].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[43].taskNumber"
												value="61.7.2" />
							</span>
									</p>

									<p>
										61.7.3 Design
										<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[44].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[44].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[44].taskNumber"
												value="61.7.3" />
							</span>
									</p>
									<p>
										61.7.4 Develop
										<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[45].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[45].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[45].taskNumber"
												value="61.7.4" />
							</span>
									</p>
									<p>
										61.7.5 Unit test
										<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[46].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[46].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[46].taskNumber"
												value="61.7.5" />
							</span>
									</p>
									<p>
										61.7.6 Document
										<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[47].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[47].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[47].taskNumber"
												value="61.7.6" />
							</span>
									</p>

									<div id="accordion4">
										<h3>
											<a href="#">61.7.7 QA</a><span style="float: right;">Total:<input
												type="text" size="5px" />
											</span>
										</h3>
										<div>
											<div>
												<p>
													<span style="font: caption;">Task <span
														style="float: right;">Hours</span></span>
												</p>
												<p>
													61.7.7.1 QA Testing
													<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[48].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[48].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[48].taskNumber"
												value="61.7.7.1" />
							</span>
												</p>
												<p>
													61.7.7.2 Documentation 
													<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[49].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[49].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[49].taskNumber"
												value="61.7.7.2" />
							</span>
												</p>
												<p>
													61.7.7.3 Re-testing
													<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[50].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[50].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[50].taskNumber"
												value="61.7.7.3" />
							</span>
												</p>
											</div>
										</div>
									</div>

									<p>
										61.7.8 Deployment
										<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[51].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[51].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[51].taskNumber"
												value="61.7.8" />
							</span>
									</p>
									<p>
										61.7.9 Re-work
										<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[52].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[52].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[52].taskNumber"
												value="61.7.9" />
							</span>
									</p>

								</div>
							</div>
						</div>
						<p>
							61.8 DB Server Inst Config <span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[53].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[53].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[53].taskNumber"
												value="61.8" />
							</span>
						</p>
						<p>
							61.9 Int Server Inst Config 
							<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[54].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[54].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[54].taskNumber"
												value="61.9" />
							</span>
						</p>
						<p>
							61.CONV Converted 
							<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[55].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[55].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[55].taskNumber"
												value="61.CONV" />
							</span>
						</p>
					</div>
				<!-- 61  WCS -->
				
				
				<h3>
					<a href="#">62 Services-LMS</a><span style="float: right;">Total:<input
						type="text" size="5px" value="${totalHours62}"/>
					</span>
				</h3>
				<!-- 62 LMS -->
				<div>
					<div>
						<p >
							<span style="font: caption;">Task <span
								style="float: right;">Hours</span></span>
						</p>
						<%-- <c:forEach 	items="${knightedWBSTechnologyForm.knightedWBSTechnologies}"
										var="knightedWBSTechnology" varStatus="status"> --%>
						<p>
							62.1 Executive Management 
							
							<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[56].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[56].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[56].taskNumber"
												value="62.1" />
							</span>
						</p>
						<p>
							62.2 Project Management <span style="float: right;"> 
								
										
											<label>Hours:</label> <input
												name="knightedWBSTechnologies[57].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[57].hours}" />
												<input style="visibility: hidden;" name="knightedWBSTechnologies[57].taskNumber"
												value="62.2" />
									
						</span>
						</p>
						<p>
							62.3 Proc Flow and Bus An <span style="float: right;"> 
											<label>Hours:</label> <input
												name="knightedWBSTechnologies[58].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[58].hours}" />
												<input style="visibility: hidden;" name="knightedWBSTechnologies[58].taskNumber"
												value="62.3" />
									</span>
						</p>
						<p>
							62.4 Appl Gap Analysis <span style="float: right;"> 
											<label>Hours:</label> <input
												name="knightedWBSTechnologies[59].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[59].hours}" />
												<input style="visibility: hidden;" name="knightedWBSTechnologies[59].taskNumber"
												value="62.4" />
									</span>
						</p>
						<%-- </c:forEach> --%>
						<p>
							62.5 Server Install Confi
							<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[60].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[60].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[60].taskNumber"
												value="62.5" />
							</span> 
						</p>

						<div id="accordion3">
							<h3>
								<a href="#">62.6 Interface Integration</a>
								<span
									style="float: right;">Total:<input type="text"
									size="5px" />
								</span>
							</h3>
							<div>
								<div>
									<p>
										<span style="font: caption;">Task <span
											style="float: right;">Hours</span></span> <br /> 62.6.1 Interface
										Map Def 
										<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[61].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[61].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[61].taskNumber"
												value="62.6.1" />
							</span>
									</p>
									<div id="accordion4">
										<h3>
											<a href="#">62.6.2 Dev (New Interface)</a>
											
										</h3>
										<div>
											<div>
												<p>
													<span style="font: caption;">Task <span
														style="float: right;">Hours</span></span>
												</p>
												<p>
													62.6.2.1 Analysis 
													<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[62].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[62].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[62].taskNumber"
												value="62.6.2.1" />
							</span>
												</p>
												<p>
													62.6.2.2 Development 
													<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[63].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[63].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[63].taskNumber"
												value="62.6.2.2" />
							</span>
												</p>
												<p>
													62.6.2.3 Unit test
													<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[64].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[64].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[64].taskNumber"
												value="62.6.2.3" />
							</span>
												</p>
												<!-- Sub-level -->
												<div id="accordion5">
													<h3>
														<a href="#">62.6.2.4 QA</a><span style="float: right;">Total:<input
															type="text" size="5px" />
														</span>
													</h3>
													<div>
														<div>
															<p>
																<span style="font: caption;">Task <span
																	style="float: right;">Hours</span></span>
															</p>
															<p>
																62.6.2.4.1 QA Test 
																<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[65].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[65].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[65].taskNumber"
												value="62.6.2.4.1" />
							</span>
															</p>
															<p>
																62.6.2.4.2 Documentation 
																<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[66].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[66].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[66].taskNumber"
												value="62.6.2.4.2" />
							</span>
															</p>
															<p>
																62.6.2.4.3 Re-testing
																<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[67].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[67].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[67].taskNumber"
												value="62.6.2.4.3" />
							</span>
															</p>
														</div>
													</div>
												</div>
												<p>
													62.6.2.5 Deployment
													<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[68].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[68].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[68].taskNumber"
												value="62.6.2.5" />
							</span>
												</p>
												<p>
													62.6.2.6 Re-work
													<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[69].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[69].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[69].taskNumber"
												value="62.6.2.6" />
							</span>
												</p>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- End: accordion3 62.6-->
						<div id="accordion3">
							<h3>
								<a href="#">62.7 Devel (Application)</a><span 
									style="float: right;">Total:<input type="text"
									size="5px" />
								</span>
							</h3>
							<div>
								<div>
									<p>
										<span style="font: caption;">Task <span
											style="float: right;">Hours</span></span> <br /> 62.7.1 Analysis
											<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[70].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[70].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[70].taskNumber"
												value="62.7.1" />
							</span>
									</p>
									<p>
										62.7.2 Specification
										<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[71].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[71].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[71].taskNumber"
												value="62.7.2" />
							</span>
									</p>

									<p>
										62.7.3 Design
										<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[72].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[72].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[72].taskNumber"
												value="62.7.3" />
							</span>
									</p>
									<p>
										62.7.4 Develop
										<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[73].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[73].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[73].taskNumber"
												value="62.7.4" />
							</span>
									</p>
									<p>
										62.7.5 Unit test
										<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[74].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[74].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[74].taskNumber"
												value="62.7.5" />
							</span>
									</p>
									<p>
										62.7.6 Document
										<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[75].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[75].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[75].taskNumber"
												value="62.7.6" />
							</span>
									</p>

									<div id="accordion4">
										<h3>
											<a href="#">62.7.7 QA</a><span style="float: right;">Total:<input
												type="text" size="5px" />
											</span>
										</h3>
										<div>
											<div>
												<p>
													<span style="font: caption;">Task <span
														style="float: right;">Hours</span></span>
												</p>
												<p>
													62.7.7.1 QA Testing
													<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[76].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[76].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[76].taskNumber"
												value="62.7.7.1" />
							</span>
												</p>
												<p>
													62.7.7.2 Documentation 
													<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[77].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[77].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[77].taskNumber"
												value="62.7.7.2" />
							</span>
												</p>
												<p>
													62.7.7.3 Re-testing
													<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[78].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[78].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[78].taskNumber"
												value="62.7.7.3" />
							</span>
												</p>
											</div>
										</div>
									</div>

									<p>
										62.7.8 Deployment
										<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[79].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[79].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[79].taskNumber"
												value="62.7.8" />
							</span>
									</p>
									<p>
										62.7.9 Re-work
										<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[80].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[80].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[80].taskNumber"
												value="62.7.9" />
							</span>
									</p>

								</div>
							</div>
						</div>
						<p>
							62.8 DB Server Inst Config <span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[81].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[81].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[81].taskNumber"
												value="62.8" />
							</span>
						</p>
						<p>
							62.9 Int Server Inst Config 
							<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[82].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[82].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[82].taskNumber"
												value="62.9" />
							</span>
						</p>
						<p>
							62.CONV Converted 
							<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[83].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[83].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[83].taskNumber"
												value="62.CONV" />
							</span>
						</p>
					</div>

				</div>
				<!-- 62 LMS -->
				
				<h3>
					<a href="#">63 Services-BI</a><span style="float: right;">Total:<input
						type="text" size="5px" value="${totalHours63}"/>
					</span>
				</h3>
				<!-- 63 BI -->
				<div>
					<div>
						<p >
							<span style="font: caption;">Task <span
								style="float: right;">Hours</span></span>
						</p>
						<%-- <c:forEach 	items="${knightedWBSTechnologyForm.knightedWBSTechnologies}"
										var="knightedWBSTechnology" varStatus="status"> --%>
						<p>
							63.1 Executive Management 
							
							<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[84].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[84].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[84].taskNumber"
												value="63.1" />
							</span>
						</p>
						<p>
							63.2 Project Management <span style="float: right;"> 
								
										
											<label>Hours:</label> <input
												name="knightedWBSTechnologies[85].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[85].hours}" />
												<input style="visibility: hidden;" name="knightedWBSTechnologies[85].taskNumber"
												value="63.2" />
									
						</span>
						</p>
						<p>
							63.3 Proc Flow and Bus An <span style="float: right;"> 
											<label>Hours:</label> <input
												name="knightedWBSTechnologies[86].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[86].hours}" />
												<input style="visibility: hidden;" name="knightedWBSTechnologies[86].taskNumber"
												value="63.3" />
									</span>
						</p>
						<p>
							63.4 Appl Gap Analysis <span style="float: right;"> 
											<label>Hours:</label> <input
												name="knightedWBSTechnologies[87].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[87].hours}" />
												<input style="visibility: hidden;" name="knightedWBSTechnologies[87].taskNumber"
												value="63.4" />
									</span>
						</p>
						<%-- </c:forEach> --%>
						<p>
							63.5 Server Install Confi
							<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[88].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[88].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[88].taskNumber"
												value="63.5" />
							</span> 
						</p>

						<div id="accordion3">
							<h3>
								<a href="#">63.6 Interface Integration</a>
								<span
									style="float: right;">Total:<input type="text"
									size="5px" />
								</span>
							</h3>
							<div>
								<div>
									<p>
										<span style="font: caption;">Task <span
											style="float: right;">Hours</span></span> <br /> 63.6.1 Interface
										Map Def 
										<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[89].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[89].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[89].taskNumber"
												value="63.6.1" />
							</span>
									</p>
									<div id="accordion4">
										<h3>
											<a href="#">63.6.2 Dev (New Interface)</a>
											
										</h3>
										<div>
											<div>
												<p>
													<span style="font: caption;">Task <span
														style="float: right;">Hours</span></span>
												</p>
												<p>
													63.6.2.1 Analysis 
													<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[90].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[90].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[90].taskNumber"
												value="63.6.2.1" />
							</span>
												</p>
												<p>
													63.6.2.2 Development 
													<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[91].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[91].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[91].taskNumber"
												value="63.6.2.2" />
							</span>
												</p>
												<p>
													63.6.2.3 Unit test
													<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[92].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[92].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[92].taskNumber"
												value="63.6.2.3" />
							</span>
												</p>
												<!-- Sub-level -->
												<div id="accordion5">
													<h3>
														<a href="#">63.6.2.4 QA</a><span style="float: right;">Total:<input
															type="text" size="5px" />
														</span>
													</h3>
													<div>
														<div>
															<p>
																<span style="font: caption;">Task <span
																	style="float: right;">Hours</span></span>
															</p>
															<p>
																63.6.2.4.1 QA Test 
																<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[93].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[93].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[93].taskNumber"
												value="63.6.2.4.1" />
							</span>
															</p>
															<p>
																63.6.2.4.2 Documentation 
																<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[94].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[94].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[94].taskNumber"
												value="63.6.2.4.2" />
							</span>
															</p>
															<p>
																63.6.2.4.3 Re-testing
																<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[95].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[95].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[95].taskNumber"
												value="63.6.2.4.3" />
							</span>
															</p>
														</div>
													</div>
												</div>
												<p>
													63.6.2.5 Deployment
													<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[96].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[96].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[96].taskNumber"
												value="63.6.2.5" />
							</span>
												</p>
												<p>
													63.6.2.6 Re-work
													<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[97].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[97].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[97].taskNumber"
												value="63.6.2.6" />
							</span>
												</p>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- End: accordion3 63.6-->
						<div id="accordion3">
							<h3>
								<a href="#">63.7 Devel (Application)</a><span 
									style="float: right;">Total:<input type="text"
									size="5px" />
								</span>
							</h3>
							<div>
								<div>
									<p>
										<span style="font: caption;">Task <span
											style="float: right;">Hours</span></span> <br /> 63.7.1 Analysis
											<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[98].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[98].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[98].taskNumber"
												value="63.7.1" />
							</span>
									</p>
									<p>
										63.7.2 Specification
										<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[99].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[99].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[99].taskNumber"
												value="63.7.2" />
							</span>
									</p>

									<p>
										63.7.3 Design
										<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[100].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[100].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[100].taskNumber"
												value="63.7.3" />
							</span>
									</p>
									<p>
										63.7.4 Develop
										<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[101].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[101].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[101].taskNumber"
												value="63.7.4" />
							</span>
									</p>
									<p>
										63.7.5 Unit test
										<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[102].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[102].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[102].taskNumber"
												value="63.7.5" />
							</span>
									</p>
									<p>
										63.7.6 Document
										<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[103].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[103].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[103].taskNumber"
												value="63.7.6" />
							</span>
									</p>

									<div id="accordion4">
										<h3>
											<a href="#">63.7.7 QA</a><span style="float: right;">Total:<input
												type="text" size="5px" />
											</span>
										</h3>
										<div>
											<div>
												<p>
													<span style="font: caption;">Task <span
														style="float: right;">Hours</span></span>
												</p>
												<p>
													63.7.7.1 QA Testing
													<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[104].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[104].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[104].taskNumber"
												value="63.7.7.1" />
							</span>
												</p>
												<p>
													63.7.7.2 Documentation 
													<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[105].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[105].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[105].taskNumber"
												value="63.7.7.2" />
							</span>
												</p>
												<p>
													63.7.7.3 Re-testing
													<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[106].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[106].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[106].taskNumber"
												value="63.7.7.3" />
							</span>
												</p>
											</div>
										</div>
									</div>

									<p>
										63.7.8 Deployment
										<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[107].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[107].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[107].taskNumber"
												value="63.7.8" />
							</span>
									</p>
									<p>
										63.7.9 Re-work
										<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[108].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[108].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[108].taskNumber"
												value="63.7.9" />
							</span>
									</p>

								</div>
							</div>
						</div>
						<p>
							63.8 DB Server Inst Config <span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[109].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[109].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[109].taskNumber"
												value="63.8" />
							</span>
						</p>
						<p>
							63.9 Int Server Inst Config 
							<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[110].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[110].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[110].taskNumber"
												value="63.9" />
							</span>
						</p>
						<p>
							63.CONV Converted 
							<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSTechnologies[111].hours"
												value="${knightedWBSTechnologyForm.knightedWBSTechnologies[111].hours}" />
												<input style="visibility: hidden;" 
												name="knightedWBSTechnologies[111].taskNumber"
												value="63.CONV" />
							</span>
						</p>
					</div>

				</div>
				<!-- 63 BI -->
			</div>
			<input type="submit" value="Save"/>
			</form:form>
		</div>
	</div>




</body>
</html>
