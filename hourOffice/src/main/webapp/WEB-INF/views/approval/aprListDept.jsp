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
<link rel="stylesheet" type="text/css" href="/resources/css/approval/approval_list.css" />

</head>
<body>
<div id="wrap">
		<%@ include file="/WEB-INF/views/common/header.jsp"%>
		<div id="contentsBox">
			<%@ include file="/WEB-INF/views/common/sideNavi.jsp"%>

			<div id="contents">
				<div id="contentsDetail" class="clearfix">
					<div id="TitleName">
                        <span id="page-name">전자결재</span>
                        <span id="sub-name">부서문서함</span>
                        <form action="" method="get" id="apr-search-form">
                           <select name="search-option" id="search-option">
                               <option value="title">제목</option>
                               <option value="date">기안일</option>
                               <option value="member">기안자</option>
                               <option value="type">결재양식</option>
                           </select>
                            <input type="text" id="approval-search"><button type="submit" id="apr-search-btn">
                                <i class="fas fa-search"></i>
                            </button>
                        </form>
                    </div>
                    <div id="TitleContents">
                       <a href="" id="new-apr-btn">+ 새 결재문서</a>
                        <ul id="apr-list-filter">
                            <li><a href="">전체목록</a></li>
                            <li><a href="">진행중</a></li>
                            <li><a href="">반려</a></li>
                            <li><a href="">완료</a></li>
                        </ul>
                        
                        <table id="apr-docu-list">
                            <tr>
                                <th>문서번호</th>
                                <th>기안일</th>
                                <th>결재양식</th>
                                <th>제목</th>
                                <th>기안자</th>
                                <th>결재상태</th>
                                <th>긴급여부</th>
                            </tr>
                            <tr>
                                <td>11111111</td>
                                <td>2021-01-23</td>
                                <td>법인카드사용신청서</td>
                                <td><a href="">2월 회식 신청을 위한 법인카드 사용 신청</a></td>
                                <td>김말똥</td>
                                <td><span class="apr-type type-ing">진행중</span></td>
                                <td><span class="apr-type type-urg">긴급</span></td>
                            </tr>
                            <tr>
                                <td>11111111</td>
                                <td>2021-01-23</td>
                                <td>법인카드사용신청서</td>
                                <td><a href="">2월 회식 신청을 위한 법인카드 사용 신청</a></td>
                                <td>김말똥</td>
                                <td><span class="apr-type type-ing">진행중</span></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>11111111</td>
                                <td>2021-01-23</td>
                                <td>법인카드사용신청서</td>
                                <td><a href="">2월 회식 신청을 위한 법인카드 사용 신청</a></td>
                                <td>김말똥</td>
                                <td><span class="apr-type type-ing">진행중</span></td>
                                <td><span class="apr-type type-urg">긴급</span></td>
                            </tr>
                            <tr>
                                <td>11111111</td>
                                <td>2021-01-23</td>
                                <td>법인카드사용신청서</td>
                                <td><a href="">2월 회식 신청을 위한 법인카드 사용 신청</a></td>
                                <td>김말똥</td>
                                <td><span class="apr-type type-ing">진행중</span></td>
                                <td><span class="apr-type type-urg">긴급</span></td>
                            </tr>
                            <tr>
                                <td>11111111</td>
                                <td>2021-01-23</td>
                                <td>법인카드사용신청서</td>
                                <td><a href="">2월 회식 신청을 위한 법인카드 사용 신청</a></td>
                                <td>김말똥</td>
                                <td><span class="apr-type type-ing">진행중</span></td>
                                <td><span class="apr-type type-urg">긴급</span></td>
                            </tr>
                            <tr>
                                <td>11111111</td>
                                <td>2021-01-23</td>
                                <td>법인카드사용신청서</td>
                                <td><a href="">2월 회식 신청을 위한 법인카드 사용 신청</a></td>
                                <td>김말똥</td>
                                <td><span class="apr-type type-ing">진행중</span></td>
                                <td><span class="apr-type type-urg">긴급</span></td>
                            </tr>
                            <tr>
                                <td>11111111</td>
                                <td>2021-01-23</td>
                                <td>법인카드사용신청서</td>
                                <td><a href="">2월 회식 신청을 위한 법인카드 사용 신청</a></td>
                                <td>김말똥</td>
                                <td><span class="apr-type type-ref">반려</span></td>
                                <td><span class="apr-type type-urg">긴급</span></td>
                            </tr>
                            <tr>
                                <td>11111111</td>
                                <td>2021-01-23</td>
                                <td>법인카드사용신청서</td>
                                <td><a href="">2월 회식 신청을 위한 법인카드 사용 신청</a></td>
                                <td>김말똥</td>
                                <td><span class="apr-type type-ing">진행중</span></td>
                                <td><span class="apr-type type-urg">긴급</span></td>
                            </tr>
                            <tr>
                                <td>11111111</td>
                                <td>2021-01-23</td>
                                <td>법인카드사용신청서</td>
                                <td><a href="">2월 회식 신청을 위한 법인카드 사용 신청</a></td>
                                <td>김말똥</td>
                                <td><span class="apr-type type-done">완료</span></td>
                                <td><span class="apr-type type-urg">긴급</span></td>
                            </tr>
                            <tr>
                                <td>11111111</td>
                                <td>2021-01-23</td>
                                <td>법인카드사용신청서</td>
                                <td><a href="">2월 회식 신청을 위한 법인카드 사용 신청</a></td>
                                <td>김말똥</td>
                                <td><span class="apr-type type-done">완료</span></td>
                                <td></td>
                            </tr>
                        </table>
                        <ul id="page-navi">
                        <li class="page-list"><a href="" class="page-link">◀</a></li>
                        <li class="page-list"><a href="" class="page-link">1</a></li>
                        <li class="page-list"><a href="" class="page-link">2</a></li>
                        <li class="page-list"><a href="" class="page-link">3</a></li>
                        <li class="page-list"><a href="" class="page-link">▶</a></li>
                    </ul>
                    </div>
				</div>
			</div>
		</div>
	</div>

	<!-- 자바 스크립트    -->
	<script type="text/javascript" src="/resources/js/header&sideNavi.js"></script>
</body>
</html>