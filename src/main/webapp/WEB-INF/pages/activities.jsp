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
		<h2 class="page_title">Checklist</h2>
		<div class="page_content">
			<table>
			<tr>
			<td><input type="checkbox" value="${activities.i9SectionCompleted}" name="i9" /></td>
			<td>I9 Section Completed</td>
			</tr>
			<tr><td colspan="2">Complete I9 section 1 online on the day you land in US</td></tr>
			</table>
				
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