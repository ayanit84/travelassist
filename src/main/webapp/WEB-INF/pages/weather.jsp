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
				<h2 class="page_title">Weather of top cities!</h2>
				<div class="page_content">
				
				<div style="text-align:center;">
								<!-- weather widget start --><div id="m-booked-custom-widget-85250"> <div class="weather-customize" style="width:250px;"> <div class="booked-weather-custom-160 color-009fa0" style="width:250px;" id="width3"> <div class="booked-weather-custom-160-date">Weather, 05 March</div> <div class="booked-weather-custom-160-main more"> <a href="//www.booked.net/weather/bangalore-18033" class="booked-weather-custom-160-city"> Bangalore Weather </a> <div class="booked-weather-custom-160-degree booked-weather-custom-C wmd03"><span><span class="plus">+</span>31</span></div> <div class="booked-weather-custom-details"> <p><span>High: <strong><span class="plus">+</span>32<sup>°</sup></strong></span><span> Low: <strong><span class="plus">+</span>21<sup>°</sup></strong></span></p> <p>Humidity: <strong>41%</strong></p> <p>Wind: <strong>E - 10 KPH</strong></p> </div> </div> <div class="booked-weather-custom-160-main more"> <a href="//www.booked.net/weather/london-18114" class="booked-weather-custom-160-city"> London Weather </a> <div class="booked-weather-custom-160-degree booked-weather-custom-C wmd22"><span><span class="plus">+</span>7</span></div> <div class="booked-weather-custom-details"> <p><span>High: <strong><span class="plus">+</span>7<sup>°</sup></strong></span><span> Low: <strong><span class="plus">+</span>4<sup>°</sup></strong></span></p> <p>Humidity: <strong>100%</strong></p> <p>Wind: <strong>NNW - 32 KPH</strong></p> </div> </div> <div class="booked-weather-custom-160-main more"> <a href="//www.booked.net/weather/cupertino-5634" class="booked-weather-custom-160-city"> Cupertino Weather </a> <div class="booked-weather-custom-160-degree booked-weather-custom-C wmd18"><span><span class="plus">+</span>14</span></div> <div class="booked-weather-custom-details"> <p><span>High: <strong><span class="plus">+</span>14<sup>°</sup></strong></span><span> Low: <strong><span class="plus">+</span>9<sup>°</sup></strong></span></p> <p>Humidity: <strong>99%</strong></p> <p>Wind: <strong>S - 16 KPH</strong></p> </div> </div> <div class="booked-weather-custom-160-main more"> <a href="//www.booked.net/weather/sydney-30285" class="booked-weather-custom-160-city"> Sydney Weather </a> <div class="booked-weather-custom-160-degree booked-weather-custom-C wmd01"><span><span class="plus">+</span>27</span></div> <div class="booked-weather-custom-details"> <p><span>High: <strong><span class="plus">+</span>27<sup>°</sup></strong></span><span> Low: <strong><span class="plus">+</span>20<sup>°</sup></strong></span></p> <p>Humidity: <strong>62%</strong></p> <p>Wind: <strong>ENE - 9 KPH</strong></p> </div> </div> <div class="booked-weather-custom-160-main more"> <a href="//www.booked.net/weather/singapore-21" class="booked-weather-custom-160-city"> Singapore Weather </a> <div class="booked-weather-custom-160-degree booked-weather-custom-C wmd03"><span><span class="plus">+</span>29</span></div> <div class="booked-weather-custom-details"> <p><span>High: <strong><span class="plus">+</span>29<sup>°</sup></strong></span><span> Low: <strong><span class="plus">+</span>28<sup>°</sup></strong></span></p> <p>Humidity: <strong>89%</strong></p> <p>Wind: <strong>NNE - 18 KPH</strong></p> </div> </div> <div class="booked-weather-custom-160-main more"> <a href="//www.booked.net/weather/phoenix-647" class="booked-weather-custom-160-city"> Phoenix Weather </a> <div class="booked-weather-custom-160-degree booked-weather-custom-C wmd06"><span><span class="plus">+</span>20</span></div> <div class="booked-weather-custom-details"> <p><span>High: <strong><span class="plus">+</span>22<sup>°</sup></strong></span><span> Low: <strong><span class="plus">+</span>7<sup>°</sup></strong></span></p> <p>Humidity: <strong>34%</strong></p> <p>Wind: <strong>SSW - 8 KPH</strong></p> </div> </div> <div class="booked-weather-custom-160-main more"> <a href="//www.booked.net/weather/paris-18145" class="booked-weather-custom-160-city"> Paris Weather </a> <div class="booked-weather-custom-160-degree booked-weather-custom-C wmd22"><span><span class="plus">+</span>7</span></div> <div class="booked-weather-custom-details"> <p><span>High: <strong><span class="plus">+</span>7<sup>°</sup></strong></span><span> Low: <strong><span class="plus">+</span>2<sup>°</sup></strong></span></p> <p>Humidity: <strong>100%</strong></p> <p>Wind: <strong>W - 11 KPH</strong></p> </div> </div> <div class="booked-weather-custom-160-main more"> <a href="//www.booked.net/weather/dubai-18321" class="booked-weather-custom-160-city"> Dubai Weather </a> <div class="booked-weather-custom-160-degree booked-weather-custom-C wmd03"><span><span class="plus">+</span>26</span></div> <div class="booked-weather-custom-details"> <p><span>High: <strong><span class="plus">+</span>26<sup>°</sup></strong></span><span> Low: <strong><span class="plus">+</span>22<sup>°</sup></strong></span></p> <p>Humidity: <strong>70%</strong></p> <p>Wind: <strong> - 15 KPH</strong></p> </div> </div> </div> </div><script type="text/javascript"> var css_file=document.createElement("link"); css_file.setAttribute("rel","stylesheet"); css_file.setAttribute("type","text/css"); css_file.setAttribute("href",'//s.bookcdn.com/css/weather.css?v=0.0.1'); document.getElementsByTagName("head")[0].appendChild(css_file); function setWidgetData(data) { if(typeof(data) != 'undefined' && data.results.length > 0) { for(var i = 0; i < data.results.length; ++i) { var objMainBlock = document.getElementById('m-booked-custom-widget-85250'); if(objMainBlock !== null) { var copyBlock = document.getElementById('m-bookew-weather-copy-'+data.results[i].widget_type); objMainBlock.innerHTML = data.results[i].html_code; if(copyBlock !== null) objMainBlock.appendChild(copyBlock); } } } else { alert('data=undefined||data.results is empty'); } } </script> <script type="text/javascript" charset="UTF-8" src="http://widgets.booked.net/weather/info?action=get_weather_info&ver=4&cityID=18033,18114,5634,30285,21,647,18145,18321&type=2&scode=124&ltid=3457&domid=w209&cmetric=1&wlangID=1&color=009fa0&wwidth=250&header_color=ffffff&text_color=333333&link_color=08488D&border_form=1&footer_color=ffffff&footer_text_color=333333&transparent=0"></script><!-- weather widget end -->
				
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

