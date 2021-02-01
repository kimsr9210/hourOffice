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
        #TitleContents *:focus{
            outline: 0;
        }
        #TitleContents input[type=text]{
            height: 38px;
        }
        #TitleContents input[type=text]:focus{
            box-shadow: 0 0 5px 5px #D9E5FF;
            border: 1px solid #A0BAED;
            border-radius: 5px;
            
        }
        #TitleContents img{
            width: 100%; height: 100%;
        }
        /* 모든 버튼 */
        #TitleContents button{
            font-weight: bold;
            padding: 0 10px;
            min-width: 60px;
            height: 35px;
            color: white;
            background-color: #1D9F8E;
            border-radius: 5px;
            border-style: none;
            margin: 5px 5px 0 0;
            box-shadow: 1px 1px 5px #cccccc;
            cursor: pointer;
        }
        /* 취소 버튼 */
        #TitleContents #deleteBtn{
            background-color: #FF6363;
        }
        #TitleContents #wrap{
            min-width: 1400px;
        }
        #TitleContents #contWrapper{
            width: 850px; height: auto;
            margin: 0 auto;
            min-width: 800px;
        }
        
        /* select 태그 디자인*/
        #TitleContents select{
            display:inline-block;
            width: 120px; height: 25px;
            border-radius: 3px;
            background: url(/resources/images/selectarrow.png) 105% center no-repeat;
            /* 화살표 없애기 */
            -webkit-appearance: none;
            -moz-appearance: none;
            appearance: none;
        }
        select::-ms-expand {
           display: none;
        }
        
        #TitleContents #subtitle{
            font-size: 1rem;
        }
        
        /* 컨텐트 div */
        #TitleContents .floatDiv{
            float: left;
            width: 50%;
        }
        /* 오른쪽 div영역 */
        #TitleContents #rightCont{
            padding-top: 27px;
            padding-left: 10%;
            margin-bottom: 60px;
        }
        /* 각각의 정보 div */
        #TitleContents .infoRespective{
            margin: 20px 0;
        }
        /* input 태그 중 text 타입 긴거 */
        #TitleContents .inputStyle{
            border:0;
            width: 330px; height: 35px;
            background-color: #E7E0E8;
            border-radius: 3px;
            margin-top: 5px;
            padding: 0 20px;
            font-size: 1rem
        }
        /* img 태그 div */
        #TitleContents #memProfile{
            width: 200px; height: 230px;
            margin: 0 auto;
            margin-bottom: 50px;
        }
        /* 직위 & 부서 div */
        #TitleContents #position_dept{
            width: 326px;
            margin: 0 auto;
        }
        /* 직위 & 부서 각각의 div */
        #TitleContents .posi_deptDiv{
            float: left;
            margin: 0 10px;
        }
        /* 직위 & 부서 select 태그 */
        #TitleContents .posi_deptSelect{
            width: 140px; height: 39px;
            padding-left: 37px;
            margin-top: 5px;
        }
        /* 생년월일 div */
        #TitleContents #birthDiv{
            float: left;
            width: 66%;
        }
        /* 생년월일 select 태그 */
        #TitleContents .memBirthSelect{
            width: 65px; height: 39px;
            padding-left: 8px;
            margin-top: 5px;
            background: url(/resources/images/selectarrow.png) 120% center no-repeat;
        }
        #TitleContents #birthYear{
            width: 80px;
            background-position: 110%;
        }
        /* 성별 div */
        #TitleContents #genderDiv{
            float: left;
            width: 34%; height: 62px;
            padding-left: 12px;
        }
        /* 성별 input 태그 */
        #TitleContents .genderInput{
            margin: 18px 5px 0 5px;
        }
        /* 현주소 input 태그*/
        #TitleContents #addrInput{
            width: 70px; height: 35px;
            margin-top: 5px;
            text-align: center;
        }
        
        /* 연락처 select & input 태그 */
        #TitleContents #phoneSelect{
            width: 70px; height: 39px;
            padding-left: 14px;
            background: url(/resources/images/selectarrow.png) 120% center no-repeat;
        }
        #TitleContents .phoneInput{
            width: 70px; height: 38px;
            margin-left: 5px;
            margin-top: 5px;
            text-align: center;
        }
        
        
        /* 안쪽 hr */
        #TitleContents .innerHr{
            width: 840px;
            margin: 10px 0;
            border: 1px dashed lightgray;
        }
        /* 바깥 hr */
        #TitleContents .outHr{
            border: 1px solid white;
            margin: 10px 0;
        }
        #TitleContents .outHr:nth-child(4){
            height: 30px;
        }
        /* 학력 */
        #TitleContents #acaInfor{
            width: 92%;
        }
        #TitleContents #acaInfor + div{
            width: 8%; height: 42px;
            padding-top: 11px;
        }
        #TitleContents #schoolNameInput{
            width: 120px;
            margin-top: 5px;
            padding: 0 10px;
        }
        #TitleContents #majorNameInput{
            width: 120px;
            margin-top: 5px;
            padding: 0 10px;
        }
        #TitleContents #gradSelect{
            width: 90px; height: 35px;
            padding-left: 8px;
        }
        /* 자격증 및 면허 */
        #TitleContents #licInfor{
            width: 577px;
        }
        #TitleContents #licInfor + div{
            width: 31.6%; height: 43px;
            padding-top: 11px;
        }
        #TitleContents #licNameInput{
            width: 140px;
            margin-top: 5px;
            padding: 0 10px;
        }
        #TitleContents #licOriginInput{
            width: 140px;
            margin-top: 5px;
            padding: 0 10px;
        }
        /* 경력 */
        #TitleContents #carInfor{
            width: 745px;
        }
        #TitleContents #carInfor + div{
            width: 11.6%; height: 43px;
            padding-top: 11px;
        }
        #TitleContents #carPlaceInput{
            width: 110px;
            margin-top: 5px;
            padding: 0 10px;
        }
        #TitleContents #carPositionInput{
            width: 90px;
            margin-top: 5px;
            padding: 0 10px;
        }
        #TitleContents #carContentInput{
            width: 100px;
            margin-top: 5px;
            padding: 0 10px;
        }
        /* 병역 */
        #TitleContents #milInfor{
            width: 67%;
        }
        #TitleContents #milInfor + div{
            width: 33%; height: 39px;
        }
        #TitleContents #milTypeSelect{
            width: 66px; height: 35px;
            padding-left: 8px;
        }
        #TitleContents #milReasonInput{
            width: 15%;
            margin-top: 5px;
            padding: 0 10px;
        }
        
        /* 기간 input */
        #TitleContents .dateInput{
            width: 118px; height: 38px;
            margin-top: 5px;
            padding-left: 5px;
            font-size: 1.02rem;
        }
        /* 추가 버튼 */
        #TitleContents .plusBtn{
            width: 25px; height: 25px;
            margin-right: 5px;
            color: white;
            text-align: center;
            font-size: 1.1rem;
            font-weight: bold;
            background-color: gold;
            border-radius: 100%;
            cursor: pointer;
        }
        /* 추가취소 버튼 */
        #TitleContents .minusBtn{
            width: 25px; height: 25px;
            color: white;
            text-align: center;
            font-size: 1.1rem;
            font-weight: bold;
            background-color: #FF6363;
            border-radius: 100%;
            cursor: pointer;
        }
        #TitleContents .float{
            float: left;
        }
        /* 저장 버튼들 */
        #TitleContents #saveDiv{
            width: 142px;
            padding-left: 7px;
            margin: 0 auto;
            margin-top: 70px;
        }
    </style>
    
<script>
    // 생년월일 선택 목록 셋팅
  $(document).ready(function () {
    setDateBox();
  });
    
  // select box 연도 , 월 표시
  function setDateBox() {
    var dt = new Date();
    var year = "";
    var com_year = dt.getFullYear();

    // 발행 뿌려주기
    $("#birthYear").append("<option value=''>년도</option>");

    // 올해 기준으로 -50년부터 +1년을 보여준다.
    for (var y = (com_year - 60); y <= (com_year); y++) {
      $("#birthYear").append("<option value='" + y + "'>" + y + " 년" + "</option>");
    }

    // 월 뿌려주기(1월부터 12월)
    var month;
    $("#birthMonth").append("<option value=''>월</option>");
    for (var i = 1; i <= 12; i++) {
        if(i<10){
            $("#birthMonth").append("<option value='0" + i + "'>0" + i + " 월" + "</option>");
        }else{
            $("#birthMonth").append("<option value='" + i + "'>" + i + " 월" + "</option>");
        }
    }

    // 일 뿌려주기(1일부터 31일)
    var day;
    $("#birthDay").append("<option value=''>일</option>");
    for (var i = 1; i <= 31; i++) {
        if(i<10){
            $("#birthDay").append("<option value='0" + i + "'>0" + i + " 일" + "</option>");
        }else{
            $("#birthDay").append("<option value='" + i + "'>" + i + " 일" + "</option>");
        }
    }

  }

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
						인사관리 통합사원 <span id="subtitle"> 인사 정보</span>
						<!----------------------------------->
					</div>
					<div id="TitleContents">
						<!--여기서 각자 id 만드시면 됩니다-->
						
						
						<div id="contWrapper">
                    <form action="#" method="get">
                        <div class="floatDiv">
                            <div>
                                사번 : 210126001<br><br>
                            </div>
                            <div id="memProfile"><img border="1px" src="img/selectarrow.png"/><br></div>
                            <div id="position_dept">
                                <div class="posi_deptDiv">
                                    직위<br>
                                    <select name="memPosition" class="posi_deptSelect">
                                        <option value=""></option>
                                        <option value="사원">사 &nbsp;&nbsp;&nbsp;원</option>
                                        <option value="대리">대 &nbsp;&nbsp;&nbsp;리</option>
                                        <option value="과장">과 &nbsp;&nbsp;&nbsp;장</option>
                                        <option value="차장">차 &nbsp;&nbsp;&nbsp;장</option>
                                        <option value="부장">부 &nbsp;&nbsp;&nbsp;장</option>
                                        <option value="임원">임 &nbsp;&nbsp;&nbsp;원</option>
                                        <option value="이사">이 &nbsp;&nbsp;&nbsp;사</option>
                                        <option value="대표">대 &nbsp;&nbsp;&nbsp;표</option>
                                    </select>
                                </div>
                                <div class="posi_deptDiv">
                                    부서<br>
                                    <select name="deptCode" class="posi_deptSelect">
                                        <option value=""></option>
                                        <option value="D1">인 &nbsp;&nbsp;&nbsp;사</option>
                                        <option value="D2">총 &nbsp;&nbsp;&nbsp;무</option>
                                        <option value="D3">전 &nbsp;&nbsp;&nbsp;산</option>
                                        <option value="D4">개 &nbsp;&nbsp;&nbsp;발</option>
                                        <option value="D5">디자인</option>
                                    </select>
                                    <!--<div class="select__arrow"></div>-->
                                </div>
                            </div>
                        </div>
                        <div id="rightCont" class="floatDiv">
                           <div>
                                이름<br>
                                <input type="text" name="memName" class="inputStyle" value="주다빈"/>
                           </div>
                           <div class="infoRespective">
                               <div id="birthDiv">
                                    생년월일<br>
                                    <select name="memBirth1" id="birthYear" class="memBirthSelect">
                                    </select>
                                    <select name="memBirth2" id="birthMonth" class="memBirthSelect">
                                    </select>
                                    <select name="memBirth3" id="birthDay" class="memBirthSelect">
                                    </select>
                                </div>
                                <div id="genderDiv">
                                    성별<br>
                                    <input type="radio" name="memGender" class="genderInput" value="남"/> 남 <input type="radio" name="memGender" class="genderInput" value="여" checked/> 여
                                </div>
                           </div>
                           <hr color="white">
                           <div class="infoRespective">
                               현주소<br>
                               <input type="text" name="memAddr1" id="addrInput"/> <button type="button">검색</button><br>
                               <input type="text" name="memAddr2" class="inputStyle"/>
                           </div>
                           <div class="infoRespective">
                               연락처<br>
                               <select name="phone1" id="phoneSelect">
                                   <option value=""></option>
                                   <option value="010">010</option>
                               </select> <input type="text" name="phone2" size="4" class="phoneInput"/> <input type="text" name="phone3" size="4" class="phoneInput"/>
                           </div>
                        </div>
                        
                        
                        
                        <div>
                            <div class="infoRespective">
                                학력<br>
                                <hr class="innerHr">
                                <div id="acaInfor" class="float">기간 <input type="date" name="acaEnrollDate" class="dateInput"  placeholder="19991231"/> ~ <input type="date" name="acaGradDate" class="dateInput"/> &nbsp;학교명 <input type="text" name="acaSchoolName" id="schoolNameInput"/> &nbsp;전공 <input type="text" name="acaMajorName" id="majorNameInput"/> &nbsp;졸업여부 
                                <select name="acaGrad" id="gradSelect">
                                    <option value=""></option>
                                    <option value="졸업">졸 업</option>
                                    <option value="졸업예정">졸업예정</option>
                                    <option value="휴학">휴 학</option>
                                    <option value="중퇴">중 퇴</option>
                                </select></div> <div class="float"><div class="plusBtn float" onclick="plusBtn('acaInfor')">+</div></div>
                            </div>
                            <hr class="outHr">
                            <div id="licenseDiv" class="infoRespective">
                                자격증 및 면허<br>
                                <hr class="innerHr">
                                <div id="licInfor" class="float">취득일자 <input type="date" name="licDate" class="dateInput" placeholder="19991231"/> &nbsp;자격증명 <input type="text" name="licName" id="licNameInput"/> &nbsp;시행처 <input type="text" name="licOrigin" id="licOriginInput"/></div> <div class="float"><div class="plusBtn float" onclick="plusBtn('licInfor')">+</div></div>
                            </div>
                            <hr class="outHr">
                            <div id="careerDiv" class="infoRespective">
                                경력<br>
                                <hr class="innerHr">
                                <div id="carInfor" class="float">기간 <input type="date" name="carJoinDate" class="dateInput"/> ~ <input type="date" name="carResignDate" class="dateInput"/> &nbsp;근무처 <input type="text" name="carPlace" id="carPlaceInput"/> &nbsp;직위 <input type="text" name="carPosition" id="carPositionInput"/> &nbsp;업무내용 <input type="text" name="carContent" id="carContentInput"/></div> <div class="float"><div class="plusBtn float" onclick="plusBtn('carInfor')">+</div></div>
                            </div>
                            <hr class="outHr"><br>
                            <div id="militaryDiv" class="infoRespective">
                                병역<br>
                                <hr class="innerHr">
                                <div id="milInfor" class="float">복무여부 <select name="milServiceType" id="milTypeSelect">
                                    <option value=""></option>
                                    <option value="군필">군필</option>
                                    <option value="미필">미필</option>
                                    <option value="면제">면제</option>
                                </select> &nbsp;복무기간 <input type="date" name="milJoinDate" class="dateInput"/> ~ <input type="date" name="milLeaveDate" class="dateInput"/> &nbsp;사유 <input type="text" name="milReason" id="milReasonInput"/></div> <div class="float"></div>
                            </div>
                        </div>
                        
                        <div id="saveDiv"><button>수정</button> <a href=""><button type="button" id="deleteBtn">취소</button></a></div>
                        
                    </form>    
                    </div>
                        <script>
                            // + - 버튼 이름
                            var num =1;
                            // + div
                            function plusBtn(id){
                                var minusNum = 'minus'+num;
                                var infor = $('#'+id).html();
                                var addTag = $('#'+id).parent();
                                var plus = $('#'+id).next().html();
                                var minus = '<div id="'+minusNum+'" class="minusBtn float" onclick="minusBtn(\''+minusNum+'\')">-</div>';

                                var result = '<div id="'+id+'" class="float">'+infor+'</div> <div class="float">'+plus+minus+'</div>';
                                addTag.append(result);
                                num++;
                            }
                            // - div
                            function minusBtn(id){
                                $('#'+id).parent().prev().remove();
                                $('#'+id).parent().remove();
                            }
                            $(function(){
                                // 직위 & 부서 출력
                                $('.posi_deptSelect option').each(function(){
                                    if($(this).val()=='사원'){
                                        $(this).attr('selected',true);
                                    }
                                    if($(this).val()=='D1'){
                                        $(this).attr('selected',true);
                                    }
                                })
                                // 생년월일 출력
                                $('#birthYear option').each(function(){
                                  if($(this).val()=='1990'){
                                      $(this).attr('selected',true);
                                  }
                                });
                                $('#birthMonth option').each(function(){
                                    if($(this).val()=='01'){
                                        $(this).attr('selected',true);
                                    }
                                });
                                $('#birthDay option').each(function(){
                                    if($(this).val()=='01'){
                                        $(this).attr('selected',true);
                                    }
                                });
                                // 연락처 출력
                                $('#phoneSelect option').each(function(){
                                    if($(this).val()=='010'){
                                       $(this).attr('selected',true);
                                   } 
                                });
                                // 병역 복무여부 출력
                                $('#milInfor option').each(function(){
                                   if($(this).val()=='면제'){
                                       $(this).attr('selected',true);
                                   } 
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