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
              	<div class="cirmenu cirmenu1">
              	 <img src="images/icons/white/team.png" alt="" title="" align="middle" />
              	 <span>Directory</span>
              	</div>
              	<div class="cirmenu cirmenu2">
              	<img src="images/icons/white/settings.png" alt="" title="" />
              	<span>HelpDesk</span>
              	</div>
              	<div class="cirmenu cirmenu3">
              	<img src="images/icons/white/contact.png" alt="" title="" />
              	<span>Domestic</span>
              	</div>
              	<div class="cirmenu cirmenu4">
              	 <img src="images/icons/white/team.png" alt="" title="" align="middle" />
              	 <span>Directory</span>
              	</div>
              	<div class="cirmenu cirmenu5">
              	<img src="images/icons/white/settings.png" alt="" title="" />
              	<span>HelpDesk</span>
              	</div>
              	<div class="cirmenu cirmenu6">
              	<img src="images/icons/white/contact.png" alt="" title="" />
              	<span>Domestic</span>
              	</div>
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
	
	