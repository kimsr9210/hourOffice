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
<script src="https://code.jquery.com/jquery-3.5.1.js"
	integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
	crossorigin="anonymous"></script>

<!-- CSS -->
<link rel="stylesheet" type="text/css"
	href="/resources/css/header&sideNavi.css" />

</head>

<style>
.sbbtn{background-color:#1D9F8E; color:white; border: 0; width: 50px; height: 25px;}
               
tr{height: 30px;}
select{height: 25px;}
#search{height: 25px;}
</style>

<body>
	
	<% 
		//jsp 페이지에서 사용하기 위하여 데이터를 꺼내는 작업
		//어레이리스트는 오브젝트 타입 , 다운캐스팅을 해줘야한다.   (ArrayList<Member>)
		ArrayList<Member> list  = (ArrayList<Member>)request.getAttribute("list");
		Member sessionMember = (Member)session.getAttribute("member");
	%>

	<div id="wrap">
		<%@ include file="/WEB-INF/views/common/header.jsp"%>
		<div id="contentsBox">
			<%@ include file="/WEB-INF/views/common/sideNavi.jsp"%>

			<div id="contents">
				<div id="contentsDetail" class="clearfix">



					<div id="TitleName">
						<!--여기서 각자 id 만드시면 됩니다-->
						사내주소록
						<!----------------------------------->
					</div>
					<div id="TitleContents">
						<!--여기서 각자 id 만드시면 됩니다-->

</div>
                    <div id="TitleContents">
                        <!--여기서 각자 id 만드시면 됩니다-->
                        
        <table width="100%" style="margin:auto;">
                            
        <tr style="text-align:right;">
            <td>
                <form action="/addbookSearch.ho" method="get">
                    <select name="selectBox">
                    	<option value="" selected>전체</option>
                        <option value="name">이름</option>
                        <option value="dept">부서</option>
                        <option value="position">직책</option>
                    </select>
                    <input type="text" id="search" name="searchText" />
                    <input type="submit" class="sbbtn" name="searchBtn" value="검색" style="border-radius: 5px;"/>
                </form>
            </td>
        </tr>
    </table>
    <br><br>

    <table border="1px" width="100%" style="text-align:center; margin:auto; border-collapse:collapse;">
        <tr style="background-color:#1D9F8E; color:white;">
        
  
            <th>프로필</th>
            <th>이름</th>
            <th>소속부서</th>
            <th>직급</th>
            <th>내선번호</th>
            <th>휴대폰</th>
            <th>이메일</th>
        </tr>

        <!-- 반복문 for 작성 -->
        <!-- 탈퇴자는 리스트에서 안보이게 만들어야됨 -->
        <%for(Member m : list) {%>
        <tr>
            <td>사진</td>
            <td><%=m.getMemName() %></td>
            <td><%=m.getDeptName() %></td>
            <td><%=m.getMemPosition() %></td>
            <td><%=m.getMemTell() %></td>
            <td><%=m.getMemPhone() %></td>
            <td><%=m.getMemEmail() %></td>
        </tr>
		<%} %>


    </table><br>
    
    <p style="text-align: center;"> 1 2 3 4 5 ></p>
    <div id="pageNavi">${pageNavi }</div>              


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