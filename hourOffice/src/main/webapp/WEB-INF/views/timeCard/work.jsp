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
<style>
.approval {
	background-color: #1D9F8E;
	color: white;
	border: 0;
}

#savebtn {
	background-color: #1D9F8E;
	color: white;
	border: 0;
}

#cxlbtn {
	background-color: #FF6363;
	color: white;
	border: 0;
}

#divbox {
	width: 90%;
	height: 400px;
	margin: 0 auto;
}

#rdiv {
	width: 65%;
	height: 100%;
	float: right;
}

#aform {
	color: white;
	background: #1D9F8E;
	font-size: 1.2em;
	padding: 0.3em 0.5em;
	margin-right: 0.1em;
	border-radius: 5px;
	float: right;
	margin: 5px;
}

tr {
	height: 30px;
}

table {
	border-collapse: collapse;
}

/*근태관리*/
.work {
	display: inline-block;
	height: 320px;
	width: 250px;
	background-color: white;
	padding: 20px 15px 0px 15px;
	border: 1px solid black;
}

.work-title {
	color: #3B3E43;
	font-size: 15px;
	font-weight: 700;
	margin-bottom: 15px;
}

#clock {
	color: #8B8EA1;
	margin-bottom: 10px;
}

.work-today {
	text-align: center;
	font-size: 15px;
	margin-bottom: 10px;
}

.work-record {
	text-align: center;
	font-size: 20px;
	margin-bottom: 30px;
}

.work-record>span {
	font-size: 30px;
}

.record {
	padding: 0px 10px;
	margin-bottom: 15px;
}

.record-name {
	color: #3B3E43;
	font-weight: 700;
}

.record-clock {
	float: right;
	color: #8B8EA1;
}

.btnStyle {
	width: 100px;
	height: 40px;
	color: #42B9CB;
	background-color: white;
	border: 2px solid #42B9CB;
	border-radius: 20px;
	font-size: 14px;
	font-weight: 600;
	margin-top: 15px;
	cursor: pointer;
	animation-duration: 0.5s;
	animation-fill-mode: forwards;
}

.btnStyle:focus {
	outline: none;
}

.btnStyle:hover {
	animation-name: hoverin;
}

@
keyframes hoverin {from {
	
}

to {
	color: white;
	background-color: #42B9CB;
}

}
#back {
	float: right;
}
</style>
<script>
	$(document).ready(function(){
		makeWeekSelectOptions();
	})
	
	function makeWeekSelectOptions() {
		  var year = $("#sh_year").val();
		  var month = $("#sh_month").val();

		  var today = new Date();

		  var sdate = new Date(year, month-1, 01);
		  var lastDay = (new Date(sdate.getFullYear(), sdate.getMonth()+1, 0)).getDate();
		  var endDate = new Date(sdate.getFullYear(), sdate.getMonth(), lastDay);

		  var week = sdate.getDay();
		  sdate.setDate(sdate.getDate() - week);
		  var edate = new Date(sdate.getFullYear(), sdate.getMonth(), sdate.getDate());

		  var obj = document.getElementById("sh_week");
		  obj.options.length = 0;
		  var seled = "";
		  while(endDate.getTime() >= edate.getTime()) {

		    var sYear = sdate.getFullYear();
		    var sMonth = (sdate.getMonth()+1);
		    var sDay = sdate.getDate();

		    sMonth = (sMonth < 10) ? "0"+sMonth : sMonth;
		    sDay = (sDay < 10) ? "0"+sDay : sDay;

		    var stxt = sYear + "-" + sMonth + "-" + sDay;

		    edate.setDate(sdate.getDate() + 6);

		    var eYear = edate.getFullYear();
		    var eMonth = (edate.getMonth()+1);
		    var eDay = edate.getDate();

		    eMonth = (eMonth < 10) ? "0"+eMonth : eMonth;
		    eDay = (eDay < 10) ? "0"+eDay : eDay;

		    var etxt = eYear + "-" + eMonth + "-" + eDay;

		    if(today.getTime() >= sdate.getTime() && today.getTime() <= edate.getTime()) {
		      seled = stxt+"|"+etxt;
		    }

		    obj.options[obj.options.length] = new Option(stxt+"~"+etxt, stxt+"|"+etxt);

		    sdate = new Date(edate.getFullYear(), edate.getMonth(), edate.getDate() + 1);
		    edate = new Date(sdate.getFullYear(), sdate.getMonth(), sdate.getDate());
		  }

		  if(seled) obj.value = seled;
		}
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
						내근태현황
						<!----------------------------------->
					</div>
					<div id="TitleContents">
						<!--여기서 각자 id 만드시면 됩니다-->

						<table width="90%" height="60px" style="margin: auto;">
							<tr>
								<td></td>
								<td width="33%"></td>
								<td width="33%"><a href="" id="aform">연장근무 신청서</a> <a
									href="" id="aform">지각 불참 사유서</a>
							</tr>
						</table>

						<table border="1px" width="90%" height="120px"
							style="margin: auto; text-align: center;">
							<tr>
								<td height="30%">이번주 누적 근무시간</td>
								<td>이번주 초과 근무시간</td>
								<td>이번달 누적 근무시간</td>
								<td>이번달 초과 근무시간</td>
							</tr>
							<tr>
								<td height="70%" style="font-size: 25px;">46시간 10분</td>
								<td style="font-size: 25px; color: red;">1시간 10분</td>
								<td style="font-size: 25px;">51시간 10분</td>
								<td style="font-size: 25px; color: red;">5시간 10분</td>
							</tr>
						</table>
						<br> <br> <br>


						<div id="divbox">
							<div class="work">
								<div class="work-title">근태관리</div>
								<div id="clock">시간</div>
								<div class="work-today">오늘 근무시간</div>

								<div class="work-record">
									<span id="work-hour">0</span> 시간 <span id="work-minute">0</span>
									분
								</div>

								<div class="record">
									<span class="record-name">출근시간</span> <span id="go-clock"
										class="record-clock">미등록</span>
								</div>

								<div class="record">
									<span class="record-name">퇴근시간</span> <span id="back-clock"
										class="record-clock">미등록</span>
								</div>

								<hr size="1" color="lightgray">

								<button id="go" class="btnStyle">출근하기</button>
								<button id="back" class="btnStyle">퇴근하기</button>

							</div>
							<script src="/resources/js/memberMain/memberMain_work.js"></script>



							<div id="rdiv">
								<select name="sh_year" id="sh_year"
									onchange="makeWeekSelectOptions();">
									<option value='2021' selected='selected'>2021년</option>
									<option value='2022'>2022년</option>
									<option value='2023'>2023년</option>
								</select> 
								<select name="sh_month" id="sh_month"
									onchange="makeWeekSelectOptions();">
									<option value='01'>01월</option>
									<option value='02' selected='selected'>02월</option>
									<option value='03'>03월</option>
									<option value='04'>04월</option>
									<option value='05'>05월</option>
									<option value='06'>06월</option>
									<option value='07'>07월</option>
									<option value='08'>08월</option>
									<option value='09'>09월</option>
									<option value='10'>10월</option>
									<option value='11'>11월</option>
									<option value='12'>12월</option>
								</select> 
								<select name="sh_week" id="sh_week">
								</select>
								
								<table border="1px" width="100%"
									style="text-align: center; margin: auto;">

									<tr style="background-color: #1D9F8E; color: white">
										<th>일자</th>
										<th>이름</th>
										<th>부서</th>
										<th>출근시간</th>
										<th>퇴근시간</th>
									</tr>

									<tr>
										<td>01월</td>
										<td>홍길동</td>
										<td>개발1팀</td>
										<td>09:00</td>
										<td>18:00</td>
									</tr>
								</table>
								<!-- <div id="accordion">
									<h3>1주차</h3>
									<table border="1px" width="100%"
									style="text-align: center; margin: auto;">

									<tr style="background-color: #1D9F8E; color: white">
										<th>일자</th>
										<th>이름</th>
										<th>부서</th>
										<th>출근시간</th>
										<th>퇴근시간</th>
									</tr>

									<tr>
										<td>01월</td>
										<td>홍길동</td>
										<td>개발1팀</td>
										<td>09:00</td>
										<td>18:00</td>
									</tr>
									
									<tr>
										<td>01월</td>
										<td>홍길동</td>
										<td>개발1팀</td>
										<td>09:00</td>
										<td>18:00</td>
									</tr>
								</table>
									<h3>2주차</h3>
									<div>
										<p>Sed non urna. Donec et ante. Phasellus eu ligula.
											Vestibulum sit amet purus. Vivamus hendrerit, dolor at
											aliquet laoreet, mauris turpis porttitor velit, faucibus
											interdum tellus libero ac justo. Vivamus non quam. In
											suscipit faucibus urna.</p>
									</div>
									<h3>3주차</h3>
									<div>
										<p>Nam enim risus, molestie et, porta ac, aliquam ac,
											risus. Quisque lobortis. Phasellus pellentesque purus in
											massa. Aenean in pede. Phasellus ac libero ac tellus
											pellentesque semper. Sed ac felis. Sed commodo, magna quis
											lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus
											venenatis dui.</p>
										<ul>
											<li>List item one</li>
											<li>List item two</li>
											<li>List item three</li>
										</ul>
									</div>
									<h3>4주차</h3>
									<div>
										<p>Cras dictum. Pellentesque habitant morbi tristique
											senectus et netus et malesuada fames ac turpis egestas.
											Vestibulum ante ipsum primis in faucibus orci luctus et
											ultrices posuere cubilia Curae; Aenean lacinia mauris vel
											est.</p>
										<p>Suspendisse eu nisl. Nullam ut libero. Integer
											dignissim consequat lectus. Class aptent taciti sociosqu ad
											litora torquent per conubia nostra, per inceptos himenaeos.</p>
									</div>
								</div> -->
							</div>
						</div>
						<!----------------------------------->
					</div>

				</div>
			</div>
		</div>

		<!-- 자바 스크립트    -->
		<script type="text/javascript" src="/resources/js/header&sideNavi.js"></script>

	</div>

	</div>
</body>
</html>


</body>
</html>