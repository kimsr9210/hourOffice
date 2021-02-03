<%@page import="kr.or.houroffice.project.model.vo.Project"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>H:our Office</title>
</head>
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
	href="/resources/css/project/projectBoardWrite.css" />


<!-- TextArea 자동 높이 조절 CDN -->
<script
	src="https://rawgit.com/jackmoore/autosize/master/dist/autosize.min.js"></script>
<body>
<style>
/*------------submit 버튼 */
.boardWriteText {
	width: 100%;
	padding: 30px;
	font-family: "맑은 고딕";
	font-size: 0.875rem;
	resize: none;
	border: 0;
	outline: none;
}
        .boardWriteBot{
            width: 100%;
            height: 50px;
            border-top: 1px solid #cccccc;
        }
        .fileUploadBox{
            width: 15%;
            height: 100%;
            border-right: 1px solid #cccccc;
            float: left;
        }
        .fileUpload{
            display: none;
        }
        .imgUpload{
            display: none;
        }
        .fileUploadImg{
            font-size: 2rem;
            padding-left: 20px;
            color: #999999;
            cursor: pointer;
        }
        .fileNameBox{
            width: 60%;
            height: 100%;
            float: left;
        }
        .fileName{
            outline: none;
            width: 75%;
            height: 100%;
            text-align: right;
            float: left;
            border: 0;
        }
        .fileSize{
            outline: none;
            width: 20%;
            height: 100%;
            text-align: center;
            float: left;
            border: 0;
            border-left: 1px solid #cccccc;
            border-right: 1px solid #cccccc;
        }
        
        .boardUpload{
            width: 25%;
            height: 100%;
            float: right;
            line-height: 50px;
        }
        
        .publicYN{
            width: 80px;
            height: 40px;
            border-radius: 5px;
            
        }
        
        .uploadBtn{
            width: 100px;
            height: 40px;
            border-radius: 5px;
            cursor: pointer;
            border: 0;
            background-color: #999999;
            color: white;
            font-weight: 800;
            font-size: 1rem;
        }
</style>

<%
	Project p = (Project)request.getAttribute("project");
%>
	<div id="wrap">
		<%@ include file="/WEB-INF/views/common/header.jsp"%>
		<div id="contentsBox">
			<%@ include file="/WEB-INF/views/common/sideNavi.jsp"%>

			<div id="contents">
				<div id="contentsDetail" class="clearfix">



					<div id="projectBox">
						<div id="projectLeft">
							<div id="projectDetail">
								<div id="DetailTop">
									<p id="projectName">
										<i class="far fa-star"></i>&nbsp;&nbsp;<%=p.getProSubject() %>
										<i id="projectSetting" class="fas fa-cog"></i>
									</p>
									<div id="projectOption">
										<p class="optionBold">프로젝트 설정</p>
										<p id="projectExit" class="optionRegular">프로젝트 나가기</p>
										<p id="projectModify" class="optionRegular">프로젝트 수정</p>
										<p id="projectDelete" class="optionRegular">프로젝트 삭제</p>
										<hr>
										<p class="optionBold">프로젝트 관리자 설정</p>
										<p id="mgrComment" class="optionRegular">글/댓글 작성 권한 설정</p>
										<p id="mgrFile" class="optionRegular">파일 다운로드 권한 설정</p>
										<hr>
										<p class="optionBold">프로젝트 번호</p>
										<p class="optionRegular"><%=p.getProNo() %></p>
									</div>
									<p id="projectExp"><%=p.getProExp() %></p>
								</div>
							</div>

							<!-- 게시물 작성 -->
							<br>
							<p id="boardWriteTitle">게시물 작성</p>
							<div id="boardWrite">
                                    <ul id="boardSelect">
                                        <li><span class="modeSelect"><i class="far fa-edit"></i> 글작성</span></li>
                                        <li><span class="modeSelect"><i class="fas fa-laptop-code"></i> 코드</span></li>
                                        <li><span class="modeSelect"><i class="fas fa-briefcase"></i> 일정</span></li>
                                        <li><span class="modeSelect"><i class="fas fa-briefcase"></i> 할일</span></li>
                                    </ul>
                                    <div id="boardWriteContents">
                                        
                                        <!-- 일반 글 작성일 때 -->
                                        <form action="/insertProjectBoard.ho" method="get">
                                        <input type="hidden" value="post" name="type"/>
                                        <input type="hidden" value="<%=p.getProNo() %>" name="proNo"/>
                                        <input type="hidden" value="${sessionScope.member.memNo }" name="memNo"/>
                                        <div id="writeBox" class="boardAllStyle">
                                            <textarea class="boardWriteText" name="boardText" placeholder="내용을 입력해 주세요"></textarea>
                                            
                                        <div class="boardWriteBot">
                                        <div class="fileUploadBox">
                                            <input type="file" class="fileUpload"/>
                                            <input type="file" class="imgUpload"/>
                                            <label for="fileUpload" class="fileUploadImg"><i class="fas fa-paperclip"></i></label>
                                            <label for="imgUpload" class="fileUploadImg"><i class="far fa-image"></i></label>
                                            
                                        </div>
                                        <div class="fileNameBox">
                                            <input text="text" class="fileName"/>
                                            <input text="text" class="fileSize"/>
                                        </div>
                                        <div class="boardUpload">
                                            <select name="public" class="publicYN">
                                                <option value="public" selected>전체공개</option>
                                                <option value="admin">관리자만</option>
                                            </select>
                                            <button type="submit" class="uploadBtn">올리기</button>
                                        </div>
                                    </div>
                                        </div>
                                        </form>
                                        
                                        
                                        <!--일정 일 때-->
                                        <form action="bbb" method="get">
                                        <input type="hidden" value="plan" name="type"/>
                                        <div id="scheduleBox" class="boardAllStyle">
                                            <input type="text" class="boardWriteText" name="dlfwjd" placeholder="일정 제목을 입력해 주세요."/>
                                            <div id="scheduleBoxTop">
                                                <i class="far fa-clock scheduleImg"></i>
                                                <input type="date" class="scheduleDate"/>
                                                <input type="time" class="scheduleTime"/>
                                                <div id="line">~</div>
                                                <input type="date" class="scheduleDate"/>
                                                <input type="time" class="scheduleTime"/>
                                            </div>
                                            <div id="scheduleBoxBot">
                                                <i class="fas fa-user scheduleImg"></i>
                                                <div id="scheduleMember">
                                                    
                                                    <!--얘가 여러개-->
                                                    <input type="text" value="백두진" readonly="readonly"/>
                                                    <i class="fas fa-times scheduleMemberDelete"></i>
                                                    <!--얘가 여러개-->
                                                    
                                                    <input type="text" value="이진원" readonly="readonly"/>
                                                    <i class="fas fa-times scheduleMemberDelete"></i>
                                                </div>
                                                <input type="text" id="scheduleAdd" placeholder="참석자 추가"/>
                                            </div>
                                            <div id="scheduleMemoBox">
                                                <i class="far fa-sticky-note scheduleImg"></i>
                                                <input id="scheduleMemo" type="text" placeholder="메모를 입력하세요" name="memo"/>
                                            </div>
                                            <div class="boardWriteBot">
                                        <div class="fileUploadBox">
                                            <input type="file" class="fileUpload"/>
                                            <input type="file" class="imgUpload"/>
                                            <label for="fileUpload" class="fileUploadImg"><i class="fas fa-paperclip"></i></label>
                                            <label for="imgUpload" class="fileUploadImg"><i class="far fa-image"></i></label>
                                            
                                        </div>
                                        <div class="fileNameBox">
                                            <input text="text" class="fileName"/>
                                            <input text="text" class="fileSize"/>
                                        </div>
                                        <div class="boardUpload">
                                            <select name="public" class="publicYN">
                                                <option value="public" selected>전체공개</option>
                                                <option value="admin">관리자만</option>
                                            </select>
                                            <button type="submit" class="uploadBtn">올리기</button>
                                        </div>
                                    </div>
                                        </div>
                                        </form>
                                        
                                        <!--할일 일 때-->
                                        <form action="ccc" method="get">
                                        <input type="hidden" value="work" name="type"/>
                                        <div id="workBox" class="boardAllStyle">
                                            <input type="text" class="boardWriteText" name="" placeholder="할일 제목을 입력해 주세요."/>
                                            
                                            <!-- 얘가 여러개 -->
                                            <div class="workList">
                                                <i class="fas fa-minus-circle workDelete"></i>
                                                <input class="workTitle" type="text" placeholder="할일 입력" name="workTitle"/>
                                                <input type="date" class="workDate"/>
                                                <i class="fas fa-user-plus workMember"></i>
                                                <input type="hidden"/>
                                            </div>
                                            
                                            <div class="workList">
                                                <i class="fas fa-minus-circle workDelete"></i>
                                                <input class="workTitle" type="text" placeholder="할일 입력" name="workTitle"/>
                                                <input type="date" class="workDate"/>
                                                <i class="fas fa-user-plus workMember"></i>
                                                <input type="hidden"/>
                                            </div>
                                            
                                            <div id="workAdd">
                                                <i class="fas fa-plus-circle workAddBtn"></i>
                                                <input class="workTitle" type="text" placeholder="할일 추가" readonly="readonly"/>
                                            </div>
                                            <div class="boardWriteBot">
                                        <div class="fileUploadBox">
                                            <input type="file" class="fileUpload"/>
                                            <input type="file" class="imgUpload"/>
                                            <label for="fileUpload" class="fileUploadImg"><i class="fas fa-paperclip"></i></label>
                                            <label for="imgUpload" class="fileUploadImg"><i class="far fa-image"></i></label>
                                            
                                        </div>
                                        <div class="fileNameBox">
                                            <input text="text" class="fileName"/>
                                            <input text="text" class="fileSize"/>
                                        </div>
                                        <div class="boardUpload">
                                            <select name="public" class="publicYN">
                                                <option value="public" selected>전체공개</option>
                                                <option value="admin">관리자만</option>
                                            </select>
                                            <button type="submit" class="uploadBtn">올리기</button>
                                        </div>
                                    </div>
                                        </div>
                                        </form>
                                        
                                        <div id="workHidden" class="workList">
                                                <i class="fas fa-minus-circle workDelete"></i>
                                                <input class="workTitle" type="text" placeholder="할일 입력" name="workTitle"/>
                                                <input type="date" class="workDate"/>
                                                <i class="fas fa-user-plus workMember"></i>
                                                <input type="hidden"/>
                                        </div>
                                    </div>
                                    
                            </div>



						</div>
						<div id="projectRight">
							<button id="backward">
								<i class="fas fa-chevron-left"></i> 이전 화면
							</button>
							<button id="inviteBtn">
								<i class="fas fa-user-plus"></i> 초대하기
							</button>
							<div id="memberListBox">
								<div id="memberListTop">
									<span>전체 참여자</span>
									<div id="memberAllList">전체보기</div>
								</div>
								<div id="memberListBot">

									<!-- 멤버 목록 여러개 -->
									<div class="memberList">
										<div>
											<i class="fas fa-user-circle"></i>
										</div>
										<div class="memberListName">백두진</div>
									</div>

									<div class="memberList">
										<div>
											<i class="fas fa-user-circle"></i>
										</div>
										<div class="memberListName">이진원</div>
									</div>


								</div>

							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 새 프로젝트 박스 -->
	<div id="newProjectBox">
		<div id="newProjectHeader">
			프로젝트 수정
			<div id="newProjectExit">
				<i class="fas fa-times"></i>
			</div>
		</div>
		<form id="projectForm" action="#" method="get">
			<input type="text" value="<%=p.getProSubject() %>" name="pro_subject"
				id="newProjectSubject" />
			<textarea name="pro_exp" id="newProjectExplain"><%=p.getProExp() %></textarea>
			<br> <br>
			<div id="newProjectOption">옵션 설정</div>
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
			<br> <input type="hidden" name="mem_no" />
			<div class="projectBtnSize">
				<button type="submit" id="newProjectSubmitBtn">프로젝트 수정</button>
			</div>
		</form>
	</div>

	<!-- 프로젝트 멤버 추가 하기 -->
	<div id="inviteBox">
		<div id="inviteHeader">
			<i id="inviteExit" class="fas fa-times"></i>
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
				<div class="inviteMemberImg">
					<i class="fas fa-user-circle"></i>
				</div>
				<div class="inviteMemberInfo">
					<div class="inviteMemberName">이름</div>
					<div class="inviteMemberPosition">직급</div>
				</div>
				<div class="memberAdd">
					<div class="memberAddBox">+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;추가</div>
				</div>
			</div>

		</div>
	</div>

	<!-- 참가자 목록 보기 -->
	<div id="memberAllListBox">
		<div id="memberAllListHeader" class="displayNone">
			<i id="memberAllListExit" class="fas fa-times"></i>
			<div id="memberAllListName">프로젝트 참가자</div>
		</div>
		<div id="memberAllListSearchBox" class="displayNone">
			<form id="memberAllListSearchForm" action="#" method="get">
				<input id="memberAllListSearch" type="text" name="memberNo"
					placeholder=" 참여자 명으로 검색" /><i id="memberAllListSearchImg"
					class="fas fa-search"></i>
			</form>
		</div>
		<div id="memberAllListContents">

			<!--얘가 여러개 생겨남-->
			<div class="memberAllListLabel">
				<div class="memberAllListImg displayNone">
					<i class="fas fa-user-circle"></i>
				</div>
				<div class="memberAllListInfo displayNone">
					<div class="memberAllListName">이름</div>
					<div class="memberAllListPosition">직급</div>
				</div>
				<div class="memberAllListSet">
					<div class="memberAllListSetAdminDis displayNone">관리자</div>
					<div class="memberAllListSetAdmin">
						<i class="fas fa-ellipsis-v"></i>
						<!-- 프로젝트 관리자만 보임 -->
						<div class="memberAdminBox">
							<div id="" class="memberAdminList">나가기</div>
							<div id="" class="memberAdminList">내보내기</div>
							<div id="" class="memberAdminList">관리자 지정</div>
							<div id="" class="memberAdminList">관리자 지정 해제</div>
						</div>
						<!--  -->
					</div>
				</div>
			</div>

		</div>
	</div>

	<div id="boardCommentSet">
		<div id="boardCommentHeader">
			<i id="boardCommentExit" class="fas fa-times"></i>
			<div id="boardCommentName">글/댓글 작성 권한 설정</div>
		</div>
		<div id="boardCommentContents">
			<hr>
			<p class="boardCommentBold">글</p>
			<p class="boardCommentRegular">
				<input type="radio" name="board" value="all" /> 전체 작성 가능
			</p>
			<p class="boardCommentRegular">
				<input type="radio" name="board" value="admin" /> 프로젝트 관리자만 작성 가능
			</p>
			<hr>
			<p class="boardCommentBold">댓글</p>
			<p class="boardCommentRegular">
				<input type="radio" name="comment" value="all" /> 전체 작성 가능
			</p>
			<p class="boardCommentRegular">
				<input type="radio" name="comment" value="admin" /> 프로젝트 관리자만 작성 가능
			</p>
		</div>
	</div>

	<div id="fileSet">
		<div id="fileHeader">
			<i id="fileExit" class="fas fa-times"></i>
			<div id="fileName">파일 다운로드 권한 설정</div>
		</div>
		<div id="fileContents">
			<hr>
			<p class="fileRegular">
				<input type="radio" name="file" value="all" /> 전체 다운로드 가능
			</p>
			<p class="fileRegular">
				<input type="radio" name="file" value="admin" /> 관리자 + 글 작성 본인만
				다운로드 가능
			</p>
		</div>
	</div>
	
	<!-- 자바 스크립트    -->
	<script type="text/javascript" src="/resources/js/header&sideNavi.js"></script>
	<script type="text/javascript" src="/resources/js/projectBoardWrite.js"></script>
</body>
</html>