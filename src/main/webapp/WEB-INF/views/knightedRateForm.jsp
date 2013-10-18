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
	
	

	<!-- complete -->
	<div id="knightedDiv" >
		<h2>Knighted WBS ${message}</h2>
		<div class="demo">

			<form:form id="knightedWBS" method="post"  modelAttribute="knightedWBSRateForm"  >
			<div id="accordion">
			
				<h3>
				
					<a href="#"> 60 Service-WMS</a><span style="float: right;">Total:<input
						type="text" size="5px" value="${totalHours60}"/>
					</span>
				</h3>
				<div>
					<div>
						<p >
							<span style="font: caption;">Task <span
								style="float: right;">Rate</span></span>
						</p>
						
						<p>
							60.1 Executive Management 
							
							<span style="float: right;">							
											<label>Rate:</label> 
											<input name="knightedWBSRates[0].rate"
												value="${knightedWBSRateForm.knightedWBSRates[0].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[0].taskNumber"
												value="60.1" />
							</span>
						</p>
						<p>
							60.2 Project Management <span style="float: right;"> 
								
										
											<label>Hours:</label> <input
												name="knightedWBSRates[1].rate"
												value="${knightedWBSRateForm.knightedWBSRates[1].rate}" />
												<input style="visibility: hidden;" name="knightedWBSRates[1].taskNumber"
												value="60.2" />
									
						</span>
						</p>
						<p>
							60.3 Proc Flow and Bus An <span style="float: right;"> 
											<label>Hours:</label> <input
												name="knightedWBSRates[2].rate"
												value="${knightedWBSRateForm.knightedWBSRates[2].rate}" />
												<input style="visibility: hidden;" name="knightedWBSRates[2].taskNumber"
												value="60.3" />
									</span>
						</p>
						<p>
							60.4 Appl Gap Analysis <span style="float: right;"> 
											<label>Hours:</label> <input
												name="knightedWBSRates[3].rate"
												value="${knightedWBSRateForm.knightedWBSRates[3].rate}" />
												<input style="visibility: hidden;" name="knightedWBSRates[3].taskNumber"
												value="60.4" />
									</span>
						</p>
						<%-- </c:forEach> --%>
						<p>
							60.5 Server Install Confi
							<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSRates[4].rate"
												value="${knightedWBSRateForm.knightedWBSRates[4].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[4].taskNumber"
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
											<input name="knightedWBSRates[5].rate"
												value="${knightedWBSRateForm.knightedWBSRates[5].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[5].taskNumber"
												value="60.6.1" />
							</span>
									</p>
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
											<input name="knightedWBSRates[6].rate"
												value="${knightedWBSRateForm.knightedWBSRates[6].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[6].taskNumber"
												value="60.6.2.1" />
							</span>
												</p>
												<p>
													60.6.2.2 Development 
													<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSRates[7].rate"
												value="${knightedWBSRateForm.knightedWBSRates[7].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[7].taskNumber"
												value="60.6.2.2" />
							</span>
												</p>
												<p>
													60.6.2.3 Unit test
													<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSRates[8].rate"
												value="${knightedWBSRateForm.knightedWBSRates[8].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[8].taskNumber"
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
											<input name="knightedWBSRates[9].rate"
												value="${knightedWBSRateForm.knightedWBSRates[9].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[9].taskNumber"
												value="60.6.2.4.1" />
							</span>
															</p>
															<p>
																60.6.2.4.2 Documentation 
																<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSRates[10].rate"
												value="${knightedWBSRateForm.knightedWBSRates[10].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[10].taskNumber"
												value="60.6.2.4.2" />
							</span>
															</p>
															<p>
																60.6.2.4.3 Re-testing
																<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSRates[11].rate"
												value="${knightedWBSRateForm.knightedWBSRates[11].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[11].taskNumber"
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
											<input name="knightedWBSRates[12].rate"
												value="${knightedWBSRateForm.knightedWBSRates[12].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[12].taskNumber"
												value="60.6.2.5" />
							</span>
												</p>
												<p>
													60.6.2.6 Re-work
													<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSRates[13].rate"
												value="${knightedWBSRateForm.knightedWBSRates[13].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[13].taskNumber"
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
											<input name="knightedWBSRates[14].rate"
												value="${knightedWBSRateForm.knightedWBSRates[14].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[14].taskNumber"
												value="60.7.1" />
							</span>
									</p>
									<p>
										60.7.2 Specification
										<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSRates[15].rate"
												value="${knightedWBSRateForm.knightedWBSRates[15].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[15].taskNumber"
												value="60.7.2" />
							</span>
									</p>

									<p>
										60.7.3 Design
										<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSRates[16].rate"
												value="${knightedWBSRateForm.knightedWBSRates[16].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[16].taskNumber"
												value="60.7.3" />
							</span>
									</p>
									<p>
										60.7.4 Develop
										<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSRates[17].rate"
												value="${knightedWBSRateForm.knightedWBSRates[17].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[17].taskNumber"
												value="60.7.4" />
							</span>
									</p>
									<p>
										60.7.5 Unit test
										<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSRates[18].rate"
												value="${knightedWBSRateForm.knightedWBSRates[18].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[18].taskNumber"
												value="60.7.5" />
							</span>
									</p>
									<p>
										60.7.6 Document
										<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSRates[19].rate"
												value="${knightedWBSRateForm.knightedWBSRates[19].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[19].taskNumber"
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
											<input name="knightedWBSRates[20].rate"
												value="${knightedWBSRateForm.knightedWBSRates[20].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[20].taskNumber"
												value="60.7.7.1" />
							</span>
												</p>
												<p>
													60.7.7.2 Documentation 
													<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSRates[21].rate"
												value="${knightedWBSRateForm.knightedWBSRates[21].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[21].taskNumber"
												value="60.7.7.2" />
							</span>
												</p>
												<p>
													60.7.7.3 Re-testing
													<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSRates[22].rate"
												value="${knightedWBSRateForm.knightedWBSRates[22].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[22].taskNumber"
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
											<input name="knightedWBSRates[23].rate"
												value="${knightedWBSRateForm.knightedWBSRates[23].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[23].taskNumber"
												value="60.7.8" />
							</span>
									</p>
									<p>
										60.7.9 Re-work
										<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSRates[24].rate"
												value="${knightedWBSRateForm.knightedWBSRates[24].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[24].taskNumber"
												value="60.7.9" />
							</span>
									</p>

								</div>
							</div>
						</div>
						<p>
							60.8 DB Server Inst Config <span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSRates[25].rate"
												value="${knightedWBSRateForm.knightedWBSRates[25].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[25].taskNumber"
												value="60.8" />
							</span>
						</p>
						<p>
							60.9 Int Server Inst Config 
							<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSRates[26].rate"
												value="${knightedWBSRateForm.knightedWBSRates[26].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[26].taskNumber"
												value="60.9" />
							</span>
						</p>
						<p>
							60.CONV Converted 
							<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSRates[27].rate"
												value="${knightedWBSRateForm.knightedWBSRates[27].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[27].taskNumber"
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
						<%-- <c:forEach 	items="${knightedWBSRateForm.knightedWBSRates}"
										var="knightedWBSTechnology" varStatus="status"> --%>
						<p>
							61.1 Executive Management 
							
							<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSRates[28].rate"
												value="${knightedWBSRateForm.knightedWBSRates[28].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[28].taskNumber"
												value="61.1" />
							</span>
						</p>
						<p>
							61.2 Project Management <span style="float: right;"> 
								
										
											<label>Hours:</label> <input
												name="knightedWBSRates[29].rate"
												value="${knightedWBSRateForm.knightedWBSRates[29].rate}" />
												<input style="visibility: hidden;" name="knightedWBSRates[29].taskNumber"
												value="61.2" />
									
						</span>
						</p>
						<p>
							61.3 Proc Flow and Bus An <span style="float: right;"> 
											<label>Hours:</label> <input
												name="knightedWBSRates[30].rate"
												value="${knightedWBSRateForm.knightedWBSRates[30].rate}" />
												<input style="visibility: hidden;" name="knightedWBSRates[30].taskNumber"
												value="61.3" />
									</span>
						</p>
						<p>
							61.4 Appl Gap Analysis <span style="float: right;"> 
											<label>Hours:</label> <input
												name="knightedWBSRates[31].rate"
												value="${knightedWBSRateForm.knightedWBSRates[31].rate}" />
												<input style="visibility: hidden;" name="knightedWBSRates[31].taskNumber"
												value="61.4" />
									</span>
						</p>
						<%-- </c:forEach> --%>
						<p>
							61.5 Server Install Confi
							<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSRates[32].rate"
												value="${knightedWBSRateForm.knightedWBSRates[32].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[32].taskNumber"
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
											<input name="knightedWBSRates[33].rate"
												value="${knightedWBSRateForm.knightedWBSRates[33].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[33].taskNumber"
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
											<input name="knightedWBSRates[34].rate"
												value="${knightedWBSRateForm.knightedWBSRates[34].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[34].taskNumber"
												value="61.6.2.1" />
							</span>
												</p>
												<p>
													61.6.2.2 Development 
													<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSRates[35].rate"
												value="${knightedWBSRateForm.knightedWBSRates[35].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[35].taskNumber"
												value="61.6.2.2" />
							</span>
												</p>
												<p>
													61.6.2.3 Unit test
													<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSRates[36].rate"
												value="${knightedWBSRateForm.knightedWBSRates[36].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[36].taskNumber"
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
											<input name="knightedWBSRates[37].rate"
												value="${knightedWBSRateForm.knightedWBSRates[37].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[37].taskNumber"
												value="61.6.2.4.1" />
							</span>
															</p>
															<p>
																61.6.2.4.2 Documentation 
																<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSRates[38].rate"
												value="${knightedWBSRateForm.knightedWBSRates[38].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[38].taskNumber"
												value="61.6.2.4.2" />
							</span>
															</p>
															<p>
																61.6.2.4.3 Re-testing
																<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSRates[39].rate"
												value="${knightedWBSRateForm.knightedWBSRates[39].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[39].taskNumber"
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
											<input name="knightedWBSRates[40].rate"
												value="${knightedWBSRateForm.knightedWBSRates[40].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[40].taskNumber"
												value="61.6.2.5" />
							</span>
												</p>
												<p>
													61.6.2.6 Re-work
													<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSRates[41].rate"
												value="${knightedWBSRateForm.knightedWBSRates[41].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[41].taskNumber"
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
											<input name="knightedWBSRates[42].rate"
												value="${knightedWBSRateForm.knightedWBSRates[42].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[42].taskNumber"
												value="61.7.1" />
							</span>
									</p>
									<p>
										61.7.2 Specification
										<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSRates[43].rate"
												value="${knightedWBSRateForm.knightedWBSRates[43].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[43].taskNumber"
												value="61.7.2" />
							</span>
									</p>

									<p>
										61.7.3 Design
										<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSRates[44].rate"
												value="${knightedWBSRateForm.knightedWBSRates[44].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[44].taskNumber"
												value="61.7.3" />
							</span>
									</p>
									<p>
										61.7.4 Develop
										<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSRates[45].rate"
												value="${knightedWBSRateForm.knightedWBSRates[45].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[45].taskNumber"
												value="61.7.4" />
							</span>
									</p>
									<p>
										61.7.5 Unit test
										<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSRates[46].rate"
												value="${knightedWBSRateForm.knightedWBSRates[46].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[46].taskNumber"
												value="61.7.5" />
							</span>
									</p>
									<p>
										61.7.6 Document
										<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSRates[47].rate"
												value="${knightedWBSRateForm.knightedWBSRates[47].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[47].taskNumber"
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
											<input name="knightedWBSRates[48].rate"
												value="${knightedWBSRateForm.knightedWBSRates[48].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[48].taskNumber"
												value="61.7.7.1" />
							</span>
												</p>
												<p>
													61.7.7.2 Documentation 
													<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSRates[49].rate"
												value="${knightedWBSRateForm.knightedWBSRates[49].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[49].taskNumber"
												value="61.7.7.2" />
							</span>
												</p>
												<p>
													61.7.7.3 Re-testing
													<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSRates[50].rate"
												value="${knightedWBSRateForm.knightedWBSRates[50].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[50].taskNumber"
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
											<input name="knightedWBSRates[51].rate"
												value="${knightedWBSRateForm.knightedWBSRates[51].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[51].taskNumber"
												value="61.7.8" />
							</span>
									</p>
									<p>
										61.7.9 Re-work
										<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSRates[52].rate"
												value="${knightedWBSRateForm.knightedWBSRates[52].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[52].taskNumber"
												value="61.7.9" />
							</span>
									</p>

								</div>
							</div>
						</div>
						<p>
							61.8 DB Server Inst Config <span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSRates[53].rate"
												value="${knightedWBSRateForm.knightedWBSRates[53].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[53].taskNumber"
												value="61.8" />
							</span>
						</p>
						<p>
							61.9 Int Server Inst Config 
							<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSRates[54].rate"
												value="${knightedWBSRateForm.knightedWBSRates[54].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[54].taskNumber"
												value="61.9" />
							</span>
						</p>
						<p>
							61.CONV Converted 
							<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSRates[55].rate"
												value="${knightedWBSRateForm.knightedWBSRates[55].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[55].taskNumber"
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
						<%-- <c:forEach 	items="${knightedWBSRateForm.knightedWBSRates}"
										var="knightedWBSTechnology" varStatus="status"> --%>
						<p>
							62.1 Executive Management 
							
							<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSRates[56].rate"
												value="${knightedWBSRateForm.knightedWBSRates[56].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[56].taskNumber"
												value="62.1" />
							</span>
						</p>
						<p>
							62.2 Project Management <span style="float: right;"> 
								
										
											<label>Hours:</label> <input
												name="knightedWBSRates[57].rate"
												value="${knightedWBSRateForm.knightedWBSRates[57].rate}" />
												<input style="visibility: hidden;" name="knightedWBSRates[57].taskNumber"
												value="62.2" />
									
						</span>
						</p>
						<p>
							62.3 Proc Flow and Bus An <span style="float: right;"> 
											<label>Hours:</label> <input
												name="knightedWBSRates[58].rate"
												value="${knightedWBSRateForm.knightedWBSRates[58].rate}" />
												<input style="visibility: hidden;" name="knightedWBSRates[58].taskNumber"
												value="62.3" />
									</span>
						</p>
						<p>
							62.4 Appl Gap Analysis <span style="float: right;"> 
											<label>Hours:</label> <input
												name="knightedWBSRates[59].rate"
												value="${knightedWBSRateForm.knightedWBSRates[59].rate}" />
												<input style="visibility: hidden;" name="knightedWBSRates[59].taskNumber"
												value="62.4" />
									</span>
						</p>
						<%-- </c:forEach> --%>
						<p>
							62.5 Server Install Confi
							<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSRates[60].rate"
												value="${knightedWBSRateForm.knightedWBSRates[60].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[60].taskNumber"
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
											<input name="knightedWBSRates[61].rate"
												value="${knightedWBSRateForm.knightedWBSRates[61].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[61].taskNumber"
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
											<input name="knightedWBSRates[62].rate"
												value="${knightedWBSRateForm.knightedWBSRates[62].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[62].taskNumber"
												value="62.6.2.1" />
							</span>
												</p>
												<p>
													62.6.2.2 Development 
													<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSRates[63].rate"
												value="${knightedWBSRateForm.knightedWBSRates[63].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[63].taskNumber"
												value="62.6.2.2" />
							</span>
												</p>
												<p>
													62.6.2.3 Unit test
													<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSRates[64].rate"
												value="${knightedWBSRateForm.knightedWBSRates[64].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[64].taskNumber"
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
											<input name="knightedWBSRates[65].rate"
												value="${knightedWBSRateForm.knightedWBSRates[65].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[65].taskNumber"
												value="62.6.2.4.1" />
							</span>
															</p>
															<p>
																62.6.2.4.2 Documentation 
																<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSRates[66].rate"
												value="${knightedWBSRateForm.knightedWBSRates[66].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[66].taskNumber"
												value="62.6.2.4.2" />
							</span>
															</p>
															<p>
																62.6.2.4.3 Re-testing
																<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSRates[67].rate"
												value="${knightedWBSRateForm.knightedWBSRates[67].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[67].taskNumber"
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
											<input name="knightedWBSRates[68].rate"
												value="${knightedWBSRateForm.knightedWBSRates[68].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[68].taskNumber"
												value="62.6.2.5" />
							</span>
												</p>
												<p>
													62.6.2.6 Re-work
													<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSRates[69].rate"
												value="${knightedWBSRateForm.knightedWBSRates[69].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[69].taskNumber"
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
											<input name="knightedWBSRates[70].rate"
												value="${knightedWBSRateForm.knightedWBSRates[70].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[70].taskNumber"
												value="62.7.1" />
							</span>
									</p>
									<p>
										62.7.2 Specification
										<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSRates[71].rate"
												value="${knightedWBSRateForm.knightedWBSRates[71].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[71].taskNumber"
												value="62.7.2" />
							</span>
									</p>

									<p>
										62.7.3 Design
										<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSRates[72].rate"
												value="${knightedWBSRateForm.knightedWBSRates[72].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[72].taskNumber"
												value="62.7.3" />
							</span>
									</p>
									<p>
										62.7.4 Develop
										<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSRates[73].rate"
												value="${knightedWBSRateForm.knightedWBSRates[73].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[73].taskNumber"
												value="62.7.4" />
							</span>
									</p>
									<p>
										62.7.5 Unit test
										<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSRates[74].rate"
												value="${knightedWBSRateForm.knightedWBSRates[74].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[74].taskNumber"
												value="62.7.5" />
							</span>
									</p>
									<p>
										62.7.6 Document
										<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSRates[75].rate"
												value="${knightedWBSRateForm.knightedWBSRates[75].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[75].taskNumber"
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
											<input name="knightedWBSRates[76].rate"
												value="${knightedWBSRateForm.knightedWBSRates[76].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[76].taskNumber"
												value="62.7.7.1" />
							</span>
												</p>
												<p>
													62.7.7.2 Documentation 
													<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSRates[77].rate"
												value="${knightedWBSRateForm.knightedWBSRates[77].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[77].taskNumber"
												value="62.7.7.2" />
							</span>
												</p>
												<p>
													62.7.7.3 Re-testing
													<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSRates[78].rate"
												value="${knightedWBSRateForm.knightedWBSRates[78].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[78].taskNumber"
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
											<input name="knightedWBSRates[79].rate"
												value="${knightedWBSRateForm.knightedWBSRates[79].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[79].taskNumber"
												value="62.7.8" />
							</span>
									</p>
									<p>
										62.7.9 Re-work
										<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSRates[80].rate"
												value="${knightedWBSRateForm.knightedWBSRates[80].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[80].taskNumber"
												value="62.7.9" />
							</span>
									</p>

								</div>
							</div>
						</div>
						<p>
							62.8 DB Server Inst Config <span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSRates[81].rate"
												value="${knightedWBSRateForm.knightedWBSRates[81].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[81].taskNumber"
												value="62.8" />
							</span>
						</p>
						<p>
							62.9 Int Server Inst Config 
							<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSRates[82].rate"
												value="${knightedWBSRateForm.knightedWBSRates[82].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[82].taskNumber"
												value="62.9" />
							</span>
						</p>
						<p>
							62.CONV Converted 
							<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSRates[83].rate"
												value="${knightedWBSRateForm.knightedWBSRates[83].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[83].taskNumber"
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
						<%-- <c:forEach 	items="${knightedWBSRateForm.knightedWBSRates}"
										var="knightedWBSTechnology" varStatus="status"> --%>
						<p>
							63.1 Executive Management 
							
							<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSRates[84].rate"
												value="${knightedWBSRateForm.knightedWBSRates[84].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[84].taskNumber"
												value="63.1" />
							</span>
						</p>
						<p>
							63.2 Project Management <span style="float: right;"> 
								
										
											<label>Hours:</label> <input
												name="knightedWBSRates[85].rate"
												value="${knightedWBSRateForm.knightedWBSRates[85].rate}" />
												<input style="visibility: hidden;" name="knightedWBSRates[85].taskNumber"
												value="63.2" />
									
						</span>
						</p>
						<p>
							63.3 Proc Flow and Bus An <span style="float: right;"> 
											<label>Hours:</label> <input
												name="knightedWBSRates[86].rate"
												value="${knightedWBSRateForm.knightedWBSRates[86].rate}" />
												<input style="visibility: hidden;" name="knightedWBSRates[86].taskNumber"
												value="63.3" />
									</span>
						</p>
						<p>
							63.4 Appl Gap Analysis <span style="float: right;"> 
											<label>Hours:</label> <input
												name="knightedWBSRates[87].rate"
												value="${knightedWBSRateForm.knightedWBSRates[87].rate}" />
												<input style="visibility: hidden;" name="knightedWBSRates[87].taskNumber"
												value="63.4" />
									</span>
						</p>
						<%-- </c:forEach> --%>
						<p>
							63.5 Server Install Confi
							<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSRates[88].rate"
												value="${knightedWBSRateForm.knightedWBSRates[88].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[88].taskNumber"
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
											<input name="knightedWBSRates[89].rate"
												value="${knightedWBSRateForm.knightedWBSRates[89].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[89].taskNumber"
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
											<input name="knightedWBSRates[90].rate"
												value="${knightedWBSRateForm.knightedWBSRates[90].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[90].taskNumber"
												value="63.6.2.1" />
							</span>
												</p>
												<p>
													63.6.2.2 Development 
													<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSRates[91].rate"
												value="${knightedWBSRateForm.knightedWBSRates[91].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[91].taskNumber"
												value="63.6.2.2" />
							</span>
												</p>
												<p>
													63.6.2.3 Unit test
													<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSRates[92].rate"
												value="${knightedWBSRateForm.knightedWBSRates[92].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[92].taskNumber"
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
											<input name="knightedWBSRates[93].rate"
												value="${knightedWBSRateForm.knightedWBSRates[93].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[93].taskNumber"
												value="63.6.2.4.1" />
							</span>
															</p>
															<p>
																63.6.2.4.2 Documentation 
																<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSRates[94].rate"
												value="${knightedWBSRateForm.knightedWBSRates[94].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[94].taskNumber"
												value="63.6.2.4.2" />
							</span>
															</p>
															<p>
																63.6.2.4.3 Re-testing
																<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSRates[95].rate"
												value="${knightedWBSRateForm.knightedWBSRates[95].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[95].taskNumber"
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
											<input name="knightedWBSRates[96].rate"
												value="${knightedWBSRateForm.knightedWBSRates[96].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[96].taskNumber"
												value="63.6.2.5" />
							</span>
												</p>
												<p>
													63.6.2.6 Re-work
													<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSRates[97].rate"
												value="${knightedWBSRateForm.knightedWBSRates[97].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[97].taskNumber"
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
											<input name="knightedWBSRates[98].rate"
												value="${knightedWBSRateForm.knightedWBSRates[98].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[98].taskNumber"
												value="63.7.1" />
							</span>
									</p>
									<p>
										63.7.2 Specification
										<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSRates[99].rate"
												value="${knightedWBSRateForm.knightedWBSRates[99].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[99].taskNumber"
												value="63.7.2" />
							</span>
									</p>

									<p>
										63.7.3 Design
										<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSRates[100].rate"
												value="${knightedWBSRateForm.knightedWBSRates[100].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[100].taskNumber"
												value="63.7.3" />
							</span>
									</p>
									<p>
										63.7.4 Develop
										<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSRates[101].rate"
												value="${knightedWBSRateForm.knightedWBSRates[101].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[101].taskNumber"
												value="63.7.4" />
							</span>
									</p>
									<p>
										63.7.5 Unit test
										<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSRates[102].rate"
												value="${knightedWBSRateForm.knightedWBSRates[102].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[102].taskNumber"
												value="63.7.5" />
							</span>
									</p>
									<p>
										63.7.6 Document
										<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSRates[103].rate"
												value="${knightedWBSRateForm.knightedWBSRates[103].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[103].taskNumber"
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
											<input name="knightedWBSRates[104].rate"
												value="${knightedWBSRateForm.knightedWBSRates[104].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[104].taskNumber"
												value="63.7.7.1" />
							</span>
												</p>
												<p>
													63.7.7.2 Documentation 
													<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSRates[105].rate"
												value="${knightedWBSRateForm.knightedWBSRates[105].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[105].taskNumber"
												value="63.7.7.2" />
							</span>
												</p>
												<p>
													63.7.7.3 Re-testing
													<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSRates[106].rate"
												value="${knightedWBSRateForm.knightedWBSRates[106].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[106].taskNumber"
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
											<input name="knightedWBSRates[107].rate"
												value="${knightedWBSRateForm.knightedWBSRates[107].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[107].taskNumber"
												value="63.7.8" />
							</span>
									</p>
									<p>
										63.7.9 Re-work
										<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSRates[108].rate"
												value="${knightedWBSRateForm.knightedWBSRates[108].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[108].taskNumber"
												value="63.7.9" />
							</span>
									</p>

								</div>
							</div>
						</div>
						<p>
							63.8 DB Server Inst Config <span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSRates[109].rate"
												value="${knightedWBSRateForm.knightedWBSRates[109].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[109].taskNumber"
												value="63.8" />
							</span>
						</p>
						<p>
							63.9 Int Server Inst Config 
							<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSRates[110].rate"
												value="${knightedWBSRateForm.knightedWBSRates[110].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[110].taskNumber"
												value="63.9" />
							</span>
						</p>
						<p>
							63.CONV Converted 
							<span style="float: right;">							
											<label>Hours:</label> 
											<input name="knightedWBSRates[111].rate"
												value="${knightedWBSRateForm.knightedWBSRates[111].rate}" />
												<input style="visibility: hidden;" 
												name="knightedWBSRates[111].taskNumber"
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
