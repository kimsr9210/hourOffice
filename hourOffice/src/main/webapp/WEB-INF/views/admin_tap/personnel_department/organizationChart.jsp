<%@page import="kr.or.houroffice.member.model.vo.Member"%>
<%@page import="java.util.ArrayList"%>
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
						<% ArrayList<Member> list = (ArrayList<Member>)request.getAttribute("list"); %>
						
						<div id="contWrapper">
                        <div id="btnDiv">
                            <button type="button" id="addBtn">+</button> <button type="button" class="delBtn">-</button>
                        </div>
                        <div id="chart" class="float">
                            <ul id="treeMenu">
                                <li>
                                    <i class="fas fa-building i-icon"></i><a href="#menu-top" class="open">칠판 그룹</a>
                                    <ul id="menu-top">
                          			<% ArrayList<String> deptCodeList = new ArrayList<String>(); %>
									<% for(Member member : list){ %>
									<% if(!deptCodeList.contains(member.getDeptCode()) && member.getDeptCode()!=null){ %>
									<% deptCodeList.add(member.getDeptCode()); %>	
                                        <li>
                                            <a href="#subMenu<%=member.getDeptCode() %>" id="<%=member.getDeptCode() %>" class="open"><i class="fas fa-plus-square i-icon"></i> <%=member.getDeptName() %></a>
                                            <ul id="subMenu<%=member.getDeptCode() %>">
                                	<% for(Member memInfo : list){ %>

                                	<% 	if(member.getDeptCode().equals(memInfo.getDeptCode())){ %>
                                                <li><i class="fas fa-user-tie i-icon"></i> <a><%=memInfo.getMemName() %></a></li>
                                	<% 	} %>
                  
                                	<% } %>
                                	
                                            </ul>
                                        </li>
                                        
                                	<% } %>
									<% } %>     
                                        
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
                                <p><span id="deptName-InInfor">(부서명)</span><input type="text" class="deptName"/><i class="fas fa-pen dept-update i-icon"></i></p><br>
                                <p id="deptCode-InInfor">(부서코드)</p><br>
                            </div>
                            <p>부서원</p>
                            <form id="change-form">
                                <table>    
                                    <tr>
                                        <td><input type="checkbox" name="memNo"/>
                                        <td>(사원명)</td>
                                        <td>(직위)</td>
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
                
                if(deptCode!=null){
                	
                	
                <% deptCodeList = new ArrayList<String>(); %>
                <% for(Member member : list){ %>
                <% if(!deptCodeList.contains(member.getDeptCode()) && member.getDeptCode()!=null){ %>
                <% deptCodeList.add(member.getDeptCode()); // 부서코드 중복비허용을 위한 코드 %>
                
                	if(deptCode=='<%=member.getDeptCode() %>'){
                		
                		var tblText = '<tr><td><input type="checkbox" name="memNo"/></td><td></td><td></td></tr>';
                		$('#infor-div #deptName-InInfor').text('<%=member.getDeptName() %>');
                		$('#infor-div #deptCode-InInfor').text('<%=member.getDeptCode() %>');
                		<% int childNum = 1;%>
                <% for(Member memInfo : list){ %>
                <% 	if(member.getDeptCode().equals(memInfo.getDeptCode())){ %>
                		$('#infor-div #change-form > table').html(tblText);
                		tblText += '<tr><td><input type="checkbox" name="memNo"/></td><td></td><td></td></tr>';
                		<% childNum++; System.out.println(childNum);%>
                <% }// if %>
                <% }// for %>
               		 	tblText = '';
                	}// if - 추출한 부서코드가 member 부서코드랑 같을 때 - tr을 반복 추가하는 코드
                	
                <% }// if - 부서코드 중복비허용 코드%>
                <% }// for %>
                // 각 부서 정보 내의 사원 리스트 정보 추가하기
                var trNum = 1;
            	<% for(Member memInfor : list){ %>
            		if(deptCode=='<%=memInfor.getDeptCode() %>'){
            		
	            		$('#infor-div #change-form tr:nth-child('+trNum+')').find('td:first-child>input').val('<%=memInfor.getMemNo() %>');
	        			$('#infor-div #change-form tr:nth-child('+trNum+')').find('td:nth-child(2)').text('<%=memInfor.getMemName() %>');
	        			$('#infor-div #change-form tr:nth-child('+trNum+')').find('td:last-child').text('<%=memInfor.getMemPosition() %>');
	        				
            		trNum++;
            		}
            	<% } %>
            	//---end
                
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