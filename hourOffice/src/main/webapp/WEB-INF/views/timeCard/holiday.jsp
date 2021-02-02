<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>



<!-- 폰트어썸 -->
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>

<!--jQuery CDN-->
<script src="https://code.jquery.com/jquery-3.5.1.js"
	integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
	crossorigin="anonymous"></script>

<!-- CSS -->
<link rel="stylesheet" type="text/css"
	href="/resources/css/header&sideNavi.css" />

<!-- 풀켈린더 -->
<link href='/resources/css/fullcalendar.css' rel='stylesheet' />
<script src='/resources/js/fullcalendar.js'></script>
<style>
#aform {
	color: white;
	background: #1D9F8E;
	font-size: 1.2em;
	padding: 0.3em 0.5em;
	margin-right: 0.1em;
	border-radius: 5px;
	float: right;
}

body {
	margin: 40px 10px;
	padding: 0;
	font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
	font-size: 14px;
}

#loading {
	display: none;
	position: absolute;
	top: 10px;
	right: 10px;
}

#calendar {
	max-width: 1100px;
	margin: 0 auto;
}
</style>

<script>
	document
			.addEventListener(
					'DOMContentLoaded',
					function() {
						var calendarEl = document.getElementById('calendar');

						var calendar = new FullCalendar.Calendar(
								calendarEl,
								{

									headerToolbar : {
										left : 'prev,next today',
										center : 'title',
										right : 'dayGridMonth,listYear'
									},

									displayEventTime : false, // don't show the time column in list view

									// THIS KEY WON'T WORK IN PRODUCTION!!!
									// To make your own Google API key, follow the directions here:
									// http://fullcalendar.io/docs/google_calendar/
									googleCalendarApiKey : 'AIzaSyDcnW6WejpTOCffshGDDb4neIrXVUA1EAE',

									// US Holidays
									events : 'en.usa#holiday@group.v.calendar.google.com',

									eventClick : function(arg) {
										// opens events in a popup window
										window.open(arg.event.url,
												'google-calendar-event',
												'width=700,height=600');

										arg.jsEvent.preventDefault() // don't navigate in main tab
									},

									loading : function(bool) {
										document.getElementById('loading').style.display = bool ? 'block'
												: 'none';
									}

								});

						calendar.render();
					});
</script>
</head>
<body>
	<div id="wrap">
		<%@ include file="/WEB-INF/views/common/header.jsp"%>
		<div id="contentsBox">
			<%@ include file="/WEB-INF/views/common/sideNavi.jsp"%>

			<div id="contents">
				<div id="contentsDetail" class="clearfix">



					<div id="TitleName">
						<!--여기서 각자 id 만드시면 됩니다-->
						연차내역
						<!----------------------------------->
					</div>
					<div id="TitleContents">
						<!--여기서 각자 id 만드시면 됩니다-->


						<div style="float: right;">
							<a id="aform" href="">연차작성</a>
						</div>
						<div id='loading'>loading...</div>
						<div id='calendar' style="margin-top: 50px;"></div>


						<!----------------------------------->
					</div>

				</div>
			</div>
		</div>
	</div>
</body>
</html>