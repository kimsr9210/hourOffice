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
        /* 윗글 & 아랫글 & 목록 */
        #TitleContents #title{
            text-align: right;
            padding-right: 20px;
            position: relative;
            top: 30px;
        }
        #TitleContents #title > a{
            /* 윗글 & 아랫글 & 목록 */
            margin-right: 20px;
        }
        /* 제목 */
        #TitleContents #companyRule-content > div:first-child{
            font-size: 1.4rem;
            padding: 10px 20px 5px;
        }
        /* 시간 정보 */
        #TitleContents #companyRule-content > div:nth-child(3){
            width: 100%;
            padding: 10px 0 0 20px;
        }
        /* 내용 */
        #TitleContents #companyRule-content > div:last-child{
            min-height: 450px;
            padding: 25px 40px 15px;
        }
        
        
        /* 폰트어썸 */
        #TitleContents i{
             color: #78BEB5;
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
						사내 규정 <span>게시글</span>
						<!----------------------------------->
					</div>
					<div id="TitleContents">
						<!--여기서 각자 id 만드시면 됩니다-->
						
						
						
						<div id="title"><a href="#"><i class="fas fa-arrow-up"></i> 윗글</a><a href="#"><i class="fas fa-arrow-down"></i> 아랫글</a><button type="button">목록</button></a></div>
                        <div id="companyRule-content">
                            <div>1조 1항</div>
                            <hr>
                            <div>작성일 2021/01/29 10:33:29</div>
                            <div>
                                	내용
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
</body>
</html>