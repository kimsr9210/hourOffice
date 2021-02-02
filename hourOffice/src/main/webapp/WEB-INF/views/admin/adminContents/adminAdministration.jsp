<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>H:our Office</title>

	<!-- 폰트 어썸 CDN -->
	<script src="https://use.fontawesome.com/releases/v5.8.2/js/all.js"></script>
	<!-- 제이쿼리 CDN -->
	<script src="https://code.jquery.com/jquery-3.5.1.js"integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="crossorigin="anonymous"></script>

	<!-- 관리자 페이지 공통 css -->
	<link rel="stylesheet" type="text/css" href="/resources/css/admin/style.css" />
	
	<!-- 관리자 페이지 관리자 관리 css -->
	<link rel="stylesheet" type="text/css" href="/resources/css/admin/administration.css" />

</head>
<body>
	<div id="wrap">
		<%@ include file ="../adminForm/header.jsp" %>
		
		<div id="contentsBox">
			<%@ include file ="../adminForm/sideNaviBar.jsp" %>
			
			<div id="contents">
				<div id="contentsDetail" class="clearfix">
					<div id="TitleName">
						관리자 관리
    				</div>
    				<div id="TitleContents">
    					<div class="adminSpace">
                            <span class="adminName">전산관리자</span>
                            <hr class="adminLine"/>
                            <span class="adminTitle">기본 관리</span>
                            <span class="adminText">관리자 페이지 관리, 메뉴 관리 등을 관리합니다.</span>
                            
                            <div class="buttonSet">
                                <button id="adminAgree" class="agreeButtonType">추가</button>
                                <button class="refuseButtonType">삭제</button>
                            </div>
                            <table id="adminList" class="tblStyle">
                                <tr>
                                    <th><input type="checkbox"/></th>
                                    <th>이름 (이메일)</th>
                                    <th>부서</th>
                                    <th>관리자 등록일</th>
                                </tr>
                                <tr>
                                    <td><input type="checkbox"/></td>
                                    <td>다주빈 (zoodabin@hourOffice.com)</td>
                                    <td>전산팀</td>
                                    <td>2020-02-02</td>
                                </tr>
                            </table>
                        </div>                     
                        <div class="adminSpace">
                            <span class="adminName">인사관리자</span>
                            <hr class="adminLine"/>
                            <span class="adminTitle">조직 관리</span>
                            <span class="adminText">멤버, 부서, 직위 등 조직을 구성/관리합니다.</span>
                            <div class="buttonSet">
                                <button class="agreeButtonType">추가</button>
                                <button class="refuseButtonType">삭제</button>
                            </div>
                            <table id="personnelList" class="tblStyle">
                                <tr>
                                    <th><input type="checkbox"/></th>
                                    <th>이름 (이메일)</th>
                                    <th>부서</th>
                                    <th>관리자 등록일</th>
                                </tr>
                                <tr>
                                    <td><input type="checkbox"/></td>
                                    <td>안인사 (hello@hourOffice.com)</td>
                                    <td>인사팀</td>
                                    <td>2020-02-18</td>
                                </tr>
                            </table>
                        </div>                       
                       <div class="adminSpace">
                            <span class="adminName">총무관리자</span>
                            <hr class="adminLine"/>
                            <span class="adminTitle">문서 관리</span>
                            <span class="adminText">사내 규정, 문서 등을 관리합니다.</span>
                            <div class="buttonSet">
                                <button class="agreeButtonType">추가</button>
                                <button class="refuseButtonType">삭제</button>
                            </div>
                            <table id="generalList" class="tblStyle">
                                <tr>
                                    <th><input type="checkbox"/></th>
                                    <th>이름 (이메일)</th>
                                    <th>부서</th>
                                    <th>관리자 등록일</th>
                                </tr>
                                <tr>
                                    <td><input type="checkbox"/></td>
                                    <td>정총무 (money@hourOffice.com)</td>
                                    <td>총무팀</td>
                                    <td>2018-12-12</td>
                                </tr>
                            </table>
                        </div>                       
                        <div id="modal">
							<div class="modal-content">
								<div class="exit-icon"><i class="iModal far fa-times-circle"></i></div>
								<div class="searchStyle">
									<input type="text" name="#"/>
									<button><i class="fas fa-search"></i></button>
								</div>
								<form>			
									<table class="modal-table">
										<tr>
											<th></th>
											<th>사번</th>
											<th>이름</th>
											<th>직위</th>
										</tr>				
										<tr>
											<td><input type="checkbox" name="#"/></td>
											<td>M1000</td>
											<td>장진장</td>
											<td>사원</td>	
										</tr>        
									</table>
								</form>
								<button class="agreeButtonType">저장</button>
							</div>
							<div class="modal-layer"></div>
						</div>                                               
    				</div>
				</div>
			</div>
		</div>
	</div>
		
	<script type='text/javascript'>	
		$(function(){
			// 전산관리자 checkbox 전부 누르기		
			$('#adminList').find('input').first().click(function(){
							
				if($(this).prop('checked')) { 
					$('#adminList input').each(function(){
						$(this).prop('checked',true);
					});
				} else {
					$('#adminList input').each(function(){
						$(this).prop('checked',false);
					});
				}	
			});
			
			// 인사관리자 checkbox 전부 누르기		
			$('#personnelList').find('input').first().click(function(){
							
				if($(this).prop('checked')) { 
					$('#personnelList input').each(function(){
						$(this).prop('checked',true);
					});
				} else {
					$('#personnelList input').each(function(){
						$(this).prop('checked',false);
					});
				}	
			});
			
			// 총무관리자 checkbox 전부 누르기		
			$('#generalList').find('input').first().click(function(){
							
				if($(this).prop('checked')) { 
					$('#generalList input').each(function(){
						$(this).prop('checked',true);
					});
				} else {
					$('#generalList input').each(function(){
						$(this).prop('checked',false);
					});
				}	
			});
			
			// 모달 열기
			$('.agreeButtonType').click(function(){
				var modatop = $(this).offset().top;
				if($(this).parents('.adminSpace').children().first().text()=='전산관리자') {
					$('#modal').css('top',modatop);
				} else if ($(this).parents('.adminSpace').children().first().text()=='인사관리자') {
					$('#modal').css('top',modatop);
				} else if ($(this).parents('.adminSpace').children().first().text()=='총무관리자') {
					$('#modal').css('top',modatop);
				};
				$('#modal').show();				
			});			
			// 모달 닫기
            $('#modal .iModal').click(function(){
                $('#modal').hide();
                $('#modal input').val('');
            });
			
		});
		
		$(document).ready(function(){
			$adminUpdate = $('#adminUpdate');
	        $adminUpdate.children().eq(2).children().addClass('fa-rotate-180');		
			$adminUpdate.removeClass('hoverColor').addClass('click');
	        $adminUpdate.children().eq(2).children().attr('class','iArrow fas fa-angle-left');		

		});
		

	</script>
</body>
</html>