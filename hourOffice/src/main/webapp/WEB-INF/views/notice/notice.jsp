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
    <script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
	
	<!-- 헤더 & 네비 CSS -->
	<link rel="stylesheet" type="text/css" href="/resources/css/header&sideNavi.css" />
	<!-- 관리자 탭 공통 CSS -->
	<link rel="stylesheet" type="text/css" href="/resources/css/admin_tap/adminTapCommon.css" />
	<!-- 게시물 공통 CSS -->
	<link rel="stylesheet" type="text/css" href="/resources/css/admin_tap/post.css" />
	
	<style>
        #TitleContents #title span,  #TitleContents #board-content > div:first-child{ /* 글쓰기 */ color: white; cursor: default; }
    </style>
</head>
<body>
	<div id="wrap">
		<%@ include file="/WEB-INF/views/common/header.jsp" %>
		<div id="contentsBox">
			<%@ include file="/WEB-INF/views/common/sideNavi.jsp" %>

			<div id="contents">
				<div id="contentsDetail" class="clearfix">
					<div id="TitleName">
						<!--여기서 각자 id 만드시면 됩니다-->
						전체 공지 <span>게시글</span>
						<!----------------------------------->
					</div>
					<div id="TitleContents">
						<!--여기서 각자 id 만드시면 됩니다-->
						
						
						<div id="title"><span><i class="fas fa-feather-alt"></i></span><a href="#"><button type="button">목록</button></a><a href="#"><i class="fas fa-arrow-down i-icon"></i> 아랫글</a><a href="#"><i class="fas fa-arrow-up i-icon"></i> 윗글</a></div>
                        <hr>
                        <div id="board-content">
                            <div><span><i class="fas fa-feather-alt"></i></span></div>
                            <div>[01월] 이번주 식단 ver.1.2</div>
                            <div>
                                <div class="float"><img src=""/></div>
                                <div class="float">
                                    <div>주다빈 사원</div>
                                    <div>2021/01/29 10:33:29</div>
                                </div>
                            </div>
                            <div>
                               	내용
                            </div>
                            <div><span>조회수 0 </span><span class="wall"></span><span><i class="fas fa-paperclip i-icon"></i> 첨부파일</span></div>
                        </div>
                        <hr>





						<!----------------------------------->
					</div>
				</div>
			</div>
		</div>

	<!-- 자바 스크립트    -->
	<script type="text/javascript" src="/resources/js/header&sideNavi.js"></script>

	</div>
</body>
</html>