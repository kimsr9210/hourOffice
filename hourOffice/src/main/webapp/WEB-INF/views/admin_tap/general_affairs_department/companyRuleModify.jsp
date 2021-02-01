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
        #wrap{
            width: 1920px;
        }
        #contentsDetail{
            height: 860px;
        }
        
        #TitleContents *:focus{
            outline: 0;
        }
        /* 모든 버튼 */
        #TitleContents button{
            width: 60px; min-width: 28px; height: 34px;
            font-size: 1rem; font-weight: bold;
            margin: 0 5px;
            color: white; background-color: #1D9F8E;
            border-style: none;
            border-radius: 5px;
            box-shadow: 1px 1px 5px #cccccc;
            cursor: pointer;
        }
        /* 취소 버튼 */
        #TitleContents #del-btn{
            background-color: #FF6363;
        }
        
        #txt-content{
            width: 99%; min-width: 868px;
            margin: 0 auto;
        }
        /* 제목 */
        #txt-content div:first-child{
            height: 55px;
            padding-left: 20px;
            padding-top: 20px;
            background-color: #FFFAF5;
            border-top-left-radius: 5px;
            border-top-right-radius: 5px;
        }
        #txt-content div:first-child > input{
            /* 제목 input */
            width: 80%; height: 100%;
            margin-left: 124px;
            padding: 0 10px;
            font-size: 1rem;
            border: 1px solid lightgray;
        }
        /* 첨부파일 */
        #txt-content div:nth-child(2){
            height: 100px;
            padding-left: 20px;
            padding-top: 20px;
            margin-bottom: 20px;
            background-color: #FFFAF5;
            border-bottom-left-radius: 5px;
            border-bottom-right-radius: 5px;
        }
        #txt-content div:nth-child(2) > span{
            /* 첨부파일 글씨 span */
            position: relative;
            bottom: 45px;
        }
        #txt-content div:nth-child(2) > div{
            /* 첨부파일 영역 */
            width: 80%; height: 80%;
            margin-left: 100px;
            border: 1px solid lightgray;
            box-shadow: 1px 1px 5px #E7E0E8 inset;
            display: inline-block;
            background-color: white;
        }
        
        /* 내용 */
        #txt-content textarea{
            width: 99.8%;
            height: 450px;
            border: 1px solid gray;
            margin: 0 auto;
        }
        /* 알림 */
        #txt-content div:nth-last-child(2){
            height: 20px;
            padding: 10px 0 0 20px;
        }
        #txt-content div:nth-last-child(2) span{
            /* 알림 글씨 span */
            margin-right: 20px;
        }
        #txt-content div:nth-last-child(2) input{
            position: relative;
            top: 2px;
        }
        /* 버튼 */
        #txt-content div:last-child{
            height: 50px;
            text-align: center;
            padding-top: 10px;
        }
    </style>
    <script>
        $(function(){
            // 취소버튼 클릭 이벤트
            $('#del-btn').click(function(){
                history.go(-1);
            });
        })
    </script>
    
<!-- 페이지 상단 또는 하단에 라이브러르 추가 -->
   <script type="text/javascript" src="/api/smartEditor2/js/service/HuskyEZCreator.js" charset="utf-8"></script> 
   
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
						총무관리 사내 규정 <span>글 수정</span>
						<!----------------------------------->
					</div>
					<div id="TitleContents">
						<!--여기서 각자 id 만드시면 됩니다-->
						
						
						<div id="txt-content">
                            <form>
                            <div><span>제목</span> <input type="text" name="notName" value="1조 1항"/></div>
                            <div><span>첨부파일</span> <div></div></div>
                            
                            <!-- 표시할 textarea 영역 -->
                            <textarea name="ruleContent" id="txtArea" required>이 페이지 컨텐츠 부분 width 고정으로 하려면 어떻게 하는거죠..?</textarea>
                            
                                <div><span>알림</span> <input type="checkbox" name="push"/> 푸쉬</div>
                            <div><button>저장</button> <button type="button" id="del-btn">취소</button></div>
                            </form>
                        </div>
						
						
						<!----------------------------------->
					</div>
				</div>
			</div>
		</div>

	<!-- 자바 스크립트    -->
	<script type="text/javascript" src="/resources/js/header&sideNavi.js"></script>

	</div>
	
	<!-- smartEditor2 api 페이지 로딩시 초기화 -->
    <script type="text/javascript">
        
        var oEditors = []; 
        nhn.husky.EZCreator.createInIFrame({ 
            oAppRef : oEditors, 
            elPlaceHolder : "txtArea", //저는 textarea의 id와 똑같이 적어줬습니다. 
            sSkinURI : "/api/smartEditor2/SmartEditor2Skin.html", //경로를 꼭 맞춰주세요! 
            fCreator : "createSEditor2", 
            htParams : { 
                bUseToolbar : true, // 툴바 사용 여부 (true:사용/ false:사용하지 않음) 
                bUseVerticalResizer : false, // 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음) 
                bUseModeChanger : true // 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음) 
            } 
        });

        
    </script>
</body>
</html>