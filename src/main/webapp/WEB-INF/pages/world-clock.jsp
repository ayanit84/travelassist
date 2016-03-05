<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="/WEB-INF/pages/header.jsp"></jsp:include>
<jsp:include page="/WEB-INF/pages/js-include.jsp"></jsp:include>
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

		<div role="main" class="ui-content">
			<div class="pages_maincontent">
				<h2 class="page_title">World Clock</h2>
				<div class="page_content">
				<div>
					<!-- clock widget start -->
<script type="text/javascript"> var css_file=document.createElement("link"); css_file.setAttribute("rel","stylesheet"); css_file.setAttribute("type","text/css"); css_file.setAttribute("href","//s.bookcdn.com//css/cl/bw-cl-180x170r3.css"); document.getElementsByTagName("head")[0].appendChild(css_file); </script> <div id="tw_13_353210835"><div style="width:145px; height:50px; margin: 0 auto;"><a href="#">New Delhi</a><br/></div></div> <script type="text/javascript"> function setWidgetData_353210835(data){ if(typeof(data) != 'undefined' && data.results.length > 0) { for(var i = 0; i < data.results.length; ++i) { var objMainBlock = ''; var params = data.results[i]; objMainBlock = document.getElementById('tw_'+params.widget_type+'_'+params.widget_id); if(objMainBlock !== null) objMainBlock.innerHTML = params.html_code; } } } var clock_timer_353210835 = -1; </script> <script type="text/javascript" charset="UTF-8" src="http://www.booked.net/?page=get_time_info&ver=2&domid=209&type=13&id=353210835&scode=124&city_id=18038&wlangid=1&mode=2&details=0&background=ffffff&color=000000&add_background=ffffff&add_color=000000&head_color=ffffff&border=0&transparent=0"></script>
<!-- clock widget end -->



				</div>
				<div
				style="border-radius: 10px; overflow: hidden; padding: 0px 3px; padding-top: 3px; width: 190px; margin: auto; align: center; text-align: center;">
				<iframe
					src="http://localtimes.info/timediff.php?lcid=USCA0273,UKXX0085,ASXX0112,SNXX0006,INXX0012,USAZ0166,FRXX0076,AEXX0004&cp=000000,FFFFFF&uc=1"
					seamless="" frameborder="0" width="190" height="329"
					style="background: white"></iframe>
				
			</div>
					
				</div>
			</div>

		</div>
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

	<!-- <script src="js/jquery.min.js"></script> -->
	<!-- <script>
		/* $('.view_more').click(function() {
			$(this).next('.emp-details').slideUp("slow");
		}); */
		function slideDiv(ev) {
			console.log("slideDiv invocation **",ev.target);
		}
	</script> -->
</body>
</html>

