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

		<form action="list" method="POST" name="employees">
			<span>State</span> 
				<select name="state" id="state">
					<c:forEach var="state" items="${states}">
						<option value="${state.key}">${state.value}</option>
					</c:forEach>
				</select>
				<span>City</span> <select name="city" id="city">
					<c:forEach var="city" items="${cities}">
						<option value="${city.key}">${city.value}</option>
					</c:forEach>
				</select> 
				<input type="submit" value="Search" />
			<div role="main" class="ui-content">
				

				<div class="pages_maincontent">
					<h2 class="page_title">Infocions</h2>
					<div class="page_content">
						<ul class="features_list_detailed">
							<li>
								<div class="feat_small_details">
									<h4>Employee1</h4>
								</div>
								<div class="view_more">
									<a href="#" data-transition="slidefade"><img
										src="images/load_posts_disabled.png" alt="" title="" /></a>
								</div>
								<div class="emp-details" style="display: none;">
									<span class="strong-cls">Contact Information:</span>
									<table class="emp-details-table">
										<tr>
											<td>Conatct No.:</td>
											<td>9435789088</td>
										</tr>
										<tr>
											<td>Eamil Id:</td>
											<td>saikamini.9@gmail.com</td>
										</tr>
									</table>
									<br>
									<span class="strong-cls">Office Information:</span>
									<table class="emp-details-table">
										<tr>
											<td>Unit:</td>
											<td>MFGADM</td>
										</tr>
										<tr>
											<td>Designation:</td>
											<td>Senior System Engineer</td>
										</tr>
									</table>
								</div>
							</li>
							<li>
								<div class="feat_small_details">
									<h4>Employee2</h4>
								</div>
								<div class="view_more">
									<a href="#" data-transition="slidefade"><img
										src="images/load_posts_disabled.png" alt="" title="" /></a>
								</div>
								<div class="emp-details" style="display: none;">
									<span class="strong-cls">Contact Information:</span>
									<table class="emp-details-table">
										<tr>
											<td>Conatct No.:</td>
											<td>9435789088</td>
										</tr>
										<tr>
											<td>Eamil Id:</td>
											<td>saikamini.9@gmail.com</td>
										</tr>
									</table>
									<br>
									<span class="strong-cls">Office Information:</span>
									<table class="emp-details-table">
										<tr>
											<td>Unit:</td>
											<td>MFGADM</td>
										</tr>
										<tr>
											<td>Designation:</td>
											<td>Senior System Engineer</td>
										</tr>
									</table>
								</div>
							</li>
						</ul>
					</div>
				</div>

			</div>
		</form>
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


	<script>
		$('.view_more').click(function() {
			$(this).next('.emp-details').slideToggle("slow");
		});
	</script>
	<script type="text/javascript">
	$(document).ready(function() { 
		$('#state').change(
			function() {
				$.getJSON('http://localhost:8080/servicemanager/service/country/cities/us/' + $(this).val(), function(data) 
				{
					$('#city').html('');
					var html = '';
					var len = data.length;
					for ( var i = 0; i < len; i++) {
						html += '<option value="' + data[i].key + '">'
								+ data[i].value + '</option>';
					}
	 
					$('#city').html(html);
				});
			});
	});
</script>
</body>
</html>

