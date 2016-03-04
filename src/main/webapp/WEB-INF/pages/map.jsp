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
        <div class="nav_left_button"><a href="#" class="nav-toggle"><span></span></a></div>
        <div class="nav_center_logo">Travel Assist</div>
        <div class="nav_right_button"><a href="#right-panel"><img src="images/icons/white/user.png" alt="" title="" /></a></div>
        <div class="clear"></div>
    </div><!-- /header -->

    <div role="main" class="ui-content">
    
       <div class="pages_maincontent">
       <form action="map" method="GET" name="employees" onsubmit="urlOmit();return false;">
              <h2 class="page_title">Get Direction!</h2> 
              <div class="page_content"> 
               <select name="city" id="city">
					<c:forEach var="city" items="${cities}">
						<option value="${city.key}">${city.value}</option>
					</c:forEach> 
				</select> 
				<input type="submit" value="Find" />
               <div id="map"></div>
              
              </div>
        </form>
       </div>

    </div><!-- /content -->

  <div data-role="panel" id="left-panel" data-display="reveal" data-position="left">
<jsp:include page="/WEB-INF/pages/menu-nav.jsp"></jsp:include>
</div>
   <!-- /panel -->
	 <div data-role="panel" id="right-panel" data-display="reveal" data-position="right">
<jsp:include page="/WEB-INF/pages/right-panel.jsp"></jsp:include>
</div>
    <!-- /page -->
    </div>
	<jsp:include page="/WEB-INF/pages/js-include.jsp"></jsp:include>
	
    
</body>
</html>
	
	