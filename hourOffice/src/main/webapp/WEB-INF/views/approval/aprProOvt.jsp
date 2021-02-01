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
<link rel="stylesheet" type="text/css" href="/resources/css/approval/apr_form.css" />

</head>
<body>
<div id="wrap">
		<%@ include file="/WEB-INF/views/common/header.jsp"%>
		<div id="contentsBox">
			<%@ include file="/WEB-INF/views/common/sideNavi.jsp"%>

			<div id="contents">
				<div id="contentsDetail" class="clearfix">
					<div id="TitleName">
                       전자결재 처리
                    </div>
                    <div id="TitleContents">
                        <form action="" method="post">
                            <div id="apr_btn_wrap2">
                                <span id="apr_list_btn">목록</span>
                            </div>
                            <div id="title-wrap2">
                                <div>문서 제목</div><div>법인카드 사용신청서 작성합니다</div>
                            </div>
                            <fieldset id="form-done-wrap">
                                <div id="form-title">연장근무신청서</div>
                                <table id="docu-info">
                                    <tr>
                                        <td>기안일</td>
                                        <td>김말똥</td>
                                    </tr>
                                    <tr>
                                        <td>기안부서</td>
                                        <td>개발팀</td>
                                    </tr>
                                    <tr>
                                        <td>기안일</td>
                                        <td>2021-01-24</td>
                                    </tr>
                                    <tr>
                                        <td>문서번호</td>
                                        <td>202101240001</td>
                                    </tr>
                                </table>
                                <table id="apr-line-info">
                                    <tr><td colspan="3">결재선</td></tr>
                                    <tr>
                                        <td>김민수 팀장
                                        </td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                </table>
                                <div id="tag-wrap">
                                <span id="lock-tag">비공개</span>
                                <span id="urg-tag">긴급</span>    
                                </div>
                                <table id="con-info">
                                    <tr>
                                        <td>근무 구분</td>
                                        <td>
                                            연장
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>근무 일시</td>
                                        <td>
                                            2021-01-25
                                            <span class="space"></span>
                                            19시 00 분 ~ 
                                            23시 00 분
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>근무 시간</td>
                                        <td>
                                            4 시간
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>신청 사유</td>
                                        <td>
                                            연장근무를 신청합니다.
                                        </td>
                                    </tr>
                                </table>
                            </fieldset>
                            <fieldset id="apr-com-wrap">
                                <div>관련의견</div>
                                <div class="line-name">김민수 팀장</div>
                                <textarea name="comment" id="line-comment" ></textarea>
                            </fieldset>
                            <div id="apr-btn-wrap">
                                <button id="ref_btn" type="submit" formaction="">결재 반려</button>
                                <button id="apr_btn"  type="submit" formaction="">결재 승인</button>
                            </div>
                        </form>
                    </div>
				</div>
			</div>
		</div>
	</div>

	<!-- 자바 스크립트    -->
	<script type="text/javascript" src="/resources/js/header&sideNavi.js"></script>
</body>
</html>