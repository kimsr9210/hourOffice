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
        #TitleContents a{
            color: black; padding-right: 5px;
        }
        #TitleContents *:focus{
            outline: none;
        }
        #contWrapper{
            width: 80%; min-width: 700px;
            margin: 0 auto;
        }
        /* 모든 버튼 */
        #TitleContents button{
            min-width: 28px; height: 25px;
            font-size: 1rem; font-weight: bold;
            padding: 0 10px;
            color: white; background-color: #1D9F8E;
            border-style: none;
            border-radius: 5px;
            box-shadow: 1px 1px 5px #cccccc;
            cursor: pointer;
        }
        #TitleContents #delBtn{
            background-color: #FF6363;
        }
        
        #TitleContents .float{
            float: left;
        }
        /* + & - 버튼 div */
        #TitleContents #btnDiv{
            padding-left: 10px;
            margin: 5px 0;
        }
        /* 조직도 표 */
        #chart{
            border: 1px solid #12776A;
            width: 210px; height: auto; min-height: 400px;
            border-radius: 10px;
        }
        /* 제일 상위 ul */
        #treeMenu{margin:15px 0 0 5px;}
        /* 모든 il */
        #treeMenu li{
            line-height:18px; padding:0 0 10px 20px;
            margin-top:-2px;
            background:url(http://cfile9.uf.tistory.com/image/22601F4B569457FF051E7E) no-repeat 24.5px 0px;
        }
        /* 마지막 부서 */ 
        #treeMenu li.end{
            background: none;
        }
        /* 조직도 목록 중 사원 */
        #treeMenu li.member{
            background:url(http://cfile8.uf.tistory.com/image/2456D34B569457FC14828D) no-repeat 24.5px 1px;
        }
        /* 조직도 목록 중 마지막 사원 */
        #treeMenu li.member.end{
            background:url(http://cfile23.uf.tistory.com/image/2272CF4B5694580418FF9C) no-repeat 24.5px 1px;
        }
        /* 사원 li 안 i 태그 */
        #treeMenu .member i{
            margin-left: 15px;
        }
        
        /* 폰트어썸 */
        i{
             color: #78BEB5;
            background-color: white;
        }
        /* 부서 정보 */
        #infor-div{
            margin: 20px 90px;
        }
        /* 부서 정보 이름 목록 */
        #infor-list{
            width: 120px;
        }
        #infor-list + div{
            width: 250px;
        }
        /* 부서명 수정할 때 쓰는 input 태그 */
        .deptName{
            width: 70px;
            border: 1px solid;
            border-top: 0; border-left: 0; border-right: 0;
            display: none;
            padding: 1px 3px;
        }
        .deptName + i{
            cursor: pointer;
            font-size: 1rem;
        }
        .deptName + i.fa-check-circle:active{
            font-size: 0.9rem;
        }
        /* 부서원 목록 table */
        #TitleContents table{
            background-color: #FFFAF5;
            border-radius: 5px;
            box-shadow: 1px 1px 5px #E7E0E8 inset;
            padding: 10px;
            margin-top: 5px;
        }
        #TitleContents td:first-child{
            width: 20px;
            padding-top: 3px;
        }
        #TitleContents td:nth-child(2){
            width: 50px;
        }
        #TitleContents td:last-child{
            width: 50px;
        }
        /* 부서이동 div */
        #positionChange{
            margin-top: 4px;
        }
        /* select */
        #TitleContents select{
            width: 65px; height: 25px;
            border-radius: 3px;
            border: 1px solid gray;
            padding: 0 5px;
            background: url(img/selectarrow.png) 120% center no-repeat;
            /* 화살표 없애기 */
            -webkit-appearance: none;
            -moz-appearance: none;
            appearance: none;
        }
        #TitleContents select::-ms-expand {
           display: none;
        }
        
        /* 모달 */
        #modal {
          display: none;
          position:relative;
          width:100%;
          height:100%;
          z-index:1;
        }
        
        #modal .float{
            float: left;
        }

        #modal button {
          width:60px; height: 30px;
          margin: 20px 120px 0;
        }

        #modal .modal-content {
          width:360px;
          margin:200px auto;
          padding:15px 15px 20px 30px;
          background:#fff;
          border:1.5px solid #12776A;
          border-radius: 5px;
          box-shadow: 3px 3px 5px rgba(63,0,153,30%);
        }
        
        #modal-left{
            width: 90px;
            margin: 24px 18px 0;
        }
        #modal-right{
            margin: 15px;
        }

        #modal .modal-layer {
          position:fixed;
          top:0;
          left:0;
          width:100%;
          height:100%;
          background:rgba(0, 0, 0, 0.5);
          z-index:-1;
        }   
        #modal .exit-icon{
            text-align: right;
        }
        #modal .exit-icon > i{
            font-size: 1.5rem;
            cursor: pointer;
        }
        #modal input{
            background-color: #E7E0E8;
            border: 1px solid lightgray;
            width: 130px; height: 22px;
            font-size: 1rem;
            padding: 0 10px;
        }
        #modal input:focus{
            box-shadow: 0 0 5px 5px #D9E5FF;
            border: 1px solid #A0BAED;
        }
        #modal .fa-question-circle{
            font-size: 0.8rem;
            position: relative;
            bottom: 5px;
            right: 3px;
        }
        #modal_close_btn{
            min-width: 28px; height: 25px;
            font-size: 1rem; font-weight: bold;
            padding: 0 10px;
            color: white; background-color: #1D9F8E;
            border-style: none;
            border-radius: 5px;
            box-shadow: 1px 1px 5px #cccccc;
            cursor: pointer;
        }
    </style>
    
	
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
						인사관리 조직도
						<!----------------------------------->
					</div>
					<div id="TitleContents">
						<!--여기서 각자 id 만드시면 됩니다-->
						
						<div id="contWrapper">
                        <div id="btnDiv">
                            <button type="button" id="addBtn">+</button> <button type="button" id="delBtn">-</button>
                        </div>
                        <div id="chart" class="float">
                            <ul id="treeMenu">
                                <li>
                                    <i class="fas fa-building"></i><a href="#menu-top" class="open">칠판 그룹</a>
                                    <ul id="menu-top">
                                        <li>
                                            <a href="#subMenu1" id="D4" class="open"><i class="fas fa-plus-square"></i> 개발</a>
                                            <ul id="subMenu1">
                                                <li><i class="fas fa-user-tie"></i> <a>주다빈</a></li>
                                                <li><i class="fas fa-user-tie"></i> <a>주다빈</a></li>
                                            </ul>
                                        </li>
                                        <li>
                                            <a href="#subMenu2" id="D5" class="open"><i class="fas fa-plus-square"></i> 디자인</a>
                                            <ul id="subMenu2">
                                                <li><i class="fas fa-user-tie"></i> <a>주다빈</a></li>
                                            </ul>
                                        </li>
                                        <li>
                                            <a href="#subMenu3" class="open"><i class="fas fa-plus-square"></i> 전산</a>
                                            <ul id="subMenu3"></ul>
                                        </li>
                                        <li>
                                            <a class="open"><i class="fas fa-plus-square"></i> 인사</a>
                                            <ul id="subMenu4"></ul>
                                        </li>
                                        <li class="end">
                                            <a class="open"><i class="fas fa-plus-square"></i> 총무</a>
                                            <ul id="subMenu5"></ul>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        
                        <div id="infor-div" class="float">
                            <div id="infor-list" class="float">
                            <p>부서명</p><br>
                            <p>부서코드</p><br>
                            </div>
                            <div>
                                <p><span>개발</span><input type="text" class="deptName"/><i class="fas fa-pen dept-update"></i></p><br>
                                <p>D4</p><br>
                            </div>
                            <p>부서원</p>
                            <form id="change-form">
                                <table>    
                                    <tr>
                                        <td><input type="checkbox" name="memNo" value="210126"/>
                                        <td>주다빈</td>
                                        <td>사원</td>
                                    </tr>
                                </table>
                                <div id="positionChange">
                                   <select name="deptCode">
                                       <option value=""></option>
                                       <option value="D1">인 &nbsp;사</option>
                                        <option value="D2">총 &nbsp;무</option>
                                        <option value="D3">전 &nbsp;산</option>
                                        <option value="D4">개 &nbsp;발</option>
                                        <option value="D5">디자인</option>
                                   </select>
                                    <button type="button" id="change-btn">부서이동</button>
                                </div>
                            </form>
                        </div>
                    </div>
						
						
						<!----------------------------------->
					</div>
				</div>
			</div>
		</div>
		
		<div id="modal">
        <div class="modal-content">
            <div class="exit-icon"><i class="far fa-times-circle"></i></div>

            <div id="modal-left" class="float">
                <p>부서명</p><br>
                <p>부서코드 <i class="fas fa-question-circle" title="예) D1 또는 P3, 중복비허용"></i></p>
            </div>
            <form>
                <div id="modal-right">
                    <p><input type="text" name="deptName"/></p><br>
                    <p><input type="text" name="deptCode"/></p>
                </div>
                <button id="modal_close_btn">생성</button>
            </form>
        </div>
   
        <div class="modal-layer"></div>
    </div>

	<!-- 자바 스크립트    -->
	<script type="text/javascript" src="/resources/js/header&sideNavi.js"></script>
	
	<script>
        $(function(){
            // 조직도 셋팅
            var opener = $("a.open");
            var nested = $("a.open").parent().find("li");
            var nestedCont = $("li > ul > li").parent(); // ul
            var person = $('.fa-user-tie').parent(); // 사원
            nestedCont.hide();
            $('#menu-top').show(); // 칠판 그룹
            person.addClass('member'); // 사원 li 에 class="member" 추가
            $("li:last-child").addClass("end"); // 마지막 li에 class="end" 추가
            $('#infor-div').hide();
            $("a.open").each(function () {
                $(this).on( "click", treeControl );
            });
            
            var deptCode = ""; // 부서 코드 
            function treeControl (e) {
                deptCode = $(this).attr('id');
                alert(deptCode);
                
                if(deptCode!=null){
                    //$.ajax(); 여기서 아작스처리해주기!!
                    $('#infor-div').show(); // 정보 div 열기
                }
                
                $('a').css('background-color',''); // 모든 a 태그 배경 삭제
                $(this).css('background-color','#E7E0E8'); // 해당 a 태그 배경 색칠
                
                $(this).next().show();
                //$(this).prev().toggleClass("close");
                $(this).toggleClass("close");
                
                $(this).children('i').removeClass('fa-plus-square');
                $(this).children('i').addClass('fa-minus-square');

                if (! $(this).hasClass("close")) {
                    $(this).next().hide();
                    
                    $(this).children('i').removeClass('fa-minus-square');
                    $(this).children('i').addClass('fa-plus-square');
                }
                e.preventDefault();
           }
            
            // 부서 추가
            $('#addBtn').click(function(){
                $('#modal').show();
                
            });
            
            // 부서 삭제
            $('#delBtn').click(function(){
                alert(deptCode);
                if(confirm('해당 부서를 정말 삭제하시겠습니까?')){
                    //$.ajax();
                }
            });
            
            // 부서 이름 변경
            $('.dept-update').click(function(){
                
                var newDeptName = $(this).prev().val();
                var deptCode = $(this).parent().next().next().text();
                
                if($(this).attr('class').indexOf('fa-pen')>-1){
                    $(this).removeClass('fa-pen').addClass('fa-check-circle').prev().show('10000').focus().prev().hide();
                    
                    
                }else{
                    // ajax 처리
                    
                    
                }
                
                
            });
            
            // 부서 이름 변경 취소
            $('body').click(function(e){
                var $tgPoint = $(e.target);
                var $popCallBtn = $tgPoint.hasClass('fas')
                var $popArea = $tgPoint.hasClass('deptName')
                if($('.deptName').css('display') != 'none'){
                    if ( !$popCallBtn && !$popArea ) {
                        $('.dept-update').removeClass('fa-check-circle').addClass('fa-pen').prev().hide('10000').prev().show();
                    }
                }
            });
            
            // 부서 이동 btn
            $('#change-btn').click(function(){
                if(confirm('해당 사원의 부서를 이동하시겠습니까?')){
                    $('#change-form').submit();
                }
            });
            
            // 모달 닫기
            $('.fa-times-circle').click(function(){
                $('#modal').hide();
                $('#modal input').val('');
            });
            
            

        })
        
            
       
    </script>  

	</div>
</body>
</html>