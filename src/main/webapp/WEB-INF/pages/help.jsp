<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
              <h2 class="page_title">Help!</h2> 
              <div class="page_content"> 
              
              <blockquote>
              Travel Assist is a creative mobile app that will help you find different services while you are going abroad.
              </blockquote>
              
              <img src="images/page_photo.jpg" alt="" title="" />
              
              <h3>Top features</h3>   
              <ul class="features_list">
                  <li><a href="directory.html" data-transition="slidefade"><img src="images/icons/black/photos.png" alt="" title="" /><span>Directory Service</span></a></li>
                  <li><a href="policy.html" data-transition="slidefade"><img src="images/icons/black/toggle.png" alt="" title="" /><span>Policy Service</span></a></li>
                  <li><a href="leave.html" data-transition="slidedown"><img src="images/icons/black/lock.png" alt="" title="" /><span>Leave System Service</span></a></li>
                  <li><a href="contact.html" data-transition="slidefade"><img src="images/icons/black/contact.png" alt="" title="" /><span>Help Desk Service</span></a></li>
                  <li><a href="domestic.html" data-transition="slidedown"><img src="images/icons/black/heart.png" alt="" title="" /><span>Domestic Service</span></a></li>
              </ul>
              
              <a href="home.html" data-transition="slidefade" class="button_full">View all service</a>
              </div>
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
	
	