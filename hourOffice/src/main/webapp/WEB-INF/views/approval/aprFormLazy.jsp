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
                       전자결재 작성
                    </div>
                    <div id="TitleContents">
                        <div id="docu-type-wrap">
                            <label for="docuType">양식 선택 :</label>
                            <select name="docuType" id="docu-type">
                                <option value="hol">연차신청서</option>
                                <option value="ovt">연장근무신청서</option>
                                <option value="lazy" selected>지각불참사유서</option>
                                <option value="ccc">법인카드사용신청서</option>
                            </select>
                        </div>
                        <form action="" method="post">
                            <span class="opt-check"><input type="checkbox" name="lockYN"><label for="lockYN">비공개</label></span>
                            <span class="opt-check"><input type="checkbox" name="urgencyYN"><label for="urgencyYN">긴급문서</label></span>
                            <input type="submit" value="작성 완료">
                            <input type="reset" value="작성취소">
                            <div id="title-wrap">
                                <div>문서 제목</div><div><input type="text" name="title"></div>
                            </div>
                            <fieldset id="form-wrap">
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
                                        <td></td>
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
                                <table id="con-info">
                                    <tr>
                                        <td>부서</td>
                                        <td>
                                            <select name="dept_code" id="dept_code" required>
                                                <option value="D1">인사</option>
                                                <option value="D2">총무</option>
                                                <option value="D3">전산</option>
                                                <option value="D4">개발</option>
                                                <option value="D5">디자인</option>
                                            </select>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>직위</td>
                                        <td>
                                            <input type="text" required>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>성명</td>
                                        <td>
                                        <input type="text" required>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>지각/불참일</td>
                                        <td>
                                        <input type="date" required>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>지각/불참사유</td>
                                        <td>
                                            <textarea name="reasons" id="reasons" required></textarea>
                                        </td>
                                    </tr>
                                </table>
                            </fieldset>
                            <fieldset id="apr-line-wrap">
                                <div id="line-header">
                                    <span class="line-left">결재선</span>
                                    <span class="line-mid">참조</span>
                                    <span class="line-right">대상</span>
                                </div>
                                <div class="line-list">
                                    <span class="line-left"><input type="checkbox" name="apr-line" ></span>
                                    <span class="line-mid"><input type="checkbox" name="apr-ref" ></span>
                                    <span class="line-right">개발팀 김민수 부장</span>
                                </div>
                                <div class="line-list">
                                    <span class="line-left"><input type="checkbox" name="apr-line" ></span>
                                    <span class="line-mid"><input type="checkbox" name="apr-ref" ></span>
                                    <span class="line-right">개발팀 김민수 부장</span>
                                </div>
                                <div class="line-list">
                                    <span class="line-left"><input type="checkbox" name="apr-line" ></span>
                                    <span class="line-mid"><input type="checkbox" name="apr-ref" ></span>
                                    <span class="line-right">개발팀 김민수 부장</span>
                                </div>
                                <div class="line-list">
                                    <span class="line-left"><input type="checkbox" name="apr-line" ></span>
                                    <span class="line-mid"><input type="checkbox" name="apr-ref" ></span>
                                    <span class="line-right">개발팀 김민수 부장</span>
                                </div>
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