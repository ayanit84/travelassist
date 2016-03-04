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
              <h2 class="page_title">Services</h2> 
              <div class="page_content"> 
                  <ul class="social_share">
                  <li>
                  <a href="showFilter">
                  	<img src="images/icons/black/directory.png" alt="" title="" />
                  	<span><strong>Directory</strong></span>
                  </a>
                  </li>
                  <li>
                  <a href="#"><img src="images/icons/black/domestic.png" alt="" title="" />
                  <span><strong>Domestic</strong></span>
                  </a>
                  </li>
                  <li>
                  <a href="#"><img src="images/icons/black/dos.png" alt="" title="" />
                  <span><strong>Dos</strong></span>
                  </a>
                  </li>
                  <li>
                  <a href="emergency-contact"><img src="images/icons/black/helpdesk.png" alt="" title="" />
                  <span><strong>Emergency Contacts</strong></span>
                  </a>
                  </li>
                  <li>
                  <a href="#"><img src="images/icons/black/leaves.png" alt="" title="" />
                  <span><strong>Leaves</strong></span>
                  </a>
                  </li>
                  <li>
                  <a href="#"><img src="images/icons/black/map.png" alt="" title="" />
                  <span><strong>Map</strong></span>
                  </a>
                  </li>
                  <li>
                  <a href="policy"><img src="images/icons/black/policy.png" alt="" title="" />
                  <span><strong>Policy</strong></span>
                  </a>
                  </li>
                  <li>
                  <a href="#"><img src="images/icons/black/travel.png" alt="" title="" />
                  <span><strong>Travel</strong></span>
                  </a>
                  </li>
                  <li>
                  <a href="#"><img src="images/icons/black/weather.png" alt="" title="" />
                  <span><strong>Weather</strong></span>
                  </a>
                  </li>
                  </ul>
              
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
	
	