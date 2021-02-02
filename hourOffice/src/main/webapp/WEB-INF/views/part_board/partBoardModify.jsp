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
	
	
    <script>
        $(function(){
            // 취소버튼 클릭 이벤트
            $('#del-btn').click(function(){
                history.go(-1);
            });
        })
    </script>
    
    <!-- 페이지 상단 또는 하단에 라이브러리 추가 -->
   <script type="text/javascript" src="/WEB-INF/views/api/smartEditor2/js/service/HuskyEZCreator.js" charset="utf-8"></script> 
   <!-- api 이미지 업로드 라이브러리 추가 -->
   <script type="text/javascript" src="./quick_photo_uploader/plugin/hp_SE2M_AttachQuickPhoto.js" charset="utf-8"> </script>
	
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
						개발부서 게시판 <span>글 수정</span>
						<!----------------------------------->
					</div>
					<div id="TitleContents">
						<!--여기서 각자 id 만드시면 됩니다-->
						
						<div id="txt-content">
                            <form>
                            <div><span>제목</span> <input type="text" name="notName" value="[부서별 게시판] 수정 페이지"/></div>
                            <div><span>첨부파일</span> <div></div></div>
                            
                            <!-- 표시할 textarea 영역 -->
                            <textarea name="partContent" id="txtArea" required>이 페이지 컨텐츠 부분 width 고정으로 하려면 어떻게 하는거죠..?</textarea>
                            
                                <div><!-- <span>알림</span> <input type="checkbox" name="push"/> 푸쉬 --></div>
                            <div><button>수정</button> <button type="button" class="delBtn">취소</button></div>
                            </form>
                        </div>
						
						<!----------------------------------->
					</div>
				</div>
			</div>
		</div>

	<!-- 자바 스크립트    -->
	<script type="text/javascript" src="/resources/js/header&sideNavi.js"></script>
	
	<!-- smartEditor2 api 페이지 로딩시 초기화 -->
    <script type="text/javascript">
        
        var oEditors = []; 
        nhn.husky.EZCreator.createInIFrame({ 
            oAppRef : oEditors, 
            elPlaceHolder : "txtArea", //저는 textarea의 id와 똑같이 적어줬습니다. 
            sSkinURI : "/WEB-INF/views/api/smartEditor2/SmartEditor2Skin.html", //경로를 꼭 맞춰주세요! 
            fCreator : "createSEditor2", 
            htParams : { 
                bUseToolbar : true, // 툴바 사용 여부 (true:사용/ false:사용하지 않음) 
                bUseVerticalResizer : false,  // 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음) 
                bUseModeChanger : true // 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
            } 
        });
        
        
        <%--
        //‘저장’ 버튼을 누르는 등 저장을 위한 액션을 했을 때 submitContents가 호출된다고 가정한다.
        function submitContents(elClickedObj) {
            // 에디터의 내용이 textarea에 적용된다.
            oEditors.getById["textArea"].exec("UPDATE_CONTENTS_FIELD", [ ]);

            // 에디터의 내용에 대한 값 검증은 이곳에서
            // document.getElementById("textAreaContent").value를 이용해서 처리한다.

            try {
                elClickedObj.form.submit();
            } catch(e) {

            }
        }

        // textArea에 이미지 첨부
        function pasteHTML(filepath){
            var sHTML = '<img src="<%=request.getContextPath()%>/path에서 설정했던 경로/'+filepath+'">';
            oEditors.getById["textArea"].exec("PASTE_HTML", [sHTML]);
        }
        
        oFileUploader = new jindo.FileUploader(jindo.$("uploadInputBox"),{ 
            sUrl : '/file_uploader', //샘플 켠트롤러입니다. 
            sCallback : '/resources/editor/photo_uploader/popup/callback.html', //업로드 이후에 iframe이 redirect될 콜백페이지의 주소 
            sFiletype : "*.jpg;*.png;*.bmp;*.gif", //허용할 파일의 형식. ex) "*", "*.*", "*.jpg", 구분자(;)
            sMsgNotAllowedExt : 'JPG, GIF, PNG, BMP 확장자만 가능합니다', //허용할 파일의 형식이 아닌경우에 띄워주는 경고창의 문구 
            bAutoUpload : false, //파일이 선택됨과 동시에 자동으로 업로드를 수행할지 여부 (upload 메소드 수행) 
            bAutoReset : true // 업로드한 직후에 파일폼을 리셋 시킬지 여부 (reset 메소드 수행) 
        });
        
        var sUploadURL= '/file_uploader_html5'; //upload URL--%>
        
    </script>
	
	</div>
</body>
</html>