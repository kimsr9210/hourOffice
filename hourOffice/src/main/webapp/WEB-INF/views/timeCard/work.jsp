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

</head>
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

<table width="90%" height="60px" style="margin:auto;">
                        <tr>
                            <td ></td>
                            <td width="33%" ></td> 
                            <td width="33%">
                                <a href="" id="aform">연장근무 신청서</a>
                                <a href="" id="aform" >지각 불참 사유서</a>

                        </tr>
                        </table>
                        
                        <table border="1px" width="90%" height="120px" style="margin:auto; text-align:center; " >
                        <tr>
                            <td height="30%">이번주 누적 근무시간</td>
                            <td>이번주 초과 근무시간</td> 
                            <td>이번달 누적 근무시간</td>
                            <td>이번달 초과 근무시간</td>
                        </tr>
                        <tr>
                            <td height="70%" style="font-size: 25px;">46시간 10분</td>
                            <td style="font-size: 25px; color:red; ">1시간 10분</td>
                            <td style="font-size: 25px;">51시간 10분</td>
                            <td style="font-size: 25px; color:red; ">5시간 10분</td>
                        </tr>
                        </table><br><br><br>
                  
                    
                <div id="divbox">    
                        <div class="work">
                        <div class="work-title">근태관리</div>
                        <div id="clock">시간</div>
                        <div class="work-today">오늘 근무시간</div>
                        
                        <div class="work-record">
                            <span id="work-hour">0</span> 시간
                            <span id="work-minute">0</span> 분
                        </div>
                        
                        <div class="record">
                            <span class="record-name">출근시간</span>
                            <span id="go-clock" class="record-clock">미등록</span>
                        </div>
                        
                        <div class="record">
                            <span class="record-name">퇴근시간</span>
                            <span id="back-clock" class="record-clock">미등록</span>
                        </div>
                        
                        <hr size="1" color="lightgray">
                        
                        <button id="go" class="btnStyle">출근하기</button>
                        <button id="back" class="btnStyle">퇴근하기</button>
                        
                    </div>
                    <script src="/resources/js/memberMain/memberMain_work.js"></script>           
                            

                            
                            <div id="rdiv">
                            <table border="1px" width="100%"  style="text-align:center; margin:auto;">
                            <h3>▲ 1주차</h3>    
                            
                                <tr style="background-color:#1D9F8E; color:white">
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
                            </table><br><hr><br>    
                                <h3>▼ 2주차</h3><br><hr><br> 
                                <h3>▼ 3주차</h3><br><hr><br> 
                                <h3>▼ 4주차</h3><br><hr> <br>
                                <h3>▼ 5주차</h3><br><hr> 
                            
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