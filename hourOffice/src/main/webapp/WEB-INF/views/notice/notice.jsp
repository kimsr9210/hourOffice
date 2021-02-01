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
	
	<!-- CSS -->
	
	<link rel="stylesheet" type="text/css" href="/resources/css/header&sideNavi.css" />
	
	<style>
	/*div{
            border: 1px solid #FFD8D8;
        }*/
        #TitleContents *:focus{
            outline: none;
        }
        
        #TitleContents a{
            color: black;
        }
        
        /* 모든 버튼 */
        #TitleContents button{
            min-width: 28px; height: 27px;
            font-size: 1rem; font-weight: bold;
            padding: 0 10px;
            color: white; background-color: #1D9F8E;
            border-style: none;
            border-radius: 5px;
            box-shadow: 1px 1px 5px #cccccc;
            cursor: pointer;
        }
        /* float 클래스 */
        #TitleContents .float{
            float: left;
        }
        /* 글쓰기 & 목록 버튼 div */
        #TitleContents #title{
            height: 33px;
            padding: 0 0 5px 20px;
        }
        #TitleContents #title span{
            /* 글쓰기 */
            position: relative;
            top: 10px;
        }
        #TitleContents #title > a{
            /* 윗글 & 아랫글 & 목록 */
            float: right;
            margin-right: 20px;
        }
        /* 수정하기 삭제 */
        #TitleContents #notice-content > div:first-child{
            padding: 10px 20px 0;
            text-align: right;
        }
        #TitleContents #notice-content > div:first-child span{
            margin-left: 5px;
        }
        /* 제목 */
        #TitleContents #notice-content > div:nth-child(2){
            font-size: 1.4rem;
            padding: 10px 20px 5px;
        }
        /* 작성자 + 시간 정보 */
        #TitleContents #notice-content > div:nth-child(3){
            width: 100%;
            padding: 10px 0 0 30px;
        }
        #TitleContents #notice-content > div:nth-child(3) > div:first-child{
            /* 프로필 */
            width: 35px; height: 35px;
            margin-right: 10px;
            border-radius: 100%;
            background-color: aqua;
        }
        #TitleContents #notice-content > div:nth-child(3) > div:last-child{
            /* 사원이름 */
           padding-top: 4px;
        }
        /* 내용 */
        #TitleContents #notice-content > div:nth-child(4){
            min-height: 450px;
            padding: 65px 40px 15px;
        }
        /* 맨 하단 조회수*/
        #TitleContents #notice-content > div:last-child{
            padding: 20px;
        }
        #TitleContents #notice-content > div:last-child span:last-child{
            cursor: pointer;
        }
        #TitleContents #notice-content > div:last-child span.wall{
            /* 하단 조회수 첨부파일 벽 */
            border: 1px solid lightgray;
            margin: 0 7px;
            padding: 0;
        }
        
        
        /* 폰트어썸 */
        #TitleContents #notice-content > div:last-child span:last-child i, #TitleContents #title > a i{
             color: #78BEB5;
        }
        
        
        #TitleContents #title span,  #TitleContents #notice-content > div:first-child{
            /* 글쓰기 */
            color: white;
            cursor: default;
        }
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
						
						
						<div id="title"><span><i class="fas fa-feather-alt"></i> 글쓰기</span><a href="#"><button type="button">목록</button></a><a href="#"><i class="fas fa-arrow-down"></i> 아랫글</a><a href="#"><i class="fas fa-arrow-up"></i> 윗글</a></div>
                        <hr>
                        <div id="notice-content">
                            <div><span><i class="fas fa-feather"></i> 수정하기</span> <span id="del-btn"><i class="far fa-trash-alt"></i> 삭제</span></div>
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
                            <div><span>조회수 0 </span><span class="wall"></span><span><i class="fas fa-paperclip"></i> 첨부파일</span></div>
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