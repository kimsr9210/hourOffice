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
#photo {
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
</style>

<body>

	<div id="wrap">
		<%@ include file="/WEB-INF/views/common/header.jsp"%>
		<div id="contentsBox">
			<%@ include file="/WEB-INF/views/common/sideNavi.jsp"%>

			<div id="contents">
				<div id="contentsDetail" class="clearfix">



					<div id="TitleName">
						<!--여기서 각자 id 만드시면 됩니다-->
						연차내역
						<!----------------------------------->
					</div>
					<div id="TitleContents">
						<!--여기서 각자 id 만드시면 됩니다-->

                       
        <!--border="1px"-->                
         <table width="80%" height="600px" style="text-align:center;" id="hi">
         <tr>
           <td width="20%"> </td>
           <td width="20%" ></td>
           <td width="20%" ></td>
           <td width="20%" ></td> 
           <td width="20%" ><input type="submit" id="change" value="수정"/> 
               <input type="reset" id="cxlbtn" value="취소"/></td>
         </tr>
             
        <tr>
           <td  rowspan="5">
               <div id="photo" src="" style="margin:30px"></div>     
        
        <!--  파일등록-->
        <form action="" method="post" enctype="multipart/form-data">
        <input type="file" id="pic" value="사진선택" />
        <input type="submit" value="등록" id="upload" />
        </form>
             
            
            </td>
           <th>사번</th>
           <td></td>
           <td></td>
           <td></td>
         </tr>
          
         <tr>    
           <th>성명</th>
           <td></td>
           <td></td>
           <td></td>
         </tr>       
             
          <tr>
           
           <th>부서</th>
           <td></td>
           <td></td>
           <td></td>
         </tr>           
             
          <tr>
           
           <th>직위</th>
           <td></td>
           <td></td>
           <td></td>
         </tr>                   
             
         <tr>
           
           <th>내선번호</th>
           <td></td>
           <td></td>
           <td></td>
         </tr> 
         
         <form action="" method="post">   
           <tr>
           <td></td>
           <th>휴대전화번호</th>
           <td><input type="text"></td>
           <td></td>
           <td></td>
         </tr>          
             
          <tr>
           <td></td>
           <th>이메일</th>
           <td><input type="text"></td>
           <td></td>
           <td></td>
         </tr>
             
           <tr>
           <td></td>
           <th>주소</th>
           <td><input type="text"></td>
           <td></td>
           <td></td>
         </tr></form> 
            
        <tr>
           <td></td>
           <th>아이디</th>
           <td><input type="text"></td>
           <td><input type="submit" id="checkbtn" value="중복확인" style="float: left;"/></td>
           <td></td>
         </tr>        
             
         <tr>
           <td></td>
           <th>비밀번호</th>
           <td><input type="password"></td>
           <td><input type="submit" id="passbtn" value="비밀번호 변경" style="float: left;"/> </td>
           <td></td>
         </tr> 
        </table><br><br><br>
                        
                        


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