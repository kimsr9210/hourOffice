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
                       전자결재 조회
                    </div>
                    <div id="TitleContents">
                        <form action="" method="post">
                            <div id="apr_btn_wrap2">
                                <span id="apr_del_btn">삭제</span>
                                <span id="apr_mod_btn">수정</span>
                                <span id="apr_list_btn">목록</span>
                            </div>
                            <div id="title-wrap2">
                                <div>문서 제목</div><div>법인카드 사용신청서 작성합니다</div>
                            </div>
                            <fieldset id="form-done-wrap">
                                <div id="form-title">지각불참사유서</div>
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
                                        <span class="apr-mark mark-apr">승인</span></td>
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
                                        <td>부서</td>
                                        <td>
                                            인사
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>직위</td>
                                        <td>
                                            사원
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>성명</td>
                                        <td>
                                        김말똥
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>지각/불참일</td>
                                        <td>
                                        2021-01-25
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>지각/불참사유</td>
                                        <td>
                                            늦잠을 잤습니다. 죄송합니다.
                                        </td>
                                    </tr>
                                </table>
                            </fieldset>
                            <fieldset id="apr-com-wrap">
                                <div>관련의견</div>
                                <div class="apr-comment"><span>김민수 팀장</span><span>승인합니다.</span></div>
                            </fieldset>
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