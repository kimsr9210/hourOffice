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
        #TitleContents *:focus{
            outline: 0;
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
        #TitleContents input{
            border: 1px solid;
            border-radius: 3px;
        }
        #TitleContents span{
            font-size: 1rem;
            margin-left: 10px;
            cursor: pointer;
        }
        #TitleContents span>a{
            font-size: 1rem;
        }
        /* 게시글 목록 */
        #TitleContents table{
            width: 100%; 
            text-align: center;
            border-collapse: collapse;
            margin-top: 5px;
        }
        
        #TitleContents table tr{
            border: 1px solid lightgray;
            border-left: 0; border-right: 0;
        }
        #TitleContents table th,td{
            padding: 10px;
        }
        #TitleContents table td:first-child{
            width: 40px;
        }
        #TitleContents table td:nth-child(2){
            width:  70px;
        }
        /* table 안에서 말줄임 ... 넣는 css 1 */
        #TitleContents table td:nth-child(3) div{
            padding: 0 10px;
            text-align: left;
            display: table;
        	table-layout: fixed;
        	width: 100%;
        	white-space: nowrap;
        }
        /* table 안에서 말줄임 ... 넣는 css 2 */
        #TitleContents table td:nth-child(3) div > *{
            display: table-cell;
        	overflow: hidden;
        	text-overflow: ellipsis;
        }
        #TitleContents table td:nth-child(4){
            width: 100px;
        }
        #TitleContents table td:last-child{
            width: 100px;
        }
        
        /* 페이지 번호 */
        #TitleContents #pageNavi{
            text-align: center;
            margin: 20px 0 10px 0;
        }
        /* 검색 div */
        #TitleContents #search-div{
            text-align: center;
        }
        /* select */
        #TitleContents #search-div select{
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
        #TitleContents #search-div select::-ms-expand {
           display: none;
        }
        /* 검색창 */
        #TitleContents #search-div input{
            height: 25px;
            padding: 0 10px;
        }
        #TitleContents #search-div button{
            position: relative;
            top: 1px;
        }
        #TitleContents #search-div button:active{
            box-shadow: 0 0 5px black;
        }
    </style>
    <script>
        $(function(){
            
            // 삭제 클릭 이벤트
            $('#del-btn').click(function(){
                if(confirm('해당 글을 삭제하시겠습니까?')){
                    $(this).next().submit();
                }
            });
            
            // checkbox 클릭 이벤트
            $('input[type=checkbox]').click(function(){
                var checked = $(this).attr('checked'); //ture || false
                if($(this).val()!=''){
                   
                    // checked 가 있으면 / 있지 않으면
                    if(checked){
                        $(this).attr('checked',false); // 체크 빼기
                    }else{
                        $(this).attr('checked',true); //  체킄 넣기
                    }
                }else{ // checkbox 전체 선택하기
                    // checked 가 있으면 / 있지 않으면
                    if(checked){
                        $('input[type=checkbox]').each(function(){
                            $(this).attr('checked',false);
                        });
                        
                    }else{
                        $('input[type=checkbox]').each(function(){
                            $(this).attr('checked',true);
                        });
                    }
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
						총무관리 사내 규정
						<!----------------------------------->
					</div>
					<div id="TitleContents">
						<!--여기서 각자 id 만드시면 됩니다-->
						


						<span><a href="#"><i class="fas fa-feather-alt"></i> 새글쓰기</a></span> <span id="del-btn"><i class="far fa-trash-alt"></i> 삭제</span>
                        <form action="#" method="get">
                        <table>
                            <!--<tr style="padding:0;"><td colspan="4" style="padding:0;"><hr></td></tr>-->
                            <tr>
                                <th><input type="checkbox" value=""/></th>
                                <th>번호</th>
                                <th>제목</th>
                                <th>작성자</th>
                                <th>작성일</th>
                            </tr>
                            <!--<tr><td colspan="4" style="padding:0;"><hr></td></tr>-->
                            <tr>
                                <td><input type="checkbox" name="notNo" value="1"/></td>
                                <td>1</td>
                                <td><div><a href="/admin_tap_companyRuleModify.ho">1조 1항</a></div></td>
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