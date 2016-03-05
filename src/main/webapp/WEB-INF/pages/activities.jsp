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
					<td><input type="checkbox"
						value="${activities.i9SectionCompleted}" name="i9" /></td>
					<td><strong>Complete I9 Section</strong></td>
				</tr>
				<tr>
					<td colspan="2">
						<hr width="225" />
						<ul>
							<li style="list-style: disc;">Complete I9 section 1 online
								on the day you land in US</li>
							</br>
							<li style="list-style: disc;">Make an Appointmentwith I9
								Certifying Agency for closing I9 section 2</li>
						</ul>
					</td>
				</tr>
				<tr>
					<td colspan="2">&nbsp;</td>
				</tr>
				<tr>
					<td colspan="2">&nbsp;</td>
				</tr>
				<!--  -->
				<tr>
					<td><input type="checkbox" value="${activities.panApplied}"
						name="pan" /></td>
					<td><strong>Apply For Pan Card</strong></td>
				</tr>
				<tr>
					<td colspan="2">
						<hr width="225">
						<ul>
							<li style="list-style: disc;">Visit Pan Office within 3 days
								from the day you land in US</li>
							</br>
							<li style="list-style: disc;">Make an Appointmentwith I9
								Certifying Agency for closing I9 section 2</li>
						</ul>
					</td>
				</tr>
				<tr>
					<td colspan="2">&nbsp;</td>
				</tr>
				<tr>
					<td colspan="2">&nbsp;</td>
				</tr>


				<!--  -->
				<!--  -->
				<tr>
					<td><input type="checkbox" value="${activities.bankAccountCreated}"
						name="bank" /></td>
					<td><strong>Open Bank Account</strong></td>
				</tr>
				<tr>
					<td colspan="2">
						<hr width="225">
						<ul>
							<li style="list-style: disc;">Some Banks may ask for SSN but may allow you to provide SSN at a later time</li>
							</br>
							<li style="list-style: disc;">Update Bank details in Payworld</li>
						</ul>
					</td>
				</tr>
				<tr>
					<td colspan="2">&nbsp;</td>
				</tr>
				<tr>
					<td colspan="2">&nbsp;</td>
				</tr>


				<!--  -->
				<!--  -->
				<tr>
					<td><input type="checkbox" value="${activities.ssnApplied}"
						name="ssn" /></td>
					<td><strong>Apply For SSN Number</strong></td>
				</tr>
				<tr>
					<td colspan="2">
						<hr width="225">
						<ul>
							<li style="list-style: disc;">The Social Security Administration must have a "Last Name" to create your records."LNU" will not suffice</li>
							</br>
							<li style="list-style: disc;">Apply for SSN within 5 days of arrival in US</li>
						</ul>
					</td>
				</tr>
				<tr>
					<td colspan="2">&nbsp;</td>
				</tr>
				<tr>
					<td colspan="2">&nbsp;</td>
				</tr>


				<!--  -->
				<!--  -->
				<tr>
					<td><input type="checkbox" value="${activities.enrolledForBenefits}"
						name="ssn" /></td>
					<td><strong>Enroll for Benefits </strong></td>
				</tr>
				<tr>
					<td colspan="2">
						<hr width="225">
						<ul>
							<li style="list-style: disc;">Complete and Submit W4 form online in Payworld for Tax Purposes.</li>
							</br>
							<li style="list-style: disc;">For Queries call benefits helpdesk@855-838-4072 and mailid:MyBenefits@Benefitfocus.com</li>
						</ul>
					</td>
				</tr>
				<tr>
					<td colspan="2">&nbsp;</td>
				</tr>
				<tr>
					<td colspan="2">&nbsp;</td>
				</tr>


				<!--  -->
			
			
			
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