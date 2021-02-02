<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
                            <label for="docuType">양식 선택 :</label>
                            <select name="docuType" id="docu-type" onchange="movePage(this.value);">
                                <option value="url1">연차신청서</option>
                                <option value="url2">연장근무신청서</option>
                                <option value="url3">지각불참사유서</option>
                                <option value="url4" selected>법인카드사용신청서</option>
                            </select>
                        </div>
                        <form action="" method="post">
                            <span class="opt-check"><input type="checkbox" name="lockYN"><label for="lockYN">비공개</label></span>
                            <span class="opt-check"><input type="checkbox" name="urgencyYN"><label for="urgencyYN">긴급문서</label></span>
                            <input type="submit" value="작성 완료">
                            <input type="reset" value="작성취소">
                            <div id="title-wrap">
                                <div>문서 제목</div><div><input type="text" name="title"></div>
                            </div>
                            <fieldset id="form-wrap">
                                <div id="form-title">법인카드사용신청서</div>
                                <table id="docu-info">
                                    <tr>
                                        <td>기안자</td>
                                        <td>김말똥</td>
                                    </tr>
                                    <tr>
                                        <td>기안부서</td>
                                        <td>개발팀</td>
                                    </tr>
                                    <tr>
                                        <td>기안일</td>
                                        <td>2021-01-24</td>
                                    </tr>
                                    <tr>
                                        <td>문서번호</td>
                                        <td></td>
                                    </tr>
                                </table>
                                <table id="apr-line-info">
                                    <tr><td colspan="3">결재선</td></tr>
                                    <tr>
                                        <td>김민수 팀장
                                        </td>
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
                                        <td>신청부서</td>
                                        <td>
                                            <select name="dept_code" id="dept_code" required>
                                               <option value="D1">인사</option>
                                                <option value="D2">총무</option>
                                                <option value="D3">전산</option>
                                                <option value="D4">개발</option>
                                                <option value="D5">디자인</option>
                                            </select>
                                        </td>
                                        <td>*카드종류</td>
                                        <td>
                                            <select name="card_type" id="card_type" required>
                                                <option value="1">법인카드1</option>
                                                <option value="2">법인카드2</option>
                                            </select>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>신청자</td>
                                        <td>
                                            <input type="text" name="applier" required>
                                        </td>
                                        <td>반납예정일</td>
                                        <td>
                                            <input type="date" required>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>신청일</td>
                                        <td>
                                        <input type="date" name="apply_date" required>
                                        </td>
                                        <td>사용처</td>
                                        <td>
                                            <input type="text" name="used_place" required>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>사용금액</td>
                                        <td colspan="3">
                                            <input type="text" required>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>신청목적</td>
                                        <td colspan="3">
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
                                <div class="line-list">
                                    <span class="line-left"><input type="checkbox" name="apr-line" value="김미미"></span>
                                    <span class="line-mid"><input type="checkbox" name="apr-ref" ></span>
                                    <span class="line-right">개발팀 김민수 부장</span>
                                </div>
                                <div class="line-list">
                                    <span class="line-left"><input type="checkbox" name="apr-line" value="김말똥"></span>
                                    <span class="line-mid"><input type="checkbox" name="apr-ref" ></span>
                                    <span class="line-right">개발팀 김민수 부장</span>
                                </div>
                                <div class="line-list">
                                    <span class="line-left"><input type="checkbox" name="apr-line" value="김민수"></span>
                                    <span class="line-mid"><input type="checkbox" name="apr-ref" ></span>
                                    <span class="line-right">개발팀 김민수 부장</span>
                                </div>
                                <div class="line-list">
                                    <span class="line-left"><input type="checkbox" name="apr-line" value="김지원"></span>
                                    <span class="line-mid"><input type="checkbox" name="apr-ref" value="MEMBER_NUM"></span>
                                    <span class="line-right">개발팀 김민수 부장</span>
                                </div>
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
        $(function(){
            //결재선 선택 처리
            $('input[name=apr-line]').click(function(){
                var $this = $(this);
                
                var aprLength = $('input[name=apr-line]:checked').length;
                var cidx = $('input[name=apr-line]:checked').index($this);
                var nidx= $('input[name=apr-line]').index($this);
                
                if($this.prop('checked')){
                    if(aprLength<4){
                        for(var i=0;i<aprLength;i++){
                            $('#apr-line-info tr:nth-child(2) td').eq(i).html($('input[name=apr-line]:checked').eq(i).val());
                        }
                    }else{
                        alert('결재선은 3개까지만 선택 가능합니다.');
                        return false;
                    }    
                }else{
                    for(var i=0;i<3;i++){
                        $('#apr-line-info tr:nth-child(2) td').eq(i).html('');
                    }
                    for(var i=0;i<aprLength;i++){
                            $('#apr-line-info tr:nth-child(2) td').eq(i).html($('input[name=apr-line]:checked').eq(i).val());
                        }
                }
            });
            //페이지 호출 처리
            function movePage(url){
                location.href = url;
            }
        });
    </script>
</body>
</html>