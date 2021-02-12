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
	<!-- 페이지 네비 CSS -->
	<link rel="stylesheet" type="text/css" href="/resources/css/board/pageNavi.css" />
	

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
						
						<div id="title">
							<span><a href="/writePostPartBoard.ho?deptCode=${pb.deptCode }"><i class="fas fa-feather-alt i-icon"></i> 새글쓰기</a></span>
							<a href="/allPartBoardPage.ho"><button type="button">목록</button></a>
						<% if((Integer)request.getAttribute("prevPost")>0){ %>
							<a href="/postInPartBoard.ho?deptCode=${pb.deptCode }&partNo=${prevPost}"><i class="fas fa-arrow-down i-icon"></i> 아랫글</a>
						<% }else{ %>
							<a style="color:lightgray;"><i class="fas fa-arrow-down i-icon" style="color:lightgray; cursor:default;"></i> 아랫글</a>
						<% } %>
						<% if((Integer)request.getAttribute("nextPost")>0){ %>
							<a href="/postInPartBoard.ho?deptCode=${pb.deptCode }&partNo=${nextPost}"><i class="fas fa-arrow-up i-icon"></i> 윗글</a>
						<% }else{ %>
							<a style="color:lightgray;"><i class="fas fa-arrow-up i-icon" style="color:lightgray; cursor:default;"></i> 윗글</a>
						<% } %>
						</div>
                        <hr>
                        <div id="board-content">
                            <div>
                        <% if(pb.getMemNo()==member.getMemNo()){ %>
                            	<span><a href="/partBoardModify.ho?partNo=${pb.partNo }&deptCode=${pb.deptCode}"><i class="fas fa-feather i-icon"></i> 수정하기</a></span> <span id="del-btn"><i class="far fa-trash-alt i-icon"></i> 삭제</span>
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
                            <div><span><i class="far fa-keyboard i-icon" style="cursor:default;"></i> 댓글 ${comntCount } </span><span class="wall"></span><span> 조회수 ${pb.partHits } </span><span class="wall"></span><span id="filePlace"><i class="fas fa-paperclip i-icon" style="cursor:default;"></i> 첨부파일 <% if(pb.getFileNo()>0){ %>[ <span id="fileName-sapn">${pb.origName }</span> ]<% } %></span>
                            	<form action="/downloadFilePartBoard.ho" method="post" style="display:none;"></form>
                            </div>
                        </div>
                        <hr>
                        <div id="comment-div">
                            <table>
                                <form id="addComnt-frm" action="/writeComntPartBoard.ho" method="post">
                                    <tr>
                                        <td><div><img src="/resources/images/profile/<%=member.getMemProfile()%>"></div></td>
                                        <td colspan="2"><input type="text" name="partComnt" size="200"/><input type="text" name="partNo" value="${pb.partNo }" style="display:none;"/></td>
                                        <td><button type="button" id="addComnt-Btn">댓글쓰기</button></td>
                                    </tr>
                                </form>
                        
                        <% if(!comntList.isEmpty()){ %>
                        <% int listSize = 5; // 댓글 보여줄 수 %>
                        <% if(comntList.size()<5){ %>
                        <% listSize = comntList.size(); %>
                        <% }  %>
                        <% for(int i=0; i<listSize; i++){ %>
                        <% PartComments comn = comntList.get(i); %>
                                <tr>
                                    <td><div><img src="/resources/images/profile/<%=comn.getMemProfile()%>"></div></td>
                                    <td><%=comn.getPartComntWriter() %> <%=comn.getMemPosition() %><br><%=format.format(comn.getPartComntDate()) %></td>
                                    <td><%=comn.getPartComnt() %></td>
                                    <td>
                                    	<div class="comnBtn-div<%=comn.getPartComntNo()%>"><button><i class="fas fa-feather i-icon"></i></button> <button class="comnt-del-btn"><i class="far fa-trash-alt i-icon" style="cursor:default;"></i></button></div>
                        <% if(comn.getMemNo()!=member.getMemNo()){ %>
                        <script> // 댓글쓴이와 내 사번이 다르면 버튼 안보여주기
                        	$('.comnBtn-div<%=comn.getPartComntNo()%>').css('visibility','hidden');
                        </script>
                        <% } %>
                                    </td>
                                </tr>
                       	<% } %>
                       	<% } %>
                            </table>
                            <ul id="page-navi">${pageNavi.url }</ul>
                        </div>
						
						
	<script>
        $(function(){
            // 첨부파일
            $('#filePlace').hover(function(){
            	$('#fileName-sapn').css('color','blue').css('text-decoration','underline');
            },function(){
            	$('#fileName-sapn').css('color','').css('text-decoration','');
            });
            // 첨부파일 다운로드
            $('#fileName-sapn').click(function(){
            	var $frm = $('#filePlace').next();
            	$frm.html('<input type="text" name="partNo" value="${pb.partNo}"/><input type="text" name="fileNo" value="${pb.fileNo}"/>').submit();
            });
            // 삭제 클릭 이벤트
            $('#del-btn').click(function(){
                if(confirm('해당 글을 삭제하시겠습니까?')){
                	var memNo = <%=pb.getMemNo()%>;
                	var postNo = <%=pb.getPartNo()%>;
                	
                    $.ajax({
                    	url:'/deltetPostPartBoard.ho',
                    	data:{memNo,postNo},
                    	type:'post',
                    	success:function(result){
                    		if(result){
                    			location.replace('/allPartBoardPage.ho');
                    		}else{
                    			alert('글 삭제에 실패하였습니다. \n지속적인 문제 발생시 관리자에 문의하세요.');
                    		}
                    	},
                    	error:function(){alert('글 삭제에 실패하였습니다. \n지속적인 오류 발생시 관리자에 문의하세요.');}
                    });
                }
            });
            // 댓글 입력 공백 거르기
            $('#addComnt-Btn').click(function(){
            	if($(this).parent().prev().children(':first-child').val()==''){
            		alert('댓글을 입력해주세요.');
            	}else{
            		$('#addComnt-frm').submit();
            	}
            });
            // 일단 댓글 네비 ...
            $('#pageNavi').children().click(function(){
            	
            	var comnNo = [];
            	var memNo = [];
            	var writer = [];
            	var writeDate = [];
            	var comnCon = [];
            	var memPosition = [];
            	var memProfile = [];
            	<% for(PartComments comn1 : comntList){ %>
            		comnNo.push('<%=comn1.getPartComntNo()%>');
            		memNo.push('<%=comn1.getMemNo()%>');
            		writer.push('<%=comn1.getPartComntWriter()%>');
            		writeDate.push('<%=format.format(comn1.getPartComntDate()) %>');
            		comnCon.push('<%=comn1.getPartComnt()%>');
            		memPosition.push('<%=comn1.getMemPosition()%>');
            		memProfile.push('<%=comn1.getMemProfile()%>');
            	<% } %>
            	var pageNum = $(this).text();
            	
            	// (pageNum*5)-1 - end
            	// pageNum*5-5 - start
            	var j=2;
            	for(var i=pageNum*5-5; i<=pageNum*5-1; i++){
            		
            		
            		var str = '<tr></tr>';
            		var str1 = '<td><div><img src="/resources/images/profile/'+memProfile[i]+'"></div></td>';
            		var str2 = '<td>'+writer[i]+' '+memPosition[i]+'<br>'+writeDate[i]+'</td>';
            		var str3 = '<td>'+comnCon[i]+'</td>';
            		var str4 = '<td><div class="comnBtn-div'+comnNo[i]+'"><button><i class="fas fa-feather i-icon"></i></button> <button class="comnt-del-btn"><i class="far fa-trash-alt i-icon"></i></button></div></td>';
            		
            		
            		
            		//alert(comnNo[i]+"/"+memNo[i]+"/"+writer[i]+"/"+writeDate[i]+"/"+comnCon[i]+"/"+memPosition[i]+"/"+memProfile[i]);
            		if(comnCon[i]!=null){ // 댓글이 있으면 실행
            			$('#comment-div tr:nth-child('+j+') td:nth-child(1)').html('<div><img src="/resources/images/profile/'+memProfile[i]+'"></div>');
            			$('#comment-div tr:nth-child('+j+') td:nth-child(2)').html(writer[i]+' '+memPosition[i]+'<br>'+writeDate[i]);
            			$('#comment-div tr:nth-child('+j+') td:nth-child(3)').html(comnCon[i]+' ');
            			if(memNo[i]!='<%=member.getMemNo()%>'){ // 댓글쓴이 사번과 내 사번이 일치하지 않으면 버튼 가림
            				$('.comnBtn-div'+comnNo[i]).css('visibility','hidden');
            			}
            		}
            		
            		j++; 
            	}
            	
            });
            
            $('.comnt-del-btn').click(function(){
            	var comntNo = $(this).parent().attr('class').split('comnBtn-div')[1]; // 댓글번호
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