<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="/WEB-INF/pages/header.jsp"></jsp:include>
</head>
<body>

	<div data-role="page" id="about" class="secondarypage" data-theme="b">

		<div data-role="header" data-position="fixed">
			<div class="nav_left_button">
				<a href="#" class="nav-toggle"><span></span></a>
			</div>
			<div class="nav_center_logo">Travel Assist</div>
			<div class="nav_right_button">
				<a href="#right-panel"><img src="images/icons/white/user.png"
					alt="" title="" /></a>
			</div>
			<div class="clear"></div>
		</div>
		<!-- /header -->

		<div role="main" class="ui-content">

			<div class="pages_maincontent">
				<h2 class="page_title">HelpDesk</h2>
				<div class="page_content">
					<ul class="features_list_detailed">
						<li>
							<div class="feat_small_details">
								<h4>BP HR</h4>
							</div>
							<div class="view_more">
								<a href="#" data-transition="slidefade"><img
									src="images/load_posts_disabled.png" alt="" title=""
									onclick="divToggle();" /></a>
							</div>
							<div class="emp-details" style="display: none;">
								<span class="strong-cls">Contact Information:</span>
								<table class="emp-details-table">
									<tr>
										<td>Name:</td>
										<td><span>${bphr.firstName}</span><span>${bphr.lastName}</span></td>
									</tr>
									<tr>
										<td>Conatct No.:</td>
										<td><a href="tel:${bphr.mobileNumber}">${bphr.mobileNumber}</a></td>
									</tr>
									<tr>
										<td>Eamil Id:</td>
										<td><a href="mailto:${bphr.officeMail}">${bphr.officeMail}</a></td>
									</tr>
								</table>
								<br>
								<span class="strong-cls">Office Information:</span>
								<table class="emp-details-table">
									<tr>
										<td>Unit:</td>
										<td>${bphr.unit}</td>
									</tr>
								</table>
							</div>
						</li>
						<li>
							<div class="feat_small_details">
								<h4>Head of Country</h4>
							</div>
							<div class="view_more">
								<a href="#" data-transition="slidefade"><img
									src="images/load_posts_disabled.png" alt="" title=""
									onclick="divToggle();" /></a>
							</div>
							<div class="emp-details" style="display: none;">
								<span class="strong-cls">Contact Information:</span>
								<table class="emp-details-table">
									<tr>
										<td>Name:</td>
										<td><span>${countryHead.firstName}</span><span>${countryHead.lastName}</span></td>
									</tr>
									<tr>
										<td>Conatct No.:</td>
										<td><a href="tel:${countryHead.mobileNumber}">${countryHead.mobileNumber}</a></td>
									</tr>
									<tr>
										<td>Eamil Id:</td>
										<td><a href="mailto:${countryHead.officeMail}">${countryHead.officeMail}</a></td>
									</tr>
								</table>
								<br>
								<span class="strong-cls">Office Information:</span>
								<table class="emp-details-table">
									<tr>
										<td>Unit:</td>
										<td>${countryHead.unit}</td>
									</tr>
								</table>
							</div>
						</li>

						<li>
							<div class="feat_small_details">
								<h4>Service Desk:</h4>
							</div>
							<div class="view_more">
								<a href="#" data-transition="slidefade"><img
									src="images/load_posts_disabled.png" alt="" title=""
									onclick="divToggle();" /></a>
							</div>
							<div class="emp-details" style="display: none;">
								<table class="emp-details-table">
									<c:forEach var="sd" items="${serviceDesk}">
										<tr>
											<td>${sd.key}​:</td>
											<td>${sd.value}</td>
										</tr>
									</c:forEach>
									<!-- <tr><td>CCD Global support (Old Series)​:</td><td>basca</td></tr>
		          	<tr><td>Reachable through​:</td><td>nbvbn</td></tr>
		          	<tr><td>CCD Global support (3355INFY Series )​:</td><td>bvcbvxbvc</td></tr>
		          	<tr><td>Reachable through​:</td><td>nbvbn</td></tr> -->
								</table>
							</div>
						</li>

						<li>
							<div class="feat_small_details">
								<h4>Emergency Contacts:</h4>
							</div>
							<div class="view_more">
								<a href="#" data-transition="slidefade"><img
									src="images/load_posts_disabled.png" alt="" title=""
									onclick="divToggle();" /></a>
							</div>
							<div class="emp-details" style="display: none;">
								<table class="emp-details-table">
									<c:forEach var="em" items="${emergencyContacts}">
										<tr>
											<td>${em.key}​:</td>
											<td>${em.value}</td>
										</tr>
									</c:forEach>
									<!-- <tr><td>Ambulance​:</td><td>basca</td></tr>
		          	<tr><td>Police​:</td><td>nbvbn</td></tr>
		          	<tr><td>Fire Brigade​:</td><td>bvcbvxbvc</td></tr>
		          	<tr><td>Hospitals​:</td><td>nbvbn</td></tr>
		          	<tr><td>Local Dialing Code:</td><td>nbvbn</td></tr> -->
								</table>
							</div>
						</li>

						<li>
							<div class="feat_small_details">
								<h4>Incident Reporting:</h4>
							</div>
							<div class="view_more">
								<a href="#" data-transition="slidefade"><img
									src="images/load_posts_disabled.png" alt="" title=""
									onclick="divToggle();" /></a>
							</div>
							<div class="emp-details" style="display: none;">
								<table class="emp-details-table">
									<c:forEach var="in" items="${incidentReporting}">
										<tr>
											<td>${in.key}​:</td>
											<td>${in.value}</td>
										</tr>
									</c:forEach>
									<!-- <tr><td>IT Security Related Incidents:</td><td>basca</td></tr>
		          	<tr><td>Physical Security Related Incidents​:</td><td>nbvbn</td></tr>
		          	<tr><td>People Related Incidents​:</td><td>bvcbvxbvc</td></tr> -->
								</table>
							</div>
						</li>
					</ul>
				</div>
			</div>

		</div>
		<!-- /content -->

		<div data-role="panel" id="left-panel" data-display="reveal"
			data-position="left">
			<jsp:include page="/WEB-INF/pages/menu-nav.jsp"></jsp:include>
		</div>
		<!-- /panel -->
		<div data-role="panel" id="right-panel" data-display="reveal"
			data-position="right">
			<jsp:include page="/WEB-INF/pages/right-panel.jsp"></jsp:include>
		</div>
		<!-- /page -->
	</div>
	<jsp:include page="/WEB-INF/pages/js-include.jsp"></jsp:include>
</body>
</html>

