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
<script type="text/javascript">// <![CDATA[
        //run this code when the page loads
        jQuery(document).ready(function(){  
            //call the getGeolocation function below
            getGeolocation();
        });  
        //determine if the user's browser has location services enabled. If not, show a message
        function getGeolocation() { 
            if(navigator.geolocation){
                //if location services are turned on, continue and call the getUserCoordinates function below
                 navigator.geolocation.getCurrentPosition(getUserCoodinates);  
            }else{
                alert('You must enable your device\'s location services in order to run this application.');
            }
        }  
        //function is passed a position object which contains the lat and long value
        function getUserCoodinates(position){  
            //set the application's text inputs LAT and LONG = to the user's lat and long position
            jQuery("#LAT").val(position.coords.latitude);
            jQuery("#LONG").val(position.coords.longitude);
        }
// ]]></script>
<body>

	<div data-role="page" id="about" class="secondarypage" data-theme="b">

<INPUT type="text" name="LAT" id="LAT"/>
<INPUT type="text" name="LONG" id="LONG"/>
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
			<div
				style="border-radius: 10px; overflow: hidden; padding: 0px 3px; padding-top: 3px; width: 190px; margin: auto; align: center; text-align: center;">
				<iframe
					src="http://localtimes.info/timediff.php?lcid=USCA0273,UKXX0085,ASXX0112,SNXX0006,INXX0012,USAZ0166,FRXX0076,AEXX0004&cp=000000,FFFFFF&uc=1"
					seamless="" frameborder="0" width="190" height="329"
					style="background: white"></iframe>
				<a target="_top"
					href="http://localtimes.info/difference/?lcid=USCA0273,UKXX0085,ASXX0112,SNXX0006,INXX0012,USAZ0166,FRXX0076,AEXX0004"
					title="Time Converter" style="color: #000000;"><span
					style="font-size: 10px; font-family: verdana; geneva; line-height: 18px;">Time
						Converter</span></a>
			</div>

			<div class="pages_maincontent">
				<h2 class="page_title">Infocions</h2>
				<div class="page_content">
					<ul class="features_list_detailed">
						<li>
							<div class="feat_small_details">
								<h4>Employee1</h4>
							</div>
							<div class="view_more">
								<a href="#" data-transition="slidefade"> <img
									src="images/load_posts_disabled.png" alt="" title=""
									onclick="divToggle();" /></a>
							</div>
							<div class="emp-details mobileonly" style="display: none;">
								<span class="strong-cls">Contact Information:</span>
								<table class="emp-details-table">
									<tr>
										<td>Conatct No.:</td>
										<td>9435789088</td>
									</tr>
									<tr>
										<td>Eamil Id:</td>
										<td>saikamini.9@gmail.com</td>
									</tr>
								</table>
								<br>
								<span class="strong-cls">Office Information:</span>
								<table class="emp-details-table">
									<tr>
										<td>Unit:</td>
										<td>MFGADM</td>
									</tr>
									<tr>
										<td>Designation:</td>
										<td>Senior System Engineer</td>
									</tr>
								</table>
							</div>
						</li>
						<li>
							<div class="feat_small_details">
								<h4>Employee2</h4>
							</div>
							<div class="view_more">
								<a href="#" data-transition="slidefade"><img
									src="images/load_posts_disabled.png" alt="" title=""
									onclick="divToggle();" /></a>
							</div>
							<div class="emp-details" style="display: none;">
								<span class="strong-cls">Contact Information:</span>
								<table class="emp-details-table">
									<tr>
										<td>Conatct No.:</td>
										<td>9435789088</td>
									</tr>
									<tr>
										<td>Eamil Id:</td>
										<td>saikamini.9@gmail.com</td>
									</tr>
								</table>
								<br>
								<span class="strong-cls">Office Information:</span>
								<table class="emp-details-table">
									<tr>
										<td>Unit:</td>
										<td>MFGADM</td>
									</tr>
									<tr>
										<td>Designation:</td>
										<td>Senior System Engineer</td>
									</tr>
								</table>
							</div>
						</li>
					</ul>
					<button class="mobileonly singlebutton"
						style="color: #FFFFFF; font-size: 20px;" title="Expand Menu"
						onclick="$('#menuslide').slideToggle('fast');">Quick
						Links Menu</button>
					<br />
					<div id="menuslide" class="infodiv mobileonly"
						style="display: none; list-style: none; font-size: 24px; width: 200px; height: 200px; background: red;">Slide
						Div</div>
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
