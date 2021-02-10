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

</head>

<style>
.photo {
	border: 1px #aaa solid;
	width: 180px;
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

input{height:20px;}
</style>

<script>
	$( function() {
		$("#change").click(function(){
			$(".text_span").css("display","none");
			$(".text_input").removeAttr("style");
		})
	})
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
								<td width="20%"></td>
								<td width="20%"></td>
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
									<div class="photo" style="margin: 30px"><img src="/resources/images/profile/2102001_조로리.jpeg" class="photo"></div> 
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

							<form action="" method="post">
								<tr>
									<td></td>
									<th>휴대전화번호</th>
									<td><%=md.getMemPhone() %><input type="hidden"></td>
									<td></td>
									<td></td>
								</tr>

								<tr>
									<td></td>
									<th>이메일</th>
									<td>
										<span class="text_span"><%=md.getMemEmail() %></span>
										<input type="text" class="text_input" style="display:none;">
									</td>
									<td></td>
									<td></td>
								</tr>

								<tr>
									<td></td>
									<th>주소</th>
									<td><span class="text_span"><%=md.getMemAddress() %></span><input type="text" class="text_input" style="display:none;"></td>
									<td></td>
									<td></td>
								</tr>
							</form>

							<tr>
								<td></td>
								<th>아이디</th>
								<td><input type="text"></td>
								<td><input type="submit" id="checkbtn" value="중복확인"
									style="float: left;" /></td>
								<td></td>
							</tr>

							<tr>
								<td></td>
								<th>비밀번호</th>
								<td><input type="password"></td>
								<td><input type="submit" id="passbtn" value="비밀번호 변경"
									style="float: left;" /></td>
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

		<!-- 자바 스크립트    -->
		<script type="text/javascript" src="/resources/js/header&sideNavi.js"></script>

	</div>

	</div>
</body>
</html>


</body>
</html>