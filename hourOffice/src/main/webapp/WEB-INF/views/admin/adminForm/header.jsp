<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://use.fontawesome.com/releases/v5.8.2/js/all.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.js"
	integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
	crossorigin="anonymous"></script>
<style>

#header {
	width: 100%;
	height: 40px;
	line-height: 40px;
	border: 0;
	background-color: #22294A;
	color: white;
	font-weight: bold;
} /*header:관리자 페이지 색깔 적용*/
#headerClock {
	margin-left: 210px;
} /*headerClock:헤더에 시계 표시*/
#headerMember {
	height: 40px;
	float: right;
} /*headerMember:헤더에 오른쪽 꾸러미*/
.headerIcon {
	margin-top: 8px;
	margin-right: 5px;
} /*headerIcon:헤더에 오른쪽 아이콘*/
#headerText {
	float: right;
	margin: 0 5px;
} /*headerText:헤더에 오른쪽 문구*/
#sideNavi {
	width: 200px;
	height: 100%;
	float: left;
	overflow-y: auto;
	background-color: #22294A;
	color: white;
	font-weight: bold;
	padding-top: 10px;
} /*sideNavi:관리자 페이지 색깔 적용*/
#teamName {
	text-align: center;
	border-top: 1px solid white;
	border-bottom: 1px solid white;
	padding: 15px 0;
	margin: 10px 10px 20px 10px;
} /*teamName:사이드바 블랙보드*/
</style>
</head>
<body>
	<div id="header">
		<span id="headerClock"></span>
		<div id="headerMember">
			<i class="headerIcon fas fa-bell fa-2x"></i>
			<i class="headerIcon fas fa-user-circle fa-2x"></i>
			<span id="headerText">땡땡팀, 누구님 환영합니다.</span>
		</div>
	</div>
	
	<script>
		setInterval(function(){             
	        var date = new Date();
	        var year = date.getYear();
	        var month = date.getMonth()+1;
	        var clockDate = (date.getDate()<10) ? "0"+date.getDate() : date.getDate();
	        var day = date.getDay();
	        var week = ['일','월','화','수','목','금','토'];
	        var hours = (date.getHours()<10) ? "0"+date.getHours() : date.getHours();
	        var minutes = (date.getMinutes()<10) ? "0"+date.getMinutes() : date.getMinutes();
	        var seconds = (date.getSeconds()<10) ? "0"+date.getSeconds() : date.getSeconds();
	        document.getElementById('headerClock').innerHTML = (year+1900) + "년 " + ((month<10)? "0"+month : month) + "월 " + clockDate + "일 " +week[day] +"요일 " + ((hours<13)? "오전 "+hours : "오후 "+hours) + "시 " + minutes + "분 " + seconds + "초";
	    },1000);
	</script>
</body>
</html>