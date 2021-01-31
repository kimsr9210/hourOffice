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
<script src="https://code.jquery.com/jquery-3.5.1.js"
	integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
	crossorigin="anonymous"></script>

<!-- CSS -->
<link rel="stylesheet" type="text/css"
	href="/resources/css/header&sideNavi.css" />
<link rel="stylesheet" type="text/css"
	href="/resources/css/projectAllList.css" />
</head>
<body>
	<div id="wrap">
		<%@ include file="/WEB-INF/views/common/header.jsp"%>
		<div id="contentsBox">
			<%@ include file="/WEB-INF/views/common/sideNavi.jsp"%>

			<div id="contents">
				<div id="contentsDetail" class="clearfix">
					<div id="TitleName">
						<!--여기서 각자 id 만드시면 됩니다-->
						프로젝트 전체 목록
						<!----------------------------------->
					</div>
					<div id="TitleContents">
						<!--여기서 각자 id 만드시면 됩니다-->
						<div>참여 프로젝트</div>
						<div id="newProjectBtn">+ 새 프로젝트</div>

						<div class="projectList">

							<!-- 얘가 여러개 생겨남 -->
							<div class="projectBox">
								<a href="#">
									<div class="projectSubject">프로젝트 이름</div>
									<div class="projectMember">0명 참여중</div>
								</a>
								<div class="projectLike">
									<a href="#"><i class="far fa-star"></i></a>
								</div>
							</div>
						</div>


						<br>
						<div>공개 프로젝트</div>
						<div class="projectList">
							<div class="projectBox">
								<a href="#">
									<div class="projectSubject">프로젝트 이름</div>
									<div class="projectMember">0명 참여중</div>
								</a>
								<div class="projectLike">
									<a href="#"><i class="far fa-star"></i></a>
								</div>
							</div>

						</div>

						<br>
						<div>완료 프로젝트</div>
						<div class="projectList">
							<div class="projectBox">
								<a href="#">
									<div class="projectSubject">프로젝트 이름</div>
									<div class="projectMember">0명 참여중</div>
								</a>
								<div class="projectLike">
									<a href="#"><i class="far fa-star"></i></a>
								</div>
							</div>
						</div>
						<!----------------------------------->
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- 새 프로젝트 박스 -->
	<div id="newProjectBox">
		<div id="newProjectHeader">
			프로젝트 만들기
			<div id="newProjectExit">
				<i class="fas fa-times"></i>
			</div>
		</div>
		<form id="projectForm" action="#" method="get">
			<input type="text" placeholder="프로젝트 명을 입력하세요" name="pro_subject"
				id="newProjectSubject" />
			<textarea placeholder="설명 글을 입력할 수 있습니다." name="pro_exp"
				id="newProjectExplain"></textarea>
			<br>
			<br>
			<div id="newProjectOption">옵션 설정</div>
			<div class="optionList">
				<section class="setting st-login">
				<p>
					<i class="fas fa-check"></i> 관리자 승인 후 참여 가능 <label
						class="btn-switch"> <input type="checkbox" name="favor_yn">
						<i class="slide-object"></i>
					</label>
				</p>
				</section>
			</div>
			<div class="optionList">
				<section class="setting st-login">
				<p>
					<i class="fas fa-check"></i> 공개 프로젝트 여부 <label class="btn-switch">
						<input type="checkbox" name="public_yn"> <i
						class="slide-object"></i>
					</label>
				</p>
				</section>
			</div>
			<br>
			<div class="projectBtnSize" id="projectInviteMember">
				<i class="fas fa-user-plus"></i> 초대하기
			</div>
			<input type="hidden" name="mem_no" />
			<div class="projectBtnSize">
				<button type="submit" id="newProjectSubmitBtn">프로젝트 생성</button>
			</div>
		</form>
	</div>

	<!-- 멤버 추가 박스 Ajax로 하기 -->
	<div id="inviteBox">
		<div id="inviteHeader">
			<i id="inviteExit" class="fas fa-arrow-left"></i>
			<div id="inviteName">초대하기</div>
		</div>
		<div id="inviteSearchBox">
			<form id="memberSearchForm" action="#" method="get">
				<input id="memberSearch" type="text" name="memberNo"
					placeholder=" 프로젝트를 함께할 친구를 찾아보세요!" /><i id="memberSearchImg"
					class="fas fa-search"></i>
			</form>
		</div>
		<div id="inviteContents">

			<!--얘가 여러개 생겨남-->
			<div class="inviteMemberList">
				<div class="memberImg">
					<i class="fas fa-user-circle"></i>
				</div>
				<div class="memberInfo">
					<div class="memberName">이름</div>
					<div class="memberPosition">직급</div>
				</div>
				<div class="memberAdd">
					<div class="memberAddBox">+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;추가</div>
				</div>
			</div>

		</div>
	</div>
	<!-- 자바 스크립트    -->
	<script type="text/javascript" src="/resources/js/header&sideNavi.js"></script>
	<script type="text/javascript" src="/resources/js/projectAllList.js"></script>
</body>
</html>