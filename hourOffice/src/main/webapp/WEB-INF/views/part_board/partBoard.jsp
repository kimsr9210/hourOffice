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
	
	<!-- CSS -->
	
	<link rel="stylesheet" type="text/css" href="/resources/css/header&sideNavi.css" />
	
	<style>
        /* div{
            border: 1px solid #FFD8D8;
        } */
        #TitleContents *:focus{
            outline: none;
        }
        #TitleContents a{
            color: black;
        }
        /* 폰트어썸 */
        #TitleContents i{
             color: #78BEB5;
        }
        /* 모든 버튼 */
        #TitleContents button{
            min-width: 28px; height: 27px;
            font-size: 1rem; font-weight: bold;
            padding: 0 10px;
            color: white; background-color: #1D9F8E;
            border-style: none;
            border-radius: 5px;
            box-shadow: 1px 1px 5px #cccccc;
            cursor: pointer;
        }
        /* float 클래스 */
        #TitleContents .float{
            float: left;
        }
        /* 글쓰기 & 목록 버튼 div */
        #TitleContents #title{
            height: 33px;
            padding: 0 0 5px 20px;
        }
        #TitleContents #title span{
            /* 새글쓰기 */
            position: relative;
            top: 10px;
        }
        #TitleContents #title > a{
            /* 윗글 & 아랫글 & 목록 */
            float: right;
            margin-right: 20px;
        }
        /* 수정하기 삭제 */
        #TitleContents #partBoard-content > div:first-child{
            padding: 10px 20px 0;
            text-align: right;
        }
        #TitleContents #partBoard-content > div:first-child span{
            margin-left: 5px;
            cursor: pointer;
        }
        /* 제목 */
        #TitleContents #partBoard-content > div:nth-child(2){
            font-size: 1.4rem;
            padding: 10px 20px 5px;
        }
        #TitleContents #partBoard-content > div:nth-child(2) span{
            font-size: 1.4rem;
            color: #78BEB5;
        }
        /* 작성자 + 시간 정보 */
        #TitleContents #partBoard-content > div:nth-child(3){
            width: 100%;
            padding: 10px 0 0 30px;
        }
        #TitleContents #partBoard-content > div:nth-child(3) > div:first-child{
            /* 프로필 */
            width: 35px; height: 35px;
            margin-right: 10px;
            border-radius: 100%;
            background-color: aqua;
        }
        #TitleContents #partBoard-content > div:nth-child(3) > div:last-child{
            /* 사원이름 */
           padding-top: 4px;
        }
        /* 내용 */
        #TitleContents #partBoard-content > div:nth-child(4){
            min-height: 450px;
            padding: 65px 40px 15px;
        }
        /* 맨 하단 조회수*/
        #TitleContents #partBoard-content > div:last-child{
            margin: 20px 0 20px 20px;
        }
        #TitleContents #partBoard-content > div:last-child span:last-child{
            cursor: pointer;
        }
        #TitleContents #partBoard-content > div:last-child span.wall{
            /* 하단 댓글 조회수 첨부파일 벽 */
            border: 1px solid lightgray;
            margin: 0 7px;
            padding: 0;
        }
        
        /* 댓글 */
        #comment-div > table{
            width: 90%; min-width: 870px;
            margin: 0 auto;
            border-collapse: collapse;
        }
        /* 라인 만들기 */
        #comment-div > table tr{
            border: 1px solid lightgray;
            border-left: 0; border-right: 0;
        }
        /* 모든 td */
        #comment-div > table td{
            height: 30px;
        }
        /* 프로필 사진 td */
        #comment-div > table td:first-child{
            width: 30px;
        }
        /* 프로필 사진 */
        #comment-div > table td:first-child > div{
            width: 40px; min-height: 40px;
            margin: 5px 20px;
            background: gray;
            border-radius: 100%;
        }
        /* 정보 td */
        #comment-div > table td:nth-child(2){
            width: 140px;
            padding-right: 20px;
        }
        /* input 태그 */
        #comment-div input{
            width: 100%; height: 60%;
            padding: 0 10px;
        }
        /* 댓글 내용  */
        #comment-div > table td:nth-child(3){
            padding: 10px 20px 10px 0;
        }
        /* 댓글쓰기 & 수정 & 삭제 */
        #comment-div > table td:last-child{
            width: 100px;
        }
        /* 수정 & 삭제 div */
        #comment-div > table td:last-child{
            padding-left: 2px;
        }
        /* 수정 & 삭제 버튼 */
        #comment-div > table div button{
            border: 1px solid #1D9F8E;
            background-color: white;
        }
        #comment-div > table div button:hover{
            background-color: rgba(0,0,0,0.05);
        }
        
        
        #comment-div > #pageNavi{
            margin: 10px;
            text-align: center;
        }
        
    </style>
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
						
						
						<div id="title"><span><a href="#"><i class="fas fa-feather-alt"></i> 새글쓰기</a></span><a href="#"><button type="button">목록</button></a><a href="#"><i class="fas fa-arrow-down"></i> 아랫글</a><a href="#"><i class="fas fa-arrow-up"></i> 윗글</a></div>
                        <hr>
                        <div id="partBoard-content">
                            <div><span><a href="#"><i class="fas fa-feather"></i> 수정하기</a></span> <span id="del-btn"><i class="far fa-trash-alt"></i> 삭제</span></div>
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
                            <div><spna><i class="far fa-keyboard"></i> 댓글 3 </spna><span class="wall"></span><span> 조회수 0 </span><span class="wall"></span><span> <i class="fas fa-paperclip"></i> 첨부파일 </span></div>
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
                                    <td><div><button><i class="fas fa-feather"></i></button> <button><i class="far fa-trash-alt"></i></button></div></td>
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
                                    <td><div><button><i class="fas fa-feather"></i></button> <button><i class="far fa-trash-alt"></i></button></div></td>
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
	<script type="text/javascript" src="/resources/js/header&sideNavi.js"></script>

	</div>
</body>
</html>