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
	<!-- 게시글 쓰기 공통 CSS -->
	<link rel="stylesheet" type="text/css" href="/resources/css/board/postWrite.css" />
	
	<!-- 스마트에디터2 라이브러리 -->
    <script type="text/javascript" src="api/smartEditor2/js/service/HuskyEZCreator.js" charset="utf-8"></script> 
    <!-- api 이미지 업로드 라이브러리 추가 -->
    <!-- <script type="text/javascript" src="./quick_photo_uploader/plugin/hp_SE2M_AttachQuickPhoto.js" charset="utf-8"> </script> -->
    
	
    <script>
        $(function(){
            // 취소버튼 클릭 이벤트
            $('.delBtn').click(function(){
                history.go(-1);
            });
        })
    </script>
    
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
                            <div><button>저장</button> <button type="button" class="delBtn">취소</button></div>
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