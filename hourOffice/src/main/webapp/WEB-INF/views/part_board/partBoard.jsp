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
	
	
    <script>
        $(function(){
            
            // 삭제 클릭 이벤트
            $('#del-btn').click(function(){
                if(confirm('해당 글을 삭제하시겠습니까?')){
                    
                }
            });
            
        })
    </script>
	
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
						부서별 게시판 <span>게시글</span>
						<!----------------------------------->
					</div>
					<div id="TitleContents">
						<!--여기서 각자 id 만드시면 됩니다-->
						
						
						<div id="title"><span><a href="/partBoardAdd.ho"><i class="fas fa-feather-alt i-icon"></i> 새글쓰기</a></span><a href="/allPartBoardPage.ho"><button type="button">목록</button></a><a href="#"><i class="fas fa-arrow-down i-icon"></i> 아랫글</a><a href="#"><i class="fas fa-arrow-up i-icon"></i> 윗글</a></div>
                        <hr>
                        <div id="board-content">
                            <div><span><a href="/partBoardModify.ho"><i class="fas fa-feather i-icon"></i> 수정하기</a></span> <span id="del-btn"><i class="far fa-trash-alt i-icon"></i> 삭제</span></div>
                            <div>[01월] 부서별 게시판</div>
                            <div>
                                <div class="float"><img src=""/></div>
                                <div class="float">
                                    <div>주다빈 사원</div>
                                    <div>2021/01/29 10:33:29</div>
                                    <div></div>
                                </div>
                            </div>
                            <div>
                                내용
                            </div>
                            <div><spna><i class="far fa-keyboard i-icon"></i> 댓글 3 </spna><span class="wall"></span><span> 조회수 0 </span><span class="wall"></span><span> <i class="fas fa-paperclip i-icon"></i> 첨부파일 </span></div>
                        </div>
                        <hr>
                        <div id="comment-div">
                            <table>
                                <form>
                                    <tr>
                                        <td><div><img src=""></div></td>
                                        <td colspan="2"><input type="text" name="partComnt"/></td>
                                        <td><button>댓글쓰기</button></td>
                                    </tr>
                                </form>
                                <tr>
                                    <td><div><img src=""></div></td>
                                    <td>주다빈 사원<br>2020/01/30 21:20:22</td>
                                    <td>콘치즈 먹는 중인데 존맛탱 콘치즈 먹는 중인데 존맛탱콘치즈 먹는 중인데 존맛탱콘치즈 먹는 중인데 존맛탱콘치즈 먹는 중인데 존맛탱콘치즈 먹는 중인데 존맛탱콘치즈 먹는 중인데 존맛탱콘치즈 먹는 중인데 존맛탱콘치즈 먹는 중인데 존맛탱콘치즈 먹는 중인데 존맛탱콘치즈 먹는 중인데 존맛탱콘치즈 먹는 중인데 존맛탱콘치즈 먹는 중인데 존맛탱콘치즈 먹는 중인데 존맛탱콘치즈 먹는 중인데 존맛탱콘치즈 먹는 중인데 존맛탱콘치즈 먹는 중인데 존맛탱</td>
                                    <td><div><button><i class="fas fa-feather i-icon"></i></button> <button><i class="far fa-trash-alt i-icon"></i></button></div></td>
                                </tr>
                                <tr>
                                    <td><div><img src=""></div></td>
                                    <td>주다빈 사원<br>2020/01/30 21:20:22</td>
                                    <td>콘치즈 먹는 중인데 존맛탱</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td><div><img src=""></div></td>
                                    <td>주다빈 사원<br>2020/01/30 21:20:22</td>
                                    <td>콘치즈 먹는 중인데 존맛탱</td>
                                    <td><div><button><i class="fas fa-feather i-icon"></i></button> <button><i class="far fa-trash-alt i-icon"></i></button></div></td>
                                </tr>
                            </table>
                            <div id="pageNavi">1 2 3 4 5 ></div>
                        </div>
						
						
						
						<!----------------------------------->
					</div>
				</div>
			</div>
		</div>

	<!-- 자바 스크립트    -->
	<script>
		$(function(){
			$('#categoryBoard').next().css('display','block');
			$('#categoryBoard').next().css('height','150px');
			$('#categoryBoard').children().last().children().attr('class','fas fa-chevron-left');
			
			$('#categoryBoard').next().children().eq(5).children().css('font-weight','800');
			$('#categoryBoard').next().children().eq(5).children().css('color','#ffcc29');
		});
	</script>
	<script type="text/javascript" src="/resources/js/header&sideNavi.js"></script>

	</div>
</body>
</html>