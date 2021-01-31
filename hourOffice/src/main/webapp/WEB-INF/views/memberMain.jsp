<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>H:our Office</title>
	<!-- 폰트어썸 -->
    <script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
    
    <!--jQuery CDN-->
    <script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
	
	<!-- CSS -->
	<link rel="stylesheet" type="text/css" href="/resources/css/header&sideNavi.css" />
	<link rel="stylesheet" type="text/css" href="/resources/css/memberMain/memberMain_notice.css">
	<link rel="stylesheet" type="text/css" href="/resources/css/memberMain/memberMain_nameCard.css">
	<link rel="stylesheet" type="text/css" href="/resources/css/memberMain/memberMain_work.css">
	<link rel="stylesheet" type="text/css" href="/resources/css/memberMain/memberMain_cal.css">
	<link rel="stylesheet" type="text/css" href="/resources/css/memberMain/memberMain_publicPro.css">
	<link rel="stylesheet" type="text/css" href="/resources/css/memberMain/memberMain_inPro.css">
	<link rel="stylesheet" type="text/css" href="/resources/css/memberMain/memberMain_mail.css">
	<link rel="stylesheet" type="text/css" href="/resources/css/memberMain/memberMain_graph.css">
	<link rel="stylesheet" type="text/css" href="/resources/css/memberMain/memberMain_group.css">
	<link rel="stylesheet" type="text/css" href="/resources/css/memberMain/memberMain_role.css">
</head>
<style>
.content-l{
        width: calc(100% - 275px);
        padding: 30px 10px 0px 20px;
        float: left;
    }
    .content-r{
        width: 275px;
        padding: 15px 15px 0px 10px;
        float: left;
    }
    .content-l>div{
        margin-bottom: 30px; /*25px*/
    }
    .content-r>div{
        margin-bottom: 20px; /*20px*/
    }
    
    /*참여중&메일함*/
    .proAmail{
        height: 280px;
        display: flex;
    }
</style>
<body>
    <div id="wrap">
        
        <%@ include file="/WEB-INF/views/common/header.jsp" %>
        
        <div id="contentsBox">
            <%@ include file="/WEB-INF/views/common/sideNavi.jsp" %>
            
            <div id="contents" class="clearfix">
               
                <div class="content-l">
                    
                    <div class="notice">
                        <div class="notice-top">
                            <a href="#">공지</a>
                        </div>
                        <div class="notice-bottom">
                            <a href="#">
                                <span>공지입니다!</span>
                                <span>1월 29일 Front 마무리 점검이 있습니다.</span>
                            </a>
                            
                            <div><!-- img -->
                                <i id="notice-icon" class="fas fa-user-circle"></i><span>이름 직급 작성시간</span>
                            </div>
                        </div>
                    </div>
                    
                    <div class="public-pro">
                        <a href="#">최근 공개 프로젝트</a>
                        <div class="public-list">
                            
                            <div id="pro1" class="proStyle">
                                <a href="#" class="pro-title">프로젝트 이름</a>
                                <div class="pro-info">
                                    <a href="#">0명 참여중</a>
                                    <i class="far fa-star"></i>
                                </div>
                            </div>


                            <div id="pro2" class="proStyle">
                                <a href="#" class="pro-title">프로젝트 이름</a>
                                <div class="pro-info">
                                    <a href="#">0명 참여중</a>
                                    <i class="far fa-star"></i>
                                </div>
                            </div>

                            <div id="pro3" class="proStyle">
                                <a href="#" class="pro-title">프로젝트 이름</a>
                                <div class="pro-info">
                                    <a href="#">0명 참여중</a>
                                    <i class="far fa-star"></i>
                                </div>
                            </div>

                            <div id="pro4" class="proStyle">
                                <a href="#" class="pro-title">프로젝트 이름</a>
                                <div class="pro-info">
                                    <a href="#">0명 참여중</a>
                                    <i class="far fa-star"></i>
                                </div>
                            </div>
                                
                        </div>
                    </div>
                    
                    <div class="proAmail">
                       
                        <div id="pro5" class="in-pro">
                            <div class="in-pro-top">
                                <a href="#">참여중인 프로젝트</a>
                                <i class="far fa-star"></i><br>
                                <span>0명 참여중</span>
                            </div>
                            <div class="in-pro-post">
                                <div class="post-info">
                                    <img>
                                    <div>
                                        <span>이름</span><br>
                                        <span>작성일</span>
                                    </div>
                                    <i id="proNavi" class="fas fa-ellipsis-v"></i>
                                </div>
                                <div class="post-content">
                                    테스트!
                                </div>
                                <div class="post-comment">
                                    <div class="comment-count">
                                        <span>댓글 0 개</span>
                                    </div>
                                    <hr size="1" color="lightgray">
                                    <a href="#" class="comment-write"><i class="fas fa-location-arrow"></i> 프로젝트 바로가기</a>
                                </div>
                            </div>
                        </div>
                        
                        <div id="myMail">
                            <div class="myMail-title">메일함</div>
                            <div id="mailNavi">
                                <div id="reMail">받은메일함</div>
                                <div id="mailBtn">
                                    <button><i class="fas fa-chevron-left"></i></button>
                                    <button><i class="fas fa-chevron-right"></i></button>
                                </div>
                            </div>
                            <div id="mailList">
                                메일이 없습니다.
                            </div>
                        </div>
                        
                    </div>
                    
                    <div class="pro-graph">
                        <div id="columnchart_values" style="width: 750px; height: 425px;"></div>
                        <div class="pro-graph-count">
                            <span id="cTitle">이번달 프로젝트 수</span>
                            <span id="cValue">9</span><!--4자리까지-->
                        </div>
                        
                        
                    </div>
                    
                    <div class="role">
                        <div class="role-top">
                            <a href="#">사내규정</a>
                            <div id="roleBtn">
                                <button><i class="fas fa-chevron-left"></i></button>
                                <button><i class="fas fa-chevron-right"></i></button>
                            </div>
                        </div>
                        <div class="role-bottom">
                            <table id="role-data">
                                <tr>
                                    <th>번호</th>
                                    <th>제목</th>
                                    <th>작성자</th>
                                    <th>작성일</th>
                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td><a href="#">네 번째 사내규정</a></td>
                                    <td>이진원 차장</td>
                                    <td>21/01/28</td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td><a href="#">세 번째 사내규정</a></td>
                                    <td>이진원 차장</td>
                                    <td>21/01/27</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td><a href="#">두 번째 사내규정</a></td>
                                    <td>이진원 차장</td>
                                    <td>21/01/26</td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td><a href="#">첫 번째 사내규정</a></td>
                                    <td>이진원 차장</td>
                                    <td>21/01/25</td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    
                    <div class="footer">
                    </div>
                    
                </div>
                
                <div class="content-r">
                   
                    <div class="nameCard">
                        <img class="nc-img">
                        <span class="nc-name">${sessionScope.member.memName } 직급</span>
                        <span class="nc-dept">부서명</span>
                        
                        <div>
                            <a href="#" class="nc-state">결재할 문서</a>
                            <a href="#" class="nc-cont">0</a>
                        </div>
                        <div>
                            <a href="#" class="nc-state">참여중 프로젝트</a>
                            <a href="#" class="nc-cont">0</a>
                        </div>
                        
                    </div>
                    
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
                    
                    <div class="cal">
                        <div class="calendar">
                            <div class="header">
                                <div class="year-month"></div>
                                <div class="nav">
                                    <button class="nav-btn go-prev" onclick="prevMonth()"><i class="fas fa-chevron-left"></i></button>
                                    <button class="nav-btn go-next" onclick="nextMonth()"><i class="fas fa-chevron-right"></i></button>
                                </div>
                            </div>
                            
                            <div class="main">
                                <div class="days">
                                    <div class="day">일</div>
                                    <div class="day">월</div>
                                    <div class="day">화</div>
                                    <div class="day">수</div>
                                    <div class="day">목</div>
                                    <div class="day">금</div>
                                    <div class="day">토</div>
                                </div>
                                <div class="dates">
                                    
                                </div>
                            </div>
                            
                        </div>
                    </div>
                    
                    <div class="group">
                        <!--조직도-->
                        <ul class="tree">
                            <li>
                                <input type="checkbox" id="root">
                                <label id="root" for="root">칠판그룹</label>
                                <ul id="treeMenu">
                                    <li><span>백두진 사장</span></li>
                                    <li><span>조선애 전무</span></li>
                                    <li>
                                        <input type="checkbox" id="node1">
                                        <label class="deptName" for="node1">영업본부</label>
                                        <ul>
                                            <li><span>김말똥 대리</span></li>
                                        </ul>
                                    </li>
                                    <li>
                                        <input type="checkbox" id="node2">
                                        <label class="deptName" for="node2">개발본부</label>
                                        <ul>
                                            <li><span>주다빈 상무</span></li>
                                            <li><span>김소련 부회장</span></li>
                                            <li><span>장효진 감사</span></li>
                                            <li><span>이진원 차장</span></li>
                                            <li>
                                                <input type="checkbox" id="node21">
                                                <label class="deptName" for="node21">기획팀</label>
                                                <ul>
                                                    <li><span>홍길동 차장</span></li>
                                                    <li><span>홍길동 차장</span></li>
                                                    <li><span>홍길동 차장</span></li>
                                                    <li><span>홍길동 차장</span></li>
                                                    <li><span>홍길동 차장</span></li>
                                                    <li><span>홍길동 차장</span></li>
                                                    <li><span>홍길동 차장</span></li>
                                                    <li><span>홍길동 차장</span></li>
                                                    <li><span>홍길동 차장</span></li>
                                                    <li><span>홍길동 차장</span></li>
                                                    <li><span>홍길동 차장</span></li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <input type="checkbox" id="node3">
                                        <label class="deptName" for="node3">경영지원 본부</label>
                                        <ul>
                                            <li><span>박영희 과장</span></li>
                                        </ul>
                                    </li>
                                    <li>
                                        <input type="checkbox" id="node4">
                                        <label class="deptName" for="node4">서비스 본부</label>
                                        <ul>
                                            <li><span>김철수 과장</span></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                    
                </div>
                
            </div>
        </div>
    </div>
<script>
    
</script>
<script src="/resources/js/memberMain/memberMain_cal.js"></script>
<script src="/resources/js/memberMain/memberMain_work.js"></script>
<script src="/resources/js/memberMain/memberMain_publicPro.js"></script>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
    google.charts.load("current", {packages:['corechart']});
    google.charts.setOnLoadCallback(drawChart);
    
    function drawChart() {
        var tYear = new Date().getFullYear();
        var tMonth = new Date().getMonth();
        
        var monthArr = [];
        for(var i=0; i<5; i++){
            var iMonth = new Date(tYear,tMonth-i);
            monthArr.push(iMonth.getMonth()+1);
        }
            
        var data = google.visualization.arrayToDataTable([
        ["Element", "생성 수", { role: "style" } ],
        [monthArr[4]+"월", 9, "#595959"],
        [monthArr[3]+"월", 10, "#595959"],
        [monthArr[2]+"월", 19, "#595959"],
        [monthArr[1]+"월", 21, "color: #595959"],
        [monthArr[0]+"월", 9, "#595959"]
        ]);

        var view = new google.visualization.DataView(data);
        view.setColumns([0, 1,
                       { calc: "stringify",
                         sourceColumn: 1,
                         type: "string",
                         role: "none" },
                       2]);

        var options = {
            title: { position: "none" },
            width: 880,
            height: 425,
            bar: {groupWidth: "95%"},
            legend: { position: "none" },
        };
        
        var chart = new google.visualization.ColumnChart(document.getElementById("columnchart_values"));
        chart.draw(view, options);
    }
</script>

</body></html>