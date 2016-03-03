<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!--  right panel -->
<div class="user_login_info">

	<div class="user_thumb_container">
		<img src="images/business-travel.png" alt="" title="" />
		<div class="user_thumb">
			<img src="images/self.jpg" alt="" title="" />
		</div>
	</div>

	<div class="user_details">
		<p>Settings</p>
	</div>


	<nav class="user-nav">
		<ul>
			<li><a href="index"><img
					src="images/icons/white/settings.png" alt="" title="" /><span>Select
						Country</span></a> <br /> <br />
				<div class="styled-select slate">
					<form action="home" method="get">
						<select name="country">
							<c:forEach var="country" items="${countries}">
								<option value="${country.key}">${country.value}</option>
							</c:forEach>
						</select> <input type="submit" value="Launch your help portal!" />
					</form>
				</div></li>
			<li><a href="help"><img src="images/icons/white/help.png"
					alt="" title="" /><span>Help!</span></a></li>
		</ul>
	</nav>
</div>
<div class="close_loginpopup_button">
	<a href="#" data-rel="close"><img
		src="images/icons/white/menu_close.png" alt="" title="" /></a>
</div>
<!-- /panel -->