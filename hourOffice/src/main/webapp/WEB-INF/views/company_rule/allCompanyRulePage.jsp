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
        /*div{
            border: 1px solid #FFD8D8;
        }*/
        *:focus{
            outline: 0;
        }
        a{
            color: black;
        }
        /* 폰트어썸 */
        i{
             color: #78BEB5;
        }
        /* 모든 버튼 */
        button{
            min-width: 28px; height: 27px;
            font-size: 1rem; font-weight: bold;
            padding: 0 10px;
            color: white; background-color: #1D9F8E;
            border-style: none;
            border-radius: 5px;
            box-shadow: 1px 1px 5px #cccccc;
            cursor: pointer;
        }
        input{
            border: 1px solid;
            border-radius: 3px;
        }
        /* 게시글 목록 */
        table{
            width: 100%; 
            text-align: center;
            border-collapse: collapse;
            margin-top: 5px;
        }
        
        table tr{
            border: 1px solid lightgray;
            border-left: 0; border-right: 0;
        }
        table th,td{
            padding: 10px;
        }
        table td:first-child{
            width:  70px;
        }
        /* table 안에서 말줄임 ... 넣는 css 1 */
        table td:nth-child(2) div{
            padding: 0 50px;
            text-align: left;
            display: table;
        	table-layout: fixed;
        	width: 100%;
        	white-space: nowrap;
        }
        /* table 안에서 말줄임 ... 넣는 css 2 */
        table td:nth-child(2) div > *{
            display: table-cell;
        	overflow: hidden;
        	text-overflow: ellipsis;
        }
        table td:nth-child(3){
            width: 100px;
        }
        table td:last-child{
            width: 100px;
        }
        
        /* 페이지 번호 */
        #pageNavi{
            text-align: center;
            margin: 20px 0 10px 0;
        }
        /* 검색 div */
        #search-div{
            text-align: center;
        }
        /* select */
        #search-div select{
            width: 85px; height: 25px;
            align-content: center;
            border-radius: 3px;
            border: 1px solid black;
            background: url(/resources/images/selectarrow.png) 115% center no-repeat;
            /* 화살표 없애기 */
            -webkit-appearance: none;
            -moz-appearance: none;
            appearance: none;
            /* 가운데 정렬 */
            text-align-last: center;
            text-align: center;
            -ms-text-align-last: center;
            -moz-text-align-last: center;
            padding-right: 12px;
            
        }
        #search-div select::-ms-expand {
           display: none;
        }
        /* 검색창 */
        #search-div input{
            height: 25px;
            padding: 0 10px;
        }
        #search-div button{
            position: relative;
            top: 1px;
        }
        #search-div button:active{
            box-shadow: 0 0 5px black;
        }
    </style>
    <script>
        $(function(){
            
            
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
						사내 규정
						<!----------------------------------->
					</div>
					<div id="TitleContents">
						<!--여기서 각자 id 만드시면 됩니다-->
						
						
						<div id="TitleContents">
                        <!--여기서 각자 id 만드시면 됩니다-->
                        
                        <table>
                            <tr>
                                <th>번호</th>
                                <th>제목</th>
                                <th>작성자</th>
                                <th>작성일</th>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td><div><a href="">1조 1항</a></div></td>
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