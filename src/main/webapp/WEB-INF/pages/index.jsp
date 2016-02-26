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

<div data-role="page" id="homepage" data-theme="b">

    <div role="main" class="ui-content">

        <div class="logo_container">
            <div class="logo">
            <img src="images/logo.png" alt="biotic" title="biotic" />
            <h2>Travel Assist</h2>
            <span>Self Help Portal</span>                        
            </div>                     
        </div>
        <div class="slide_info">SLIDE RIGHT TO NAVIGATE</div>

    </div><!-- /content -->
 <div data-role="panel" id="left-panel" data-display="reveal" data-position="left">
<jsp:include page="/WEB-INF/pages/menu-nav.jsp"></jsp:include>
</div>
    
    <!-- /panel -->
    <div data-role="panel" id="right-panel" data-display="reveal" data-position="right">
<jsp:include page="/WEB-INF/pages/right-panel.jsp"></jsp:include>
</div>
<!-- /panel -->

</div><!-- /page -->
<jsp:include page="/WEB-INF/pages/js-include.jsp"></jsp:include>
</body>
</html>
	
	