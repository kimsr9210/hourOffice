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
	
	<!-- 헤더 &네비 CSS -->
	<link rel="stylesheet" type="text/css" href="/resources/css/header&sideNavi.css" />
	<!-- 관리자 탭 공통 CSS -->
	<link rel="stylesheet" type="text/css" href="/resources/css/admin_tap/adminTapCommon.css" />
	<!-- CSS -->
	<link rel="stylesheet" type="text/css" href="/resources/css/admin_tap/organizationChart.css" />
	
	<style>
        /*div{
            border: 1px solid #FFD8D8;
        }*/
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
                            <button type="button" id="addBtn">+</button> <button type="button" class="delBtn">-</button>
                        </div>
                        <div id="chart" class="float">
                            <ul id="treeMenu">
                                <li>
                                    <i class="fas fa-building i-icon"></i><a href="#menu-top" class="open">칠판 그룹</a>
                                    <ul id="menu-top">
                                        <li>
                                            <a href="#subMenu1" id="D4" class="open"><i class="fas fa-plus-square i-icon"></i> 개발</a>
                                            <ul id="subMenu1">
                                                <li><i class="fas fa-user-tie i-icon"></i> <a>주다빈</a></li>
                                                <li><i class="fas fa-user-tie i-icon"></i> <a>주다빈</a></li>
                                            </ul>
                                        </li>
                                        <li>
                                            <a href="#subMenu2" id="D5" class="open"><i class="fas fa-plus-square i-icon"></i> 디자인</a>
                                            <ul id="subMenu2">
                                                <li><i class="fas fa-user-tie i-icon"></i> <a>주다빈</a></li>
                                            </ul>
                                        </li>
                                        <li>
                                            <a href="#subMenu3" class="open"><i class="fas fa-plus-square i-icon"></i> 전산</a>
                                            <ul id="subMenu3"></ul>
                                        </li>
                                        <li>
                                            <a class="open"><i class="fas fa-plus-square i-icon"></i> 인사</a>
                                            <ul id="subMenu4"></ul>
                                        </li>
                                        <li class="end">
                                            <a class="open"><i class="fas fa-plus-square i-icon"></i> 총무</a>
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
                                <p><span>개발</span><input type="text" class="deptName"/><i class="fas fa-pen dept-update i-icon"></i></p><br>
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
						
						
	<div id="modal">
        <div class="modal-content">
            <div class="exit-icon"><i class="far fa-times-circle i-icon"></i></div>

            <div id="modal-left" class="float">
                <p>부서명</p><br>
                <p>부서코드 <i class="fas fa-question-circle i-icon" title="예) D1 또는 P3, 중복비허용"></i></p>
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
						
						<!----------------------------------->
					</div>
				</div>
			</div>
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
                $(this).toggleClass("close");
                
                $(this).children('.i-icon').removeClass('fa-plus-square');
                $(this).children('.i-icon').addClass('fa-minus-square');

                if (! $(this).hasClass("close")) {
                    $(this).next().hide();
                    
                    $(this).children('.i-icon').removeClass('fa-minus-square');
                    $(this).children('.i-icon').addClass('fa-plus-square');
                }
                e.preventDefault();
           }
            
            // 부서 추가
            $('#addBtn').click(function(){
                $('#modal').show();
                
            });
            
            // 부서 삭제
            $('.delBtn').click(function(){
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
                var $popCallBtn = $(e.target).hasClass('dept-update')
                var $popArea = $(e.target).hasClass('deptName')
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