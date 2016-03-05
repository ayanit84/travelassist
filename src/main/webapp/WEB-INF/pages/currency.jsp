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
				<h2 class="page_title">Currency Converter</h2>
				<div class="page_content">
					<!--Currency Converter widget by FreeCurrencyRates.com -->

<div id='gcw_mainF95agUZRC' class='gcw_mainF95agUZRC'></div>
<script>function reloadF95agUZRC(){ var sc = document.getElementById('scF95agUZRC');if (sc) sc.parentNode.removeChild(sc);sc = document.createElement('script');sc.type = 'text/javascript';sc.charset = 'UTF-8';sc.async = true;sc.id='scF95agUZRC';sc.src = 'http://freecurrencyrates.com/en/widget-vertical-editable?iso=USDEURGBPJPYCNYXULAEDTRY&df=1&p=F95agUZRC&v=fits&source=fcr&width=245&width_title=0&firstrowvalue=1&thm=dddddd,ffffff,dddddd,dddddd,444444,dddddd,ffffff,0073EA,000000&title=Currency%20Converter&tzo=-330';var div = document.getElementById('gcw_mainF95agUZRC');div.parentNode.insertBefore(sc, div);} reloadF95agUZRC(); </script>
<!-- put custom styles here: .gcw_mainF95agUZRC{}, .gcw_headerF95agUZRC{}, .gcw_ratesF95agUZRC{}, .gcw_sourceF95agUZRC{} -->
<!--End of Currency Converter widget by FreeCurrencyRates.com -->
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

