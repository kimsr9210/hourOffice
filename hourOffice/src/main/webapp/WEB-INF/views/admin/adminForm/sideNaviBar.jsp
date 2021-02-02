<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
.naviNo {
	line-height: 50px;
} /*naviNo:사이드바 프론트*/
.naviIcon {
	width: 40px;
	float: left;
	padding: 17.5px 0 0 10px;
} /*naviIcon:사이드바 아이콘*/
.naviClick {
	float: right;
	padding: 17.5px 10px 0 0;
} /*naviIcon:사이드바 화살표*/
.aStyle {
	color: white;
	cursor: pointer;
	overflow: hidden;
} /*atyle:navi 링크 걸 곳*/
.hoverColor {
	opacity: 0.8;
} /*hoverColor:흐리게 있다가*/
.hoverColor:hover {
	opacity: 1.0;
} /*hoverColor:hover:호버당하면 명확해질것*/
.click {
	background-color: rgba(255, 184, 184, 0.1);
}
.accordion {
	background-color: rgba(255, 255, 255, 0.1);
	height: 0px;
} /*adminAccordian:아코디언 배경 설정*/
.accordionList {
	padding: 10px 0;
	text-align: center;
	color: white;
} /*accordionList:아코디언 텍스트 설정*/
#deleteList {
	
} /*deleteList:navi에서 삭제조회*/
#errorList {
	
} /*errorList:navi에서 오류관리*/
</style>
</head>
<body>
	<div id="sideNavi">

		<a href="/adminMainPage.ho" class="aStyle">
			<p id="teamName" class="hoverColor">BlackBoard</p>
		</a>    

		<a href="/adminSelectPage.ho" class="aStyle">
    		<div class="naviNo hoverColor" id="adminUpdate">
        		<div class="naviIcon"><i class="fas fa-user-friends"></i></div>
        		<span class="naviText">관리자 관리</span>
        		<div class="naviClick"><i class="iArrow fas fa-angle-right"></i></div>
    		</div>
		</a>

		<div class="aStyle">
			<div class="naviNo hoverColor" id="deleteSelect">
				<div class="naviIcon"><i class="fas fa-folder-minus"></i></div>
				<span class="naviText">삭제 조회</span>
				<div class="naviClick"><i class="iArrow fas fa-angle-right"></i></div>
			</div>
			<div class="accordion" id="deleteList">
				<a href="/adminDeleteMemberPage.ho" class="aStyle"><p class="accordionList hoverColor">사원 조회</p></a>
				<a href="/adminDeleteNoticePage.ho" class="aStyle"><p class="accordionList hoverColor">게시글 조회</p></a>
				<a href="/adminDeleteApprovalPage.ho" class="aStyle"><p class="accordionList hoverColor">결재안 조회</p></a>
			</div>
		</div>

		<a href="/adminDeleteDataPage.ho" class="aStyle">
			<div class="naviNo hoverColor" id="dataList">
				<div class="naviIcon"><i class="fas fa-folder-open"></i></div>
				<span class="naviText">데이터 / 문서 관리</span>
				<div class="naviClick"><i class="iArrow fas fa-angle-right"></i></div>
			</div>
		</a>

		<div class="aStyle">
			<div class="naviNo hoverColor" id="error">
				<div class="naviIcon"><i class="fas fa-question"></i></div>
				<span class="naviText">오류 관리</span>
				<div class="naviClick"><i class="iArrow fas fa-angle-right"></i></div>
			</div>
			<div class="accordion" id="errorList">
				<a href="/adminPasswordInitPage.ho" class="aStyle"><p class="accordionList hoverColor">비밀번호 초기화</p></a>
				<a href="#" class="aStyle"><p class="accordionList hoverColor">문의 사항</p></a>
			</div>
		</div>
	</div>
    <script>
        $(function(){
            $('.aStyle').click(function(){
                $naviName = $(this).children().children().eq(1).text();
                $naviArrow = $(this).children().children().eq(2).children();
                $naviState = $(this).children().next();
                console.log($(this).children().next());
                if($naviState.css('height')=='0px'){
                    $naviState.css('display','block');
                    $naviArrow.attr('class','iArrow fas fa-angle-left');
                    if($naviName=='삭제 조회'){
                        $naviState.animate({height:'110px'},300);
                    }else if($naviName=='오류 관리'){
                        $naviState.animate({height:'72px'},300);
                    }
                    
                } else{
                    $naviState.animate({height:'0px'},300);
                    $naviArrow.attr('class','iArrow fas fa-angle-right');
                }
                
            })
        });
    </script>
</body>
</html>