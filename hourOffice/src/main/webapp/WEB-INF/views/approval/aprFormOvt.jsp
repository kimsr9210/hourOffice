<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.ArrayList"%>
<%@ page import="kr.or.houroffice.approval.model.vo.AprLineMember"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>H:our Office</title>
<!-- 폰트어썸 -->
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>

<!--jQuery CDN-->
<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>

<!-- CSS -->
<link rel="stylesheet" type="text/css" href="/resources/css/header&sideNavi.css" />
<link rel="stylesheet" type="text/css" href="/resources/css/approval/apr_form.css" />

</head>
<body>
<div id="wrap">
<%
			String today = (String) request.getAttribute("today");
			ArrayList<AprLineMember> aprLineList = (ArrayList<AprLineMember>) request.getAttribute("aprLineList");
		%>
		<%@ include file="/WEB-INF/views/common/header.jsp"%>
		<div id="contentsBox">
			<%@ include file="/WEB-INF/views/common/sideNavi.jsp"%>

			<div id="contents">
				<div id="contentsDetail" class="clearfix">
					<div id="TitleName">
                       전자결재 작성
                    </div>
                    <div id="TitleContents">
                        <div id="docu-type-wrap">
							<label for="docuType">양식 선택 :</label> <select name="docuType"
								id="docu-type" onchange="movePage(this.value);">
								<option value="/aprFormHol.ho">연차신청서</option>
								<option value="/aprFormOvt.ho" selected>연장근무신청서</option>
								<option value="/aprFormLazy.ho" >지각불참사유서</option>
								<option value="/aprFormCCC.ho">법인카드사용신청서</option>
							</select>
						</div>
                        <form action="/insertAprOvt.ho" method="post">
                            <span class="opt-check"><input type="checkbox" name="lockYN"><label for="lockYN">비공개</label></span>
                            <span class="opt-check"><input type="checkbox" name="urgencyYN"><label for="urgencyYN">긴급문서</label></span>
                            <input type="submit" value="작성 완료">
                            <input type="reset" value="작성취소">
                            <div id="title-wrap">
                                <div>문서 제목</div><div><input type="text" name="title"></div>
                            </div>
                            <fieldset id="form-wrap">
                                <div id="form-title">연장근무신청서</div>
                                <table id="docu-info">
                                    <tr>
										<td>기안자</td>
										<td>${sessionScope.member.memName}</td>
									</tr>
									<tr>
										<td>기안부서</td>
										<td><c:choose><c:when test="${sessionScope.member.deptCode eq 'D1 '}">인사부</c:when>
										<c:when test="${sessionScope.member.deptCode eq 'D2 '}">총무부</c:when>
										<c:when test="${sessionScope.member.deptCode eq 'D3 '}">전산부</c:when>
										<c:when test="${sessionScope.member.deptCode eq 'D4 '}">개발부</c:when>
										<c:when test="${sessionScope.member.deptCode eq 'D5 '}">디자인부</c:when>
										<c:otherwise>부서없음</c:otherwise></c:choose></td>
									</tr>
									<tr>
										<td>기안일</td>
										<td><%=today%></td>
									</tr>
                                    <tr>
                                        <td>문서번호</td>
                                        <td></td>
                                    </tr>
                                </table>
                                <table id="apr-line-info">
                                    <tr><td colspan="3">결재선</td></tr>
                                    <tr>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                </table>
                                <table id="con-info">
                                    <tr>
                                        <td>근무 구분</td>
                                        <td>
                                            <input type="radio" name="ovt_type" id="ovt_type_p" value="P" required><label for="hol_type_p"> 연장</label>
                                            <input type="radio" name="ovt_type" id="ovt_type_o" value="O"><label for="hol_type_o"> 야간</label>
                                            <input type="radio" name="ovt_type" id="ovt_type_h" value="H"><label for="hol_type_h">휴일</label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>근무 일시</td>
                                        <td>
                                            <input type="date" required>
                                            <span class="space"></span>
                                            <select name="start_hour" id="start_hour">
                                            <% for(int i=0; i<24; i++){%>
                                                <option><%=i %></option>
											<%} %>
                                            </select>시 
                                               <select name="start_minute" id="start_minute">
                                                <option>00</option>
                                            <% for(int i=10; i<60; i=i+10){%>
                                                <option><%=i %></option>
											<%} %>
                                            </select>분 ~ 
                                            <select name="end_hour" id="end_hour">
                                                <% for(int i=0; i<24; i++){%>
                                                <option><%=i %></option>
											<%} %>
                                            </select>시 
                                               <select name="end_minute" id="end_minute">
                                                <option>00</option>
                                                <% for(int i=10; i<60; i=i+10){%>
                                                <option><%=i %></option>
											<%} %>
                                            </select>분
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>근무 시간</td>
                                        <td>
                                            <input type="number" disabled value="" name="ovtTime"> 시간
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>신청 사유</td>
                                        <td>
                                            <textarea name="reasons" id="reasons" required></textarea>
                                        </td>
                                    </tr>
                                </table>
                            </fieldset>
                            <fieldset id="apr-line-wrap">
                                <div id="line-header">
                                    <span class="line-left">결재선</span>
                                    <span class="line-mid">참조</span>
                                    <span class="line-right">대상</span>
                                </div>
                                <%
									if (!aprLineList.isEmpty()) {
										for (int i = 0; i < aprLineList.size(); i++) {
								%>
								<div class="line-list">
									<span class="line-left"><input type="checkbox" name="aprLine" value="<%=aprLineList.get(i).getMemNo()%>"></span>
									<span class="line-mid"><input type="checkbox" name="aprRef" value="<%=aprLineList.get(i).getMemNo()%>"></span>
									<span class="line-right"><%=aprLineList.get(i).getMemName()%> <%=aprLineList.get(i).getMemPosition()%>(<%=aprLineList.get(i).getDeptName()%>)</span>
								</div>
								<%}//for
								}//if	%>
                            </fieldset>
                        </form>
                    </div>
				</div>
			</div>
		</div>
	</div>

	<!-- 자바 스크립트    -->
	<script type="text/javascript" src="/resources/js/header&sideNavi.js"></script>
	<script>
		$(function() {
			//결재선 선택 처리 //aprLine / apr-line-wrap 이름 유의
			$('input[name=aprLine]').click(function() {
					var $this = $(this);
					var aprLength = $('input[name=aprLine]:checked').length;
					var cidx = $('input[name=aprLine]:checked').index($this);
					var nidx = $('input[name=aprLine]').index($this);

					if ($this.prop('checked')) {
						if (aprLength < 4) {
							for (var i = 0; i < aprLength; i++) {
								$('#apr-line-info tr:nth-child(2) td').eq(i).html($('input[name=aprLine]:checked').eq(i).parent().next().next().html());
							}
						} else {
							alert('결재선은 3개까지만 선택 가능합니다.');
							return false;
						}
					} else {
						for (var i = 0; i < 3; i++) {
							$('#apr-line-info tr:nth-child(2) td').eq(i).html('');
						}
						for (var i = 0; i < aprLength; i++) {
							$('#apr-ine-info tr:nth-child(2) td').eq(i).html($('input[name=aprLine]:checked').eq(i).parent().next().next().html());
						}
					}
				});
			//시간 바꿀때마다 시간 계산
			$('#con-info select').change(function(){
				var startHour = $('#start_hour option:selected').val();
				var startMinute = $('#start_minute option:selected').val();
				var endHour = $('#end_hour option:selected').val();
				var endMinute = $('#end_minute option:selected').val();
				
				if(startMinute=='00') startMinute = 0;
				else Number(startMinute);
				if(endMinute=='00') endMinute = 0;
				else Number(endMinute);
				
				var hour;
				var minute;
				
				if(startHour<endHour){
					hour = endHour - startHour;
				}
				if(endMinute>=startMinute){
					minute = endMinute - startMinute;
				}else {
					minute = (60 + endMinute) - startMinute;
					hour--;
				}
				
				var ovtTime = hour+(minute/60);
				
				$('input[name=ovtTime]').val(ovtTime);
			});
		});
		//페이지 호출 처리
		function movePage(url) {
			location.href = url;
		}
	</script>
</body>
</html>