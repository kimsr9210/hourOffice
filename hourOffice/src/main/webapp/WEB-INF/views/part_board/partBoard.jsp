<%@page import="kr.or.houroffice.member.model.vo.Member"%>
<%@page import="kr.or.houroffice.board.model.vo.PartComments"%>
<%@page import="java.util.ArrayList"%>
<%@page import="kr.or.houroffice.board.model.vo.PartBoard"%>
<%@page import="java.text.SimpleDateFormat"%>
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
	<!-- 게시물 공통 CSS -->
	<link rel="stylesheet" type="text/css" href="/resources/css/board/post.css" />
	
	

	<Style>
		#TitleContents img{
			width:100%; height: 100%;
			border-radius:100%;
		}
	</Style>
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
						${pb.deptName } 게시판 <span>게시글</span>
						<!----------------------------------->
					</div>
					<div id="TitleContents">
						<!--여기서 각자 id 만드시면 됩니다-->
						<% Member member = (Member)session.getAttribute("member"); %>
						<% PartBoard pb = (PartBoard)request.getAttribute("pb"); %>
						<% ArrayList<PartComments> comntList = (ArrayList<PartComments>)request.getAttribute("comntList"); %>
						<% SimpleDateFormat format = new SimpleDateFormat("yyyy/MM/dd hh:mm:ss"); %>
						
						<div id="title"><span><a href="/writePostPartBoard.ho?deptCode=${pb.deptCode }"><i class="fas fa-feather-alt i-icon"></i> 새글쓰기</a></span><a href="/allPartBoardPage.ho"><button type="button">목록</button></a><a href="#"><i class="fas fa-arrow-down i-icon"></i> 아랫글</a><a href="#"><i class="fas fa-arrow-up i-icon"></i> 윗글</a></div>
                        <hr>
                        <div id="board-content">
                            <div>
                        <% if(pb.getMemNo()==member.getMemNo()){ %>
                            	<span><a href="/partBoardModify.ho"><i class="fas fa-feather i-icon"></i> 수정하기</a></span> <span id="del-btn"><i class="far fa-trash-alt i-icon"></i> 삭제</span>
                        <% } %>
                            </div>
                            <div>${pb.partTitle }</div>
                            <div>
                                <div class="float"><img src="/resources/images/profile/${pb.memProfile }"/></div>
                                <div class="float">
                                    <div>${pb.partWriter } ${pb.memPosition }</div>
                                    <div><%=format.format(((PartBoard)request.getAttribute("pb")).getPartDate()) %></div>
                                    <div></div>
                                </div>
                            </div>
                            <div>
                                ${pb.partContent }
                            </div>
                            <div><spna><i class="far fa-keyboard i-icon"></i> 댓글 ${comntCount } </spna><span class="wall"></span><span> 조회수 ${pb.partHits } </span><span class="wall"></span><span> <i class="fas fa-paperclip i-icon"></i> 첨부파일 </span></div>
                        </div>
                        <hr>
                        <div id="comment-div">
                            <table>
                                <form action="/writeComntPartBoard.ho" method="post">
                                    <tr>
                                        <td><div><img src="/resources/images/profile/<%=member.getMemProfile()%>"></div></td>
                                        <td colspan="2"><input type="text" name="partComnt"/><input type="text" name="partNo" value="${pb.partNo }" style="display:none;"/></td>
                                        <td><button>댓글쓰기</button></td>
                                    </tr>
                                </form>
                        
                        <% if(!comntList.isEmpty()){ %>
                        <% for(PartComments comn : comntList){ %>
                                <tr>
                                    <td><div><img src="/resources/images/profile/<%=comn.getMemProfile()%>"></div></td>
                                    <td><%=comn.getPartComntWriter() %> <%=comn.getMemPosition() %><br><%=format.format(comn.getPartComntDate()) %></td>
                                    <td><%=comn.getPartComnt() %></td>
                                    <td>
                        <% if(comn.getMemNo()==member.getMemNo()){ %>
                                    	<div><button><i class="fas fa-feather i-icon"></i></button> <button><i class="far fa-trash-alt i-icon"></i></button></div>
                        <% } %>
                                    </td>
                                </tr>
                       	<% } %>
                       	<% } %>
                            </table>
                            <div id="pageNavi">1 2 3 4 5 ></div>
                        </div>
						
						
	<script>
        $(function(){
            
            // 삭제 클릭 이벤트
            $('#del-btn').click(function(){
                if(confirm('해당 글을 삭제하시겠습니까?')){
                	var memNo = <%=pb.getMemNo()%>;
                	var postNo = <%=pb.getPartNo()%>;
                	
                    $.ajax({
                    	url:'/deltetPostPartBoard.ho',
                    	data:{memNo,postNo},
                    	type:'post',
                    	success:function(){},
                    	error:function(){}
                    });
                }
            });
            
        })
    </script>
						
						
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