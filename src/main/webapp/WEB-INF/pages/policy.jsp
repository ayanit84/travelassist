<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="/WEB-INF/pages/header.jsp"></jsp:include>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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

		<div class="page_content">
			<form action="policy" method="post">
				<input type="text" name="jobLevel" placeholder="Enter your job level."></input> <input type="submit"
					value="Get Details"></input>
			</form>

			<ul class="features_list_detailed">
				<li>
					<div class="feat_small_details">
						<h4>
							<span>Compensation</span>
						</h4>
					</div>
					<div class="view_more">
						<a href="#" data-transition="slidefade"><img
							src="images/load_posts_disabled.png" alt="" title=""
							onclick="divToggle();" /></a>
					</div>
					<div class="emp-details" style="display: none;">
						<span>Your Onsite Salary will be
							${eligibilityInfo.compensation} </span>
					</div>
				</li>
				<li>
					<div class="feat_small_details">
						<h4>
							<span>Benefits</span>
						</h4>
					</div>
					<div class="view_more">
						<a href="#" data-transition="slidefade"><img
							src="images/load_posts_disabled.png" alt="" title=""
							onclick="divToggle();" /></a>
					</div>
					<div class="emp-details" style="display: none;">
						<span>Child Education reimbursement max limit:
							${eligibilityInfo.childEducationReimburse} </span> </br>
						</br> <span>medical Expense reimbursement max limit:
							${eligibilityInfo.medicalExpenseReimburse} </span>
					</div>
				</li>
			</ul>
		</div>


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