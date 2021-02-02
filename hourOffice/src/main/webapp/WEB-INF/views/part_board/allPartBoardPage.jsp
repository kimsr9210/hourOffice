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
	<!-- 게시판 공통 CSS -->
	<link rel="stylesheet" type="text/css" href="/resources/css/admin_tap/board.css" />
	<!-- CSS 테이블만 있는 것 -->
	<link rel="stylesheet" type="text/css" href="/resources/css/admin_tap/userBoard.css" />

	
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
						개발부서 게시판
						<!----------------------------------->
					</div>
					<div id="TitleContents">
						<!--여기서 각자 id 만드시면 됩니다-->
						
						<span><a href="#"><i class="fas fa-feather-alt i-icon"></i> 새글쓰기</a></span>
						<table>
                            <!--<tr style="padding:0;"><td colspan="4" style="padding:0;"><hr></td></tr>-->
                            <tr>
                                <th>번호</th>
                                <th>제목</th>
                                <th>작성자</th>
                                <th>작성일</th>
                            </tr>
                            <!--<tr><td colspan="4" style="padding:0;"><hr></td></tr>-->
                            <tr>
                                <td>1</td>
                                <td><div><a href="/partBoard.ho">ssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss</a></div></td>
                                <td>주다빈 사원</td>
                                <td>2021/01/28</td>
                            </tr>
                        </table>
                        </form>
                        
                        <div id="pageNavi">< 1 2 3 4 5 ></div>
                        <div id="search-div">
                            <form action="#" method="get">
                            <select name="searchType">
                                <option value="both">제목+내용</option>
                                <option value="notName">제목</option>
                                <option value="notContent">내용</option>
                            </select>
                            <input type="text" name="text"/>
                            <button><i class="fas fa-search"></i></button>
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
</body>
</html>