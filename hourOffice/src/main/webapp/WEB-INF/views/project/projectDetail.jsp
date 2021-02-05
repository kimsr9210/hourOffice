<%@page import="kr.or.houroffice.project.model.vo.ProjectComment"%>
<%@page import="org.springframework.web.bind.annotation.SessionAttribute"%>
<%@page import="javax.websocket.Session"%>
<%@page import="kr.or.houroffice.member.model.vo.Member"%>
<%@page import="kr.or.houroffice.project.model.vo.ProjectBoard"%>
<%@page import="kr.or.houroffice.project.model.vo.ProjectMember"%>
<%@page import="java.util.ArrayList"%>
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
	href="/resources/css/project/projectDetail.css" />
	
	
<!-- TextArea 자동 높이 조절 CDN -->
<script src="https://rawgit.com/jackmoore/autosize/master/dist/autosize.min.js"></script>
<body>

<style>
.commentInfo {
	width: 93%;
	float: left;
	border-top: 1px solid #F2F2F2;
}
.commentUserImg{
            width: 7%;
            font-size: 2rem;
            float: left;
            color: #999999;
			border-top: 1px solid #F2F2F2;
            padding: 10px 0px 0px 10px;
        }
        
.commentModifyBtn, .commentDeleteBtn{
	color: #cccccc;
	font-weight: normal;
	cursor: pointer;
}

.commentModifyBtn:hover, .commentDeleteBtn:hover{
	font-weight: bolder;
}
</style>
<%
	Project p = (Project)request.getAttribute("project");
	ArrayList<Member> projectMemberList = (ArrayList<Member>)request.getAttribute("projectMemberList");
	ArrayList<ProjectBoard> boardList = (ArrayList<ProjectBoard>)request.getAttribute("boardList");
	ArrayList<Member> boardMemberList = (ArrayList<Member>)request.getAttribute("boardMemberList");
	ArrayList<ProjectMember> projectMgrList = (ArrayList<ProjectMember>)request.getAttribute("projectMgrList");
	ArrayList<ProjectComment> commentList = (ArrayList<ProjectComment>)request.getAttribute("commentList");
	Member m = (Member)session.getAttribute("member");
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
                                        <%
                                        	for(ProjectMember pm : projectMgrList){
                                        		if(pm.getMemNo()==m.getMemNo()){
                                        %>
                                        <span id="projectSetting"><i class="fas fa-cog"></i></span>
                                        	<% } %>
                                        <% } %>
                                    </p>
                                    <div id="projectOption">
                                        <p class="optionBold">프로젝트 설정</p>
                                        <p id="projectExit" class="optionRegular">프로젝트 나가기</p>
                                        <%if(m.getMemNo()==p.getMemNo()){ %>
                                       	 	<p id="projectModify" class="optionRegular">프로젝트 수정</p>
                                        	<p id="projectDelete" class="optionRegular">프로젝트 삭제</p>
                                        <%} %>
                                        <hr>
                                        <p class="optionBold">프로젝트 관리자 설정</p>
                                        <p id="mgrComment" class="optionRegular">글/댓글 작성 권한 설정</p>
                                        <p id="mgrFile" class="optionRegular">파일 다운로드 권한 설정</p>
                                        <hr>
                                        <p class="optionBold">프로젝트 번호</p>
                                        <p class="optionRegular"><%=p.getProNo() %></p>
                                    </div>
                                    <p id="projectExp">
                                        <%=p.getProExp() %>
                                    </p>
                                </div>
                                <div id="DetailBot">
                                    <ui id="projectNavi">
                                        <li><a href="#"><i class="fas fa-list"></i> 일반</a></li>
                                        <li><a href="#"><i class="fas fa-file"></i> 파일</a></li>
                                        <li><a href="#"><i class="fas fa-laptop-code"></i> 코드</a></li>
                                        <li><a href="#"><i class="far fa-calendar"></i> 일정</a></li>
                                        <li><a href="#"><i class="fas fa-briefcase"></i> 할일</a></li>
                                        <li><a href="#" id="memberAllListNavi"><i class="fas fa-users"></i> 멤버</a></li>
                                    	
                                    </ui>
                                    <form action="/projectBoardWrite.ho" method="post">
                                    <input type="hidden" name="proNo" value="<%=p.getProNo() %>"/>
                                    <button id="newBoard">작성하기</button>
                                    </form>
                                </div>
                            </div>
                            
                            <!-- 게시물 여러개 -->
                            <%for(ProjectBoard pb : boardList){ %>
                            <%String name = ""; %>
                            <%for(Member member : boardMemberList){ %>
                            	<%if(member.getMemNo()==pb.getMemNo()){ %>
                            	<%name = member.getMemName(); %>
                            	<%} %>
                            <%} %>
                            <div class="boardBox">
                            
                                <div class="boardInfo">
                                    <div class="memberImg"><i class="fas fa-user-circle"></i></div>
                                    <div class="memberInfo">
                                    
                                        <div class="memberName"><%=name %></div>
                                    
                                        <div class="boardTime"><%=pb.getBoardDate() %></div>
                                    </div>
                                    <!--관리자 일 때-->
                                    <%if(pb.getMemNo()==m.getMemNo()){ %>
                                    <div class="memberAdmin">
                                        <span class="boardSet"><i class="fas fa-ellipsis-v"></i></span>
                                        <div class="boardModifyBox">
                                            <div id="boardModify" class="boardModifyList">게시물 수정</div>
                                            <div id="boardDelete" class="boardModifyList">게시물 삭제</div>
                                        </div>
                                    </div>
                                    <%} %>
                                    <!--------------->
                                </div>
                                
                                <div class="boardContents">
                                    <textarea class="textarea"  disabled="disabled" readonly="readonly"><%=pb.getBoardText() %></textarea>
                                </div>
                                <%
                                int count = 0;
                                for(ProjectComment pc : commentList){
                                	if(pb.getBoardNo()==pc.getBoardNo()){
                                		count++;
                                	}
                                }
                                	
                                %>
                                <div class="commentCount">
                                    <%=count %>개 댓글
                                </div>
                                <!-- 댓글 하나 코드 -->
                                <%for(ProjectComment pc : commentList){ %>
                                <%if(pc.getBoardNo()==pb.getBoardNo()){ %>
                                <%
                                	String memName = "";
                                	for(Member member : boardMemberList){
                                		if(pc.getMemNo()==member.getMemNo()){
                                			memName = member.getMemName();
                                		}
                                	}
                                %>
                                <div class="commentList">
                                    <div class="commentUserImg">
                                        <i class="fas fa-user-circle"></i>
                                    </div>
                                    <div class="commentInfo">
                                        <div class="commentName">
                                        	<%=memName %><span class="commentTime"><%=pc.getCommentDate() %></span>
                                        	<%if(pc.getMemNo()==m.getMemNo()){ %>
	                                        <span class="commentModifyBtn">수정</span>
	                                        <span  class="commentDeleteBtn">삭제</span>
	                                        <input type="hidden" name="commentNo" value="<%=pc.getCommentNo() %>"/>
                                            <input type="hidden" name="proNo" value="<%=p.getProNo()%>"/>
	                                        <%} %>
                                        </div>
                                        <form action="/updateProjectComment.ho" method="get">
	                                        <textarea class="commentTextArea" name="commentCon" disabled="disabled" readonly="readonly"><%=pc.getCommentCon() %></textarea>
	                                        <input type="hidden" name="commentNo" value="<%=pc.getCommentNo()%>"/>
	                                        <input type="hidden" name="memNo" value="<%=pc.getMemNo() %>"/>
                                            <input type="hidden" name="proNo" value="<%=p.getProNo()%>"/>
                                        </form>
                                    </div>
                                </div>
                                <%} %>
                                <%} %>
                                
                                <div class="commentWrite">
                                    <div class="commentUser">
                                        <i class="fas fa-user-circle"></i>
                                    </div>
                                    <div class="commentText">
                                        <form action="/insertBoardComment.ho" method="post">
                                            <input class="boardComment" type="text" name="commentCon" placeholder=" 댓글을 입력하세요 (Enter는 입력)"/>
                                            <input type="hidden" name="boardNo" value="<%=pb.getBoardNo()%>"/>
                                            <input type="hidden" name="memNo" value="<%=m.getMemNo()%>"/>
                                            <input type="hidden" name="proNo" value="<%=p.getProNo()%>"/>
                                        </form>
                                    </div>
                                </div>
                                
                                
                            </div>
                            <%} %>
                            
                            
                        </div>
                        <div id="projectRight">
                            <button id="backward"><i class="fas fa-chevron-left"></i> 이전 화면</button>
                            <button id="inviteBtn"><i class="fas fa-user-plus"></i> 초대하기</button>
                            <div id="memberListBox">
                                <div id="memberListTop">
                                    <span>전체 참여자</span><div id="memberAllList">전체보기</div>
                                </div>
                                <div id="memberListBot">
                                    
                                    <!-- 멤버 목록 여러개 -->
                                    <%for(Member member : projectMemberList) {%>
                                    <div class="memberList">
                                        <div><i class="fas fa-user-circle"></i></div>
                                        <div class="memberListName"><%=member.getMemName() %></div>
                                    </div>
                                    <%} %>
                                    
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
            프로젝트 수정<div id="newProjectExit"><i class="fas fa-times"></i></div>
        </div>
        <form id="projectForm" action="#" method="get">
            <input type="text" value="<%=p.getProSubject() %>" name="pro_subject" id="newProjectSubject" />
            <textarea placeholder="설명 글을 입력할 수 있습니다." name="pro_exp" id="newProjectExplain" ><%=p.getProExp() %></textarea>
            <br><br>
            <div id="newProjectOption">옵션 설정</div>
            <div class="optionList">
                <section class="setting st-login">
                <p><i class="fas fa-check"></i> 공개 프로젝트 여부
                        <label class="btn-switch">
                            <input type="checkbox" name="public_yn">
                            <i class="slide-object"></i>
                        </label>
                    </p>
                </section>
            </div>
            <br>
            <input type="hidden" name="mem_no"/>
            <div class="projectBtnSize">
                <button type="submit" id="newProjectSubmitBtn">프로젝트 수정</button>
            </div>
        </form>
    </div>
    
    <!-- 프로젝트 멤버 추가 하기 -->
    <div id="inviteBox">
        <div id="inviteHeader">
            <span id="inviteExit"><i class="fas fa-times"></i></span>
            <div id="inviteName">초대하기</div>
        </div>
        <div id="inviteSearchBox">
            <form id="memberSearchForm" action="#" method="get">
                <input id="memberSearch" type="text" name="memberNo" placeholder=" 프로젝트를 함께할 친구를 찾아보세요!"/><i id="memberSearchImg" class="fas fa-search"></i>
            </form>
        </div>
        <div id="inviteContents">
            
            <!--얘가 여러개 생겨남-->
            <div class="inviteMemberList">
                <div class="inviteMemberImg"><i class="fas fa-user-circle"></i></div>
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
    
    <!--참가자 목록 -->
    <div id="memberAllListBox">
        <div id="memberAllListHeader" class="displayNone">
            <span id="memberAllListExit"><i class="fas fa-times"></i></span>
            <div id="memberAllListName">프로젝트 참가자</div>
        </div>
        <div id="memberAllListSearchBox" class="displayNone">
            <form class="displayNone" id="memberAllListSearchForm" action="#" method="get">
                <input id="memberAllListSearch" type="text" name="memberNo" placeholder=" 참여자 명으로 검색"/><i id="memberAllListSearchImg" class="fas fa-search"></i>
            </form>
        </div>
        <div id="memberAllListContents">
            
            <!--얘가 여러개 생겨남-->
            <%for(Member member : projectMemberList) {%>
            <%
            	char mgrYN = 'N';
            	for(ProjectMember pm : projectMgrList){
            		if(member.getMemNo()==pm.getMemNo()){
            			mgrYN = pm.getMgrYN();
            		}
            	}
            %>
            <div class="memberAllListLabel">
                <div class="memberAllListImg displayNone"><i class="fas fa-user-circle"></i></div>
                <div class="memberAllListInfo displayNone">
                    <div class="memberAllListName"><%=member.getMemName() %></div>
                    <div class="memberAllListPosition"><%=member.getMemPosition() %></div>
                </div>
                <div class="memberAllListSet">
                <%if(mgrYN=='Y'){ %>
                    <div class="memberAllListSetAdminDis displayNone">관리자</div>
               	<%} %>
                    <div class="memberAllListSetAdmin"><i class="fas fa-ellipsis-v"></i>
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
            <%} %>
            
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
            <p class="boardCommentRegular"><input type="radio" name="board" value="all"/> 전체 작성 가능</p>
            <p class="boardCommentRegular"><input type="radio" name="board" value="admin"/> 프로젝트 관리자만 작성 가능</p>
            <hr>
            <p class="boardCommentBold">댓글</p>
            <p class="boardCommentRegular"><input type="radio" name="comment" value="all"/> 전체 작성 가능</p>
            <p class="boardCommentRegular"><input type="radio" name="comment" value="admin"/> 프로젝트 관리자만 작성 가능</p>
        </div>
    </div>
    
    <div id="fileSet">
        <div id="fileHeader">
            <i id="fileExit" class="fas fa-times"></i>
            <div id="fileName">파일 다운로드 권한 설정</div>
        </div>
        <div id="fileContents">
            <hr>
            <p class="fileRegular"><input type="radio" name="file" value="all"/> 전체 다운로드 가능</p>
            <p class="fileRegular"><input type="radio" name="file" value="admin"/> 관리자 + 글 작성 본인만 다운로드 가능</p>
        </div>
    </div>
    <!-- 자바 스크립트    -->
    <script>
    $(function(){
    	// 댓글 수정 
		$('.commentModifyBtn').click(function(){
				var $textBox = $(this).parent().next().children().eq(0);
				var $form = $(this).parent().next();
			if($(this).text()=='수정'){
				$(this).text('완료');
		        $textBox.removeAttr('disabled');
		        $textBox.removeAttr('readonly');
		        $textBox.css('border','1px solid black');
			}else{
				var result = window.confirm("해당 수정을 삭제하시겠습니까?");
				if(result){
					$form.submit();
				}
			}
		});
		
    	// 댓글 삭제
		$('.commentDeleteBtn').click(function(){
			var result = window.confirm("해당 댓글을 삭제하시겠습니까?");
			var $commentBox = $(this).parent().parent().parent();
			if(result){
				var $commentNo = $(this).next().val();
				var $proNo = $(this).next().next().val();
				$.ajax({
                	url : "/deleteProjectComment.ho",
                	data : {"commentNo" : $commentNo},
                	type : "get",
                	success : function(result){
                		if(result=="true"){
                			console.log("댓글이 삭제되었습니다");
                		}else{
                			console.log("프로젝트 즐겨찾기 실패");
                		}
                	},
                	error : function(){
                		console.log("프로젝트 즐겨찾기 ajax 통신 실패");
                	}
                });
				$(this).parent().parent().parent().remove();
			}
		});
    });
    </script>
	<script type="text/javascript" src="/resources/js/header&sideNavi.js"></script>
	<script type="text/javascript" src="/resources/js/projectDetail.js"></script>
</body>
</html>