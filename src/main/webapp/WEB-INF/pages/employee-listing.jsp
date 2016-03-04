<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="/WEB-INF/pages/header.jsp"></jsp:include>
<script type="text/javascript">
	function getMoreFilters() {
		document.getElementById["employees"].action = "showMoreFilters";
		document.getElementById["employees"].submit();
	}
</script>
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
				<form action="list" method="POST" name="employees">
				<div class="page_content">
				<h2 class="strong-cls" style="text-align:center;">State</h2> 
				<select name="state" id="state" onchange="countryChange()" >
					<c:forEach var="state" items="${states}">
						<option value="${state.key}">${state.value}</option>
					</c:forEach> 
				</select> 
				<!--  <select name="city" id="city">
					<c:forEach var="city" items="${cities}">
						<option value="${city.key}">${city.value}</option>
					</c:forEach>-->
					<div id="city">
					</div>
				<input type="submit" value="Search" />
				</div>
					<h2 class="page_title">Infoscions</h2>
					<div class="page_content">
						<ul class="features_list_detailed">
								<c:forEach var="employee" items="${employees}">
								<li>
								<div class="feat_small_details">
									<h4><span>${employee.firstName}</span><span>${employee.lastName}</span></h4>
								</div>
									<div class="view_more">
										<a href="#" data-transition="slidefade"><img
											src="images/load_posts_disabled.png" alt="" title="" onclick="divToggle();"/></a>
									</div>
									<div class="emp-details" style="display: none;">
										<span class="strong-cls">Contact Information:</span>
										<table class="emp-details-table">
											<tr>
												<td>Conatct No.:</td>
												<td>${employee.mobileNumber}</td>
											</tr>
											<tr>
												<td>Eamil Id:</td>
												<td>${employee.officeMail}</td>
											</tr>
										</table>
										<br>
										<span class="strong-cls">Office Information:</span>
										<table class="emp-details-table">
											<tr>
												<td>Unit:</td>
												<td>${employee.unit}</td>
											</tr>
											<tr>
												<td>Designation:</td>
												<td>${employee.designation}</td>
											</tr>
										</table>
									</div>
									</li>
								</c:forEach>
						</ul>
					</div>
							</form>
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

