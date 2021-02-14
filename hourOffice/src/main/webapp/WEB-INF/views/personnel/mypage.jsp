<%@page import="kr.or.houroffice.personnel.model.vo.MemDept"%>
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
<script src="https://code.jquery.com/jquery-3.5.1.js"
	integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
	crossorigin="anonymous"></script>

<!-- CSS -->
<link rel="stylesheet" type="text/css"
	href="/resources/css/header&sideNavi.css" />
	
<!-- 주소찾기 다음 API -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>	

</head>

<style>
.photo {
	border: 1px #aaa solid;
	width: 170px;
	height: 180px;
	margin: 0px auto;
}

#change {
	background-color: #1D9F8E;
	color: white;
	border: 0;
	border-radius: 5px;
	width: 50px;
	height: 25px;
}

#passbtn {
	background-color: #1D9F8E;
	color: white;
	border: 0;
	border-radius: 5px;
	width: 100px;
	height: 25px;
}

#checkbtn {
	background-color: #1D9F8E;
	color: white;
	border: 0;
	border-radius: 5px;
	width: 100px;
	height: 25px;
}

#cxlbtn {
	background-color: #FF6363;
	color: white;
	border: 0;
	border-radius: 5px;
	width: 50px;
	height: 25px;
}

#upload {
	background-color: #1D9F8E;
	color: white;
	border: 0;
	border-radius: 5px;
	width: 50px;
	height: 25px;
}

#hi {
	margin: 0 auto;
}

th {
	background: #eee;
	height: 50px;
}

input{height:20px;
width: 200px;}

#search{
	float: left;
	background-color: #1D9F8E;
	color: white;
	border: 0;
	border-radius: 5px;
	width: 100px;
	height: 25px;
}
</style>

<script>
	$( function() {
		$("#change").click(function(){
			//$(".text_span").css("display","none");
			//$(".text_input").removeAttr("style");
			
			var addPh = $("#addPh").val();
			var addEmail = $("#addEmail").val();
			var addAddress = $("#addAddress").val();
			var addrInput = $("#addrInput").val();
			
			var param = "ph="+addPh+
			"&email="+addEmail+
			"&addrInput="+addrInput+
			"&address="+addAddress;
			
			$.ajax({
				url : "/mypageChange.ho?"+param,
				type : "get",
				success : function(data){
					console.log("서버 호출 완료");
				},
				error : function(e){
					console.log("서버 호출 처리 불가");
				}
			});
			
		});
	});
		 
</script>



<body>

	<% MemDept md  = (MemDept)request.getAttribute("memDept"); %>


	<div id="wrap">
		<%@ include file="/WEB-INF/views/common/header.jsp"%>
		<div id="contentsBox">
			<%@ include file="/WEB-INF/views/common/sideNavi.jsp"%>

			<div id="contents">
				<div id="contentsDetail" class="clearfix">



					<div id="TitleName">
						<!--여기서 각자 id 만드시면 됩니다-->
						내 개인정보
						<!----------------------------------->
					</div>
					<div id="TitleContents">
						<!--여기서 각자 id 만드시면 됩니다-->


						<!--border="1px"-->
						<table width="80%" height="600px" style="text-align: center;"
							id="hi">
							<tr>
								<td width="20%"></td>
								<td width="20%"></td>
								<td width="30%"></td>
								<td width="10%"></td>
								<td width="20%">
									<input type="button" id="change" value="수정" /> 
									<input type="reset" id="cxlbtn" value="취소" />
								</td>
							</tr>
							
							<% if(md == null){ %>
								<tr>
									<td rowspan="5">회원 정보가 없습니다.</td>
								</tr>
							<% } else { %>

							<tr>
								<!--  사진등록-->
								<td rowspan="5">
					
									<div class="photo" style="margin: 30px"><img src="/resources/images/profile/<%=md.getMemProfile()%>" class="photo"></div> 
									<form action="" method="post" enctype="multipart/form-data">
										<input type="file" id="pic"/>
										<input type="submit" value="등록" id="upload" />
									</form>
								</td>
								<th>사번</th>
								<td><%=md.getMemNo() %></td>
								<td></td>
								<td></td>
							</tr>

							<tr>
								<th>성명</th>
								<td><%=md.getMemName() %></td>
								<td></td>
								<td></td>
							</tr>

							<tr>

								<th>부서</th>
								<td><%=md.getDeptName() %></td>
								<td></td>
								<td></td>
							</tr>

							<tr>

								<th>직위</th>
								<td><%=md.getMemPosition() %></td>
								<td></td>
								<td></td>
							</tr>

							<tr>

								<th>내선번호</th>
								<td><%=md.getMemTell() %></td>
								<td></td>
								<td></td>
							</tr>

							<form action="mypageChange.ho" method="post">
								<tr>
									<td></td>
									<th>휴대전화번호</th>
									<td>
										<!-- <span class="text_span"><%=md.getMemPhone() %></span> -->
										<input type="text" class="text_input" id="addPh" value="<%=md.getMemPhone() %>">
									</td>
									
									<td></td>
									<td></td>
								</tr>

								<tr>
									<td></td>
									<th>이메일</th>
									<td>
										<!-- <span class="text_span"><%=md.getMemEmail() %></span>
										<input type="text" class="text_input"  value="<%=md.getMemEmail() %>" style="display:none;">-->
										<input type="text" class="text_input" id="addEmail" value="<%=md.getMemEmail() %>">
									</td>
									<td></td>
									<td></td>
								</tr>

								<tr>
									<td></td>
									<th>주소</th>
									<td>
									<input type="text" name="memAddress1" id="addrInput" readonly  value="<%=md.getMemAddress().substring(0, 7) %>" ><br>
                               		<input type="text" name="memAddress2" class="inputStyle" id="addAddress" value="<%=md.getMemAddress().substring(7) %>" >
									</td>
									<td><button type="button" onclick="searchAddr()" id="search">검색</button></td>
									<td></td>
								</tr>
							</form>


							<tr>
								<td></td>
								<th>비밀번호</th>
								<form action="/passwordChange.ho" method="get">
								<td><input type="password" value="<%=md.getMemPwd().substring(0, 20)%>" /></td>
								<td><input type="submit" id="passbtn" value="비밀번호 변경" style="float: left;" /></td></form>
								<td></td>
							</tr>
							
							<% } %>
						</table>
						<br>
						<br>
						<br>




						<!----------------------------------->
					</div>

				</div>
			</div>
		</div>

		
		<script> //다음 api
		function searchAddr(){
        	new daum.Postcode({
		        oncomplete: function(data) {
		            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.

		        	// 각 주소의 노출 규칙에 따라 주소를 조합한다.
	                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	                var addr = ''; // 주소 변수
	                var extraAddr = ''; // 참고항목 변수

	                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
	                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
	                    addr = data.roadAddress;
	                } else { // 사용자가 지번 주소를 선택했을 경우(J)
	                    addr = data.jibunAddress;
	                }

	                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
	                if(data.userSelectedType === 'R'){
	                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                        extraAddr += data.bname;
	                    }
	                    // 건물명이 있고, 공동주택일 경우 추가한다.
	                    if(data.buildingName !== '' && data.apartment === 'Y'){
	                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                    }
	                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	                    if(extraAddr !== ''){
	                        extraAddr = ' (' + extraAddr + ')';
	                    }
	                    // 조합된 참고항목을 해당 필드에 넣는다.
	                    //document.getElementById("sample6_extraAddress").value = extraAddr;
	                
	                } else {
	                    //document.getElementById("sample6_extraAddress").value = '';
	                }

	                // 우편번호와 주소 정보를 해당 필드에 넣는다.
	                //document.getElementById('addrInput').value = data.zonecode;
	                $('#addrInput').val(data.zonecode);
	                //document.getElementById("sample6_address").value = addr;
        			$('#addrInput').siblings('input').val(addr+extraAddr);
	                // 커서를 상세주소 필드로 이동한다.
	                //document.getElementById("sample6_detailAddress").focus();
		        }
		    }).open();
        }
		</script>

		<!-- 자바 스크립트    -->
		<script type="text/javascript" src="/resources/js/header&sideNavi.js"></script>

	</div>

	</div>
</body>
</html>


</body>
</html>